#include "buttons.h"

/// This function handles the two way multiplexed button matrix of the developer board.
u_int16 GetKeyState() {
	u_int16 g;
	USEX(SER_DREQ) = 0;
	USEX(GPIO_ODATA) &= ~((1<<3)|(1<<5));
	g = (USEX(GPIO_IDATA) & ((1<<10)|(1<<8)|(1<<11))) >> 8; 	
	USEX(SER_DREQ) = 1;	
	g |= (USEX(GPIO_IDATA) & ((1<<10)|(1<<8)|(1<<11))) >> 4;
	USEX(SER_DREQ) = 0;
	USEX(GPIO_ODATA) |= ((1<<3)|(1<<5));	
	g |= (USEX(GPIO_IDATA) & ((1<<10)|(1<<8)|(1<<11))) >> 0;
	{
		static u_int16 lastKeypress = 0;
		u_int16 result = g;
		if (g != lastKeypress) result = 0; //Glitch removal
		lastKeypress = g;
		return result;
	}
}

u_int16 GetKeyPress() {
	u_int16 g = GetKeyState();
	u_int16 result = g;
	static u_int16 lastKeypress = 0;
	if (lastKeypress) result = 0;
	lastKeypress = g;
	return result;
}
