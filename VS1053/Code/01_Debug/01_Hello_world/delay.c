/* For free support for VSIDE, please visit www.vsdsp-forum.com */

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Audio delay example for VS1063/VS1053
//
// User can select between 4 different delay values (+ 1 bypass mode)
// by pressing a button on the protoboard while the program is running.
// Blinking led will indicate the length of the delay line.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

//#define USE_SIMPLE_DSP_BOARD
#define USE_PROTOTYPING_BOARD
// (define *one* of the PCB types before including board.h)
#include "board.h"

#define USE_MIC 1 // define 0 for line-in

#include <string.h>
#include "delay.h"

void InitAudioExample(u_int16 srInput,int useMicIn,u_int16 coreClock); // (see "init.c")

// buffer for the delay line (in Y memory):
static s_int16 __y delayBuffer[DELAY_BUF_SZ];

main(void) {
	s_int16 auxBuffer[BLOCKSIZE*2];
	s_int16 __y *inPtr = delayBuffer;
	s_int16 __y *outPtr = delayBuffer;
	u_int16 currentDelay = DELAY_4; // start with longest delay
	u_int16 transition = 1; // apply delay value during first loop iteration
	u_int16 buttonState = 0; // 0 = button is up, 1 = button is down
	u_int16 buttonReadDelay = 0; // avoid polling the button too frequently
	u_int16 ledState = 0; // 1 = lit, 0 = unlit
	u_int16 ledBlinkDelay = 0; // led blinking counter
	//
	// disable interrupts temporarily
	Disable();
	// basic initialization:
	InitAudioExample(MY_SAMPLERATE/*input samplerate*/,USE_MIC,CORE_CLOCK_3X);
	// set interrupt mask
	USEX(INT_ENABLE) |= (1<<INT_EN_MODU)/*AD*/ | (1<<INT_EN_DAC) | (1<<INT_EN_RX);
	// set max volume
	USEX(SCI_VOL) = 0x0101;
	// initialize audio_buffer read and write pointers
#ifdef VS1063
	audioPtr.rd = audio_buffer;
	audioPtr.wr = audio_buffer + 2*BLOCKSIZE;
#else
	audio_rd_pointer = audio_buffer;
	audio_wr_pointer = audio_buffer + 2*BLOCKSIZE;
#endif
	//
	SetHardware(2/*stereo output*/,MY_SAMPLERATE);
	// clear audio buffer (avoid unwanted noise in the beginning)
	memsetY(audio_buffer, 0, AUDIO_BUFFER_SZ);
	// initialize delay line with silence
	memsetY(delayBuffer, 0, DELAY_BUF_SZ);	
	// set up GPIO
	CONFIGURE_LED_1;
	CONFIGURE_BUTTON_1;
	// enable interrupts
	Enable();	
//
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Main loop
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//
	while (1) {
		//
		// wait until there is enough audio data to process
		//
		if (StreamDiff() > 2*BLOCKSIZE) {
			// read input samples (stereo, hence 2x block size)
			StreamBufferReadData(inPtr, 2*BLOCKSIZE);
			// advance input buffer pointer (and wrap since its ring buffer)
			inPtr += 2*BLOCKSIZE;
			if (inPtr >= delayBuffer + DELAY_BUF_SZ) {
				inPtr -= DELAY_BUF_SZ; // ring buffer wrap
			}
			if(transition) {
				//
				// button was pressed: apply new delay value
				//
				s_int16 *out = auxBuffer;
				u_int16 i;
				s_int16 weight = 32767;
				// quick fade out (prevent possible 'snap' in the sound)
				for (i=0;i<BLOCKSIZE;i++) {
					weight -= RAMP_INCR/2; // decrease weight for fade out effect
					// output sample value is scaled by 'weight'
					*out++ = (s_int16)(((s_int32)weight * *outPtr++) >> 15);
					if(outPtr >= delayBuffer + DELAY_BUF_SZ) {
						outPtr -= DELAY_BUF_SZ; // ring buffer wrap
					}
				}
				// set the new delay value
				outPtr = inPtr - currentDelay - BLOCKSIZE;
				if (outPtr < delayBuffer) {
					outPtr += DELAY_BUF_SZ; // ring buffer wrap
				}
				// quick fade in:
				weight = 0;
				for (i=0;i<BLOCKSIZE;i++) {
					weight += RAMP_INCR; // increase weight for fade in effect
					// output sample value is scaled by 'weight'
					*out++ = (s_int16)(((s_int32)weight * *outPtr++) >> 15);
					if(outPtr >= delayBuffer + DELAY_BUF_SZ) {
						outPtr -= DELAY_BUF_SZ; // ring buffer wrap
					}
				}
				transition = 0;
			} else { // if (transition)
				//
				// normal operation: copy samples from delay buffer to output buffer
				// (note: a separate "auxiliary" buffer is required as we cannot pass
				// delayBuffer directly to AudioOutputSamples() -- it needs a pointer
				// to X memory)
				//
				s_int16 *out = auxBuffer;
				u_int16 i;
				for (i=0;i<BLOCKSIZE*2;i++) {
					*out++ = *outPtr++;
					if(outPtr >= delayBuffer + DELAY_BUF_SZ) {
						outPtr -= DELAY_BUF_SZ; // ring buffer wrap
					}
				}
				//
				// poll button press
				//
				if( (++buttonReadDelay) > MY_SAMPLERATE/(2*BLOCKSIZE*16) ) {
					// current state of the button
					u_int16 currentState = BUTTON_1_PRESSED;
					buttonReadDelay = 0;
					if(currentState!=buttonState && currentState) {
						// button was just pressed. Set new target delay value
						// (actual change will take place when transition condition
						// triggers in above code)
						switch( currentDelay ) {
						case 0: currentDelay = DELAY_1; break;
						case DELAY_1: currentDelay = DELAY_2; break;
						case DELAY_2: currentDelay = DELAY_3; break;
						case DELAY_3: currentDelay = DELAY_4; break;
						case DELAY_4: currentDelay = 0; break;
						}
						transition = 1;
					}
					buttonState = currentState;
					// update blinking led
					ledBlinkDelay += MY_SAMPLERATE/BLOCKSIZE;
					if( ledBlinkDelay > currentDelay) {
						ledBlinkDelay = 0;
						ledState ^= 1;
					}
				}
				if(ledState) {
					SET_LED_1_ON;
				} else {
					SET_LED_1_OFF;
				}
			}
			//
			// output sample pairs
			//
			AudioOutputSamples(auxBuffer,BLOCKSIZE);
		}
	} // while (1)
	return 0;
}
