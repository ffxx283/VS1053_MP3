/* For free support for VSIDE, please visit www.vsdsp-forum.com */

/*	VS8051/VS1053/VS1063 Developer Board LCD + Audio In, Audio Out Template

	This is an audio in + audio out + LCD display template for the
    V S 8 0 5 3  /  V S 1 0 5 3  /  V S 1 0 6 3  D E V E L O P E R  B O A R D.
	It is useful for developing	signal processing filter software. 
	
	Insert your audio filter code into the interrupt handler in audioint.c.
	The default example "filter" in this template is a "boost by -12dB / -6dB
	/ 0dB / +6dB / +12dB filter" and you can select the boosting with the
	top-right button on the developer board.
	
	Additionally this example configures the onboard FM tuner (TEA5767) to
	89.0 MHz, and you can change the frequency by using the center-left, 
	center-right, bottom-left and bottom-right buttons.
	
	You can use the jumper array on the left side of the LCD screen to
	select which inputs to route to the left and right line inputs.
	
 	LINE IN		FM		BAT+MIC (battery monitor + microphone)	
		
	  	 .			 .			 #
		 .			 .			 #
		.##			##.			...
		.##			##.			.#.
		 .			 .			 #

	You can use the JP3 to select the FM antenna:
	- To use the headphone wire as the antenna, set jumper to the HP-ANT side
	- To use external antenna, connect antenna to the center pin and antenna
	  ground to the right pin.  (For a really simple antenna, you can even
	  connect a short length of wire to the center pin of JP13.)

	Note that there is currently no software to activate the MIC AMPLIFIER,
	if you use the microphone, please activate the microphone amplifier
	in the SCI_MODE register.
	
	The board also contains a SD card slot, USB SD reader IC and an untested
	early VS23S010A sample test IC (1 megabit, 128 kilobyte SPI RAM). There is 
	no software support for these features at the time of writing this readme.
	
	To load: 
	- Keep BOOT SELECT and POWER buttons pressed, press RESET
	- Release BOOT SELECT and POWER buttons, Power LED should be on
	- Press the "Run" button in VSIDE, specify UART parameters as necessary
	- After loading, press "Stop" button in VSIDE to avoid hang-ups..
	
	To flash to SPI flash:
	- You need to select the "SST25xxB Compatible" prommer module
	  from Project -> Prommer/Flasher Utility
	  

   User Interface:

   --------------+-----------------+----------------                    
    POWER ON     |    VOLUME +     |  BOOST SELECT
   --------------+-----------------+----------------
    FM Tune -50k |                 |  FM Tune +50k
   --------------+-----------------+----------------
    FM Tune -1M  |    VOLUME -     |  FM Tune +1M
   --------------+-----------------+----------------


*/
#ifdef VS1063
#include <vs1063.h>
#else
#include <vs1053.h>
#endif
#include "devboard.h"
#include "audioint.h"
#include "lcd.h"
#include "soundpressure.h"
#include "sdm_beep.h"
#include "smallnumbers.h"
#include "buttons.h"
#include "fmtuner.h"
#include "dacvolume.h"
#include "numberstrings.h"

u_int16 outLevels[2]={0};
u_int16 inLevels[2]={0};
u_int16 fm_freq = 8900; //89.00 MHz
s_int16 dacVolume;


void ScreenUpdate() {
	lcd0.x = 10; 
	lcd0.y = 10;
	LcdPutString("Volume: ");
	LcdPutString(IntToString(dacVolume,0));
	LcdPutString(" dB  ");

	lcd0.x = 10;
	lcd0.y = 20;
	LcdPutString("FM: ");
	LcdPutString(IntToStr(fm_freq,2));
	LcdPutString(" MHz  ");

	lcd0.x = 10;
	lcd0.y = 30;
	LcdPutString("Boost: ");
	LcdPutString(IntToString(boostShift*6,0));
	LcdPutString(" dB  ");
}

void ScreenRefresh(){
	LcdFilledRectangle(0,0,159,127,0,lcd0.backgroundColor);	
	LcdFilledRectangle(5,3,154,38,0,COLOR_SHADOW);
	LcdFilledRectangle(6,4,154,38,0,COLOR_GRAY);
	lcd0.textColor = COLOR_SHADOW;	
	lcd0.originY = 42;
	DrawSoundPressureArea();
	lcd0.x = 2; lcd0.y = 5;
	PutSmallGlyph(0x4904);//i
	PutSmallGlyph(0x5ac0);//n
	lcd0.originY = 85;
	lcd0.x = 2; lcd0.y = 5;
	PutSmallGlyph(0x7bc0);//o
	PutSmallGlyph(0x7b40);//u
	PutSmallGlyph(0x72c9);//t
	DrawSoundPressureArea();
	lcd0.textColor = __RGB565RGB(64,64,64);
	lcd0.backgroundColor = COLOR_GRAY;
	lcd0.originY = 0;
	dacVolume = 0;
	SetDacVolume(dacVolume);
	ScreenUpdate();
}

main() {
	// Initialize the developer board hardware
	USEX(SCI_CLOCKF) = CORE_CLOCK_3X;
	InitHardware(); // Basic chip initialization, resets UART speed to 9600bps
	USEX(SCI_VOL) = 0x0000;
	USEX(GPIO_DDR) = ~(1 << 2); // ALL GPIO IS OUTPUT EXCEPT 2(MISO)
	USEX(GPIO_ODATA) = ~(1 << 2); // ALL GPIO IS OUTPUT EXCEPT 2(MISO)	
	LcdDelay(1000);
	USEX(DAC_LEFT) = 0;
	USEX(DAC_RIGHT) = 0;
	USEX(SCI_STATUS) &= ~(1<<SCIST_APDOWN1); // Switch on analog power 
	LcdDelay(1000);	
	USEX(SCI_STATUS) &= ~(1<<SCIST_APDOWN2); // Switch on analog driver
	
	// Show text in VSIDE console (requires emulator UART connection)
	// puts("Hello, world."); // If you uncomment this, you CANNOT prom 
	// it to SPI flash and expect it to boot properly.

	LcdInit(0);
	ScreenRefresh();
	I2CSetFM(fm_freq);

	// Start the audio interrupt (Line In -> Line Out)
	InitAudioPath();
	// Init the SDM Beeper
	SDMBeepInit();

	while(1) {		
		// Main Loop
		if (sampleCounter16 > 200) {
			u_int16 key;

			sampleCounter16 = 0;			
			lcd0.originY = 42; DrawSoundPressureBars(stereoSampleIn,inLevels);
			lcd0.originY = 85; DrawSoundPressureBars(stereoSampleOut,outLevels);	
			lcd0.originY = 0;

			key = GetKeyPress();
			if (key) {
				beepLength = 512;				
				switch(key) {
					case SW_LEFT: {
						fm_freq -= 5;
						I2CSetFM(fm_freq);
						break;
					}
					case SW_RIGHT: {
						fm_freq += 5;
						I2CSetFM(fm_freq);
						break;
					}
					case SW_STOP: {
						fm_freq -= 100;
						I2CSetFM(fm_freq);
						break;
					}
					case SW_PLAY: {
						fm_freq += 100;
						I2CSetFM(fm_freq);
						break;
					}
					case SW_DOWN: {
						dacVolume--;
						SetDacVolume(dacVolume);
						break;
					}
					case SW_UP:	{
						if (dacVolume < 0) {
							dacVolume++;
						}
						SetDacVolume(dacVolume);
						break;
					}
					case SW_REC: {
						boostShift++;
						if (boostShift > 2) {
							boostShift = -2;
						}
					}
				}
				ScreenUpdate();
			}	
		}	
	}	
}
