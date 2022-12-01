#include <vstypes.h>
#include "smallnumbers.h"

const u_int16 smallglyphs[] = {	
	0x2b6a, //0
	0x2492, //1
	0x72a3, //2
	0x38a3, //3
	0x49ed, //4
	0x78cf, //5
	0x3bce, //6
	0x49a7, //7
	0x2aaa, //8
	0x39ea, //9
	0x2000, //.
	0x6ba4, //d
	0x3ac9, //b		
};



void PutSmallGlyph(register u_int16 glyph){
	static u_int16 buff[3*5];
	u_int16 x;
	for (x=0; x<15; x++) {
		buff[x] = (glyph&1)? lcd0.textColor : lcd0.backgroundColor;
		glyph >>= 1;		
	}
	LcdFilledRectangle(lcd0.x,lcd0.y,lcd0.x+2,lcd0.y+4,buff,0);	
	lcd0.x+=4;
}


void PutSmallInteger(register s_int16 n) {
	char buf[8];
	char *p = &buf[0];
	if (n<0) {
		n = -n;
		PutSmallGlyph(0x180);
	}
	do {
		*p++ = n%10;
		n /= 10;
	} while (n);
	while (p>buf) {
		PutSmallGlyph(smallglyphs[*--p]);		
	}	
}
	
