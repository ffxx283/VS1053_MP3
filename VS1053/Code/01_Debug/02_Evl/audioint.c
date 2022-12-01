#ifdef VS1063
#include <vs1063.h>
#else
#include <vs1053.h>
#endif
#include <asmfuncs.h>
#include "audioint.h"
#include "lcd.h" //We just use LcdDelay from <lcd>...
#include "devboard.h"
#include "dac.h"

volatile const s_int16 stereoSampleOut[2] = {0,0};
volatile const s_int16 stereoSampleIn[2] = {0,0};
#define leftSampleOut stereoSampleOut[0]
#define rightSampleOut stereoSampleOut[1]
volatile u_int16 sampleCounter16;
volatile s_int16 boostShift = 0;

// If you want to use the SDM port instead of the DAC port for audio out,
// you can uncomment the following line:
//#define USE_SDM
// Normally you should use the DAC port for audio out (better quality, filtering, volume control).
// But if you want to use the DAC for decoding MP3 or OGG files or you want to
// handle ultrasound, then you can use the SDM port for your audio filter path.



// LCC: Add new interrupt handler to vector 0x23 (A/D Converter)
// Note that you must not add a handler to an interrupt which is already running,
// so if you add an interrupt to UART, you should not load the program using UART.
// For linking in the vector, add the following line to the memory description file:
// modu_int: origin = 0x23, length = 1

#pragma msg 99 off

#pragma interrupt x 0x23
void ADCInterruptHandler(void) {
	static s_int32 leftDcOffset = 0, rightDcOffset = 0;
	// Read the ADC registers
	s_int16 leftSample = USEX(DECIM_DATA_LEFT);
	s_int16 rightSample = USEX(DECIM_DATA_RIGHT);	

	// First write out the sample which was calculated at previous interrupt time
	#ifdef USE_SDM // Put samples to DAC offset (useful when main DAC path is in other use)
		USEX(SDM_DATA_LEFT) = leftSampleOut;   // write output to SDM port
		USEX(SDM_DATA_RIGHT) = rightSampleOut; // write output to SDM port
	#else // Put samples to main DAC path
		WriteStereoSampleToDacBuffer(leftSampleOut, rightSampleOut);
	#endif

	// Remove DC offset from input samples
	leftSample = Sat16Sub(leftSample, (s_int16)(leftDcOffset >> 16));
	leftDcOffset += leftSample;
	rightSample = Sat16Sub(rightSample, (s_int16)(rightDcOffset >> 16));
	rightDcOffset += rightSample;

	stereoSampleIn[0] = leftSample;
	stereoSampleIn[1] = rightSample;

	// Calculate new output sample pair to be sent out at the next interrupt
	// ... insert your filter code here ...
	
#if 0
	// Direct in->out
	leftSampleOut = leftSample;
	rightSampleOut = rightSample;	
	
#else
	//boost
	leftSampleOut = Saturate24to16((s_int32)leftSample << boostShift);
	rightSampleOut = Saturate24to16((s_int32)rightSample << boostShift);

#endif

	sampleCounter16++; //increment counter for user interface timing
}

#pragma msg 99 on

#ifdef USE_SDM

// This version of InitAudioPath initializes the SDM port with the A/D converter
void InitAudioPath(void) {
	Disable();
	// Enable all components of audio path together with interrupts disabled
	// The audio parts (modu, src, sdm) will be cycle accurate locked together after this init,
	// so one interrupt handler can process up to all 3 hardwares.
	// Please avoid calling this function more than once.
	USEX(SDM_DATA_LEFT) = 0;
	USEX(SDM_DATA_RIGHT) = 0;
	USEX(DAC_LEFT) = 0;
	USEX(DAC_RIGHT) = 0;
	USEX(DECIM_CONTROL) = DECIM_ENABLE | DECIM_FACTOR48K;
	USEX(SDM_CONTROL) = SDM_ENABLE | SDM_RATE_48K;
	USEX(INT_ENABLE) = (1<<INT_EN_RX);
	Enable();
	LcdDelay(500000); // Small delay to let analog settle before switching audio interrupt on
	USEX(INT_ENABLE) = (1<<INT_EN_MODU) | (1<<INT_EN_RX);
	USEX(SCI_STATUS) |= (1 << SCIST_REFERENCE_SEL); //Select high (1.6V) reference
}

#else //not defined USE_SDM

// This version of InitAudioPath initializes the DAC and the A/D converter
void InitAudioPath(void) {
	u_int32 t = ReadFromProgramRam((u_int16)MyDacVector);
	Disable();
	// Initialize DAC with		
	USEX(DAC_LEFT) = 0;
	USEX(DAC_RIGHT) = 0;
	USEX(DECIM_CONTROL) = DECIM_ENABLE | DECIM_FACTOR48K;
	USEX(INT_ENABLE) = (1<<INT_EN_RX);
	WriteToProgramRam(0x20, (u_int16)(t >> 16), (u_int16)t); // Set our custom DAC interrupt vector
	Enable();
	LcdDelay(500000); // Small delay to let analog settle before switching audio interrupt on
	USEX(INT_ENABLE) = (1<<INT_EN_MODU) | (1<<INT_EN_RX) | (1<<INT_EN_DAC);
	SetRate(48000U);
#ifdef VS1063
	// VS1063a uses delayed sample rate setting -> sample-exact change
	// We use our own DAC int, so we have to set the rate ourselves.
	audioPtr.curFctl = audioPtr.newFctl;
	USEX(FREQCTLL) = (u_int16)audioPtr.curFctl;
	USEX(FREQCTLH) = (USEX(FREQCTLH) & ~15) | (u_int16)(audioPtr.curFctl>>16);	
#endif
	dacRdPtr = dacBuffer;
	dacWrPtr = dacBuffer+DAC_BUFFER_DELAY;
	USEX(SCI_STATUS) |= (1 << SCIST_REFERENCE_SEL); //Select high (1.6V) reference
}

#endif //ifdef USE_SDM

