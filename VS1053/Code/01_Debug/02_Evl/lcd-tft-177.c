/// \file lcd-tft-177.c Driver for Shenzhen Feigeda FGD177P1402 1.77" TFT LCD display, using ST7735B controller.
/** 
	- Uses fixed SPI port functions (no driver) to access the TFT LCD display
	
	LCD NOTES
	- By default, TFT displays in VS1005 systems are kept in 16 bits per pixel, RGB565 color mode.
*/
#ifdef VS1063
#include <vs1063.h>
#else
#include <vs1053.h>
#endif
#include <string.h>
#include <gpio.h>
#include "lcd7735.h"
#include "rgb565.h"
#include "devboard.h"
#include "spi.h"
#include "latin1font.h"
#include "lcd.h"

/// Information for the main LCD screen.
lcdInfo lcd0 = {160,128,0,0,COLOR_WHITE,COLOR_GRAY,0,0};

void LcdStartCommand(u_int16 opcode) {
	LCD_END_FRAME();
	LCD_SET_COMMAND_MODE();		
	LCD_START_FRAME();
	SpiSend(opcode<<8,8);
	LCD_SET_DATA_MODE();
}

void LcdDelay(u_int32 n) {
	while(n--) {
		n=~n;
		n=~n;
	}
}

void LcdFilledRectangle(u_int16 x1,u_int16 y1,u_int16 x2,u_int16 y2,u_int16 *texture,u_int16 color) {
	u_int16 n=((x2-x1)+1);
	x1+=lcd0.originX+1;
	y1+=lcd0.originY+2;
	x2+=lcd0.originX+1;
	y2+=lcd0.originY+2;
	LcdStartCommand(LCD_CASET);
	SpiSend(x1,16);
	SpiSend(x2,16);
	LcdStartCommand(LCD_RASET);
	SpiSend(y1,16);
	SpiSend(y2,16);
	n*=((y2-y1)+1);
	LcdStartCommand(LCD_RAMWR);
	if(texture) {
		while(n--) {
			SpiSend(*texture++,16);
		}
	} else {
		while(n--) {
			SpiSend(color,16);
		}
		n*=2;
	}
	LCD_END_FRAME();
}

u_int16 LcdTextOutXY(u_int16 x1,u_int16 y1,char *s) {
	static u_int16 buff[7*8];
	while(*s) { // foreach character *s do:
		__y u_int16 *p=&latin1[(*s)*3]; // get a pointer to ROM font table
		u_int16 x,y;
		memset(buff,lcd0.backgroundColor,sizeof(buff)); //fill the texture with bk color		
		for (x=0; x<3; x++) { //light some texture pixels with text color based on font
			u_int16 *b = &buff[x*2];
			for (y=0; y<8; y++) {
				if (*p & (1 << (y+8))) b[0] = lcd0.textColor;
				if (*p & (1 << (y)))   b[1] = lcd0.textColor;
				b += 7;				
			}
			p++;
		}
		LcdFilledRectangle(x1,y1,x1+6,y1+7,buff,0); //Draw a textured rectangle
		x1 += 7;
		if (x1>160-7) {
			x1=0;
			y1+=8;
		}
		s++;		
	}
	return x1;
}


void LcdPutString(char *s) {
	lcd0.x = LcdTextOutXY(lcd0.x, lcd0.y, s);
}

u_int16 LcdInit(u_int16 display_mode) {
	u_int16 i;

	USEX(FREQCTLH) |= (1 << 11); //VCO on -> Backlight on

	LcdStartCommand(LCD_SWRESET);
	LcdStartCommand(LCD_SWRESET);
	LcdDelay(100000);
	LcdStartCommand(LCD_SLPOUT);
	LcdDelay(100000);
	LcdStartCommand(LCD_DISPON);
	LcdDelay(100000);
	LcdStartCommand(LCD_COLMOD);
	SpiSend(LCD_PIXEL_FORMAT_16BPP<<8,8);

	LcdStartCommand(LCD_MADCTL);
//	SpiSend(0xA8<<8,8); // rotate 180
	SpiSend(0x68<<8,8); // rotate 180
//	SpiSend(0x60<<8,8); // rotate 180 BGR
	LcdStartCommand(LCD_GASET);
	SpiSend(8<<8,8);
	LCD_END_FRAME();

	LcdFilledRectangle(0,0,159,127,0,lcd0.backgroundColor);
	//LcdTextOutXY(10,10,"Hello");
}
