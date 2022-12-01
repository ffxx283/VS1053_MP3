#include <vstypes.h>
#include <stdlib.h>
#include "vlsilogo.h"
#include "audioint.h"
#include "lcd.h"
#include "smallnumbers.h"
#include "soundpressure.h"


const u_int16 linToDBTab[5] = {36781, 41285, 46341, 52016, 58386};
/*
Converts a linear 16-bit amplitude to decibels.
Reference level: 32768 = 96dB (largest VS1053b number is 32767 = 95dB).
- For the input of 0, 0 dB is returned, because minus infinity cannot
be represented with integers.
- Assumes a ratio of 2 is 6 dB, when it actually is approx. 6.02 dB.
*/
u_int16 AmpToDB(s_int16 sample) {
	int res = 96, i;	
	u_int16 n = abs(sample);
	if(n) n--;
	if (!n) /* No signal should return minus infinity */
	return 0;
	while (n < 32768U) { /* Amplify weak signals */
		res -= 6;
		n <<= 1;
	}
	for (i=0; i<5; i++) /* Find exact scale */
	if (n >= linToDBTab[i]) {
		res++;
	}
	return res;
}
		
void DrawSoundPressureBars(register s_int16 *samplePair, register u_int16 *levelmem) {
	u_int16 i;
	for (i=0; i<2; i++) {
		u_int16 level = AmpToDB(samplePair[i]);
		if (levelmem[0]) levelmem[0]--;
		if (level > levelmem[0]) levelmem[0] = level;
		level = levelmem[0];
		levelmem++;
		{
			u_int16 pos = level+30;
			if (pos>114) {
				LcdFilledRectangle(30,18,114,23,0,COLOR_LIME);
				LcdFilledRectangle(115,18,pos++,23,0,COLOR_RED);
			} else {
				LcdFilledRectangle(30,18,pos++,23,0,COLOR_LIME);			
			}
			LcdFilledRectangle(pos,18,131,23,0,COLOR_BLACK);
		}	
		lcd0.originY += 10;
	}
	//lcd0.originY -= 10; //uncomment this if you need lcd0.originY to be preserved.
}


void DrawSoundPressureArea() {
	u_int16 i;
	LcdFilledRectangle(0,0,159,0,0,COLOR_SHADOW);
	LcdFilledRectangle(0,1,159,1,0,__RGB565RGB(220,220,220));
	LcdFilledRectangle(25,13,131,36,0,COLOR_SHADOW);
	LcdFilledRectangle(26,14,131,36,0,COLOR_BLACK);
	for (i=0; i<9; i++) {
		lcd0.x = 126-i*12;
		LcdFilledRectangle(lcd0.x,11,lcd0.x,38,0,COLOR_SHADOW);
		lcd0.y = 5;
		lcd0.x--;
		if (i) lcd0.x -= 2;		
		PutSmallInteger(i*12);		
	}
	LcdFilledRectangle(26,17,131,23,0,COLOR_BLACK);
	LcdFilledRectangle(26,27,131,33,0,COLOR_BLACK);
	lcd0.x = 23;
	PutSmallGlyph(0x180); //-
	lcd0.x = 130;
	PutSmallGlyph(0x6ba4); //d
	PutSmallGlyph(0x3aeb); //B
	lcd0.x = 20;
	lcd0.y = 18;
	PutSmallGlyph(0x7249); //L
	lcd0.x = 20;
	lcd0.y = 28;	
	PutSmallGlyph(0x5aeb); //R
	lcd0.x = 137;
	LcdFilledRectangle(136,31,156,38,vlsilogo,0);
	
}
