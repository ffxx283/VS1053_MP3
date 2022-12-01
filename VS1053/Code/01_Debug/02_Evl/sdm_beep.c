/// \file sdm_beep.c Simpe VS1053 background beep implementation.
/// Requires new LCC compiler version with interrupt handler support
/// \author Panu-Kristian Poiksalo, VLSI Solution Oy 2013
#ifdef VS1063
#include <vs1063.h>
#else
#include <vs1053.h>
#endif
#include "sdm_beep.h"

// This is a really simple example of using the SDM port to mix a beep in the background.
// Because this is such a simple example, there's no filtering and no windowing 
// so there will be a "click" at the beginning and end of the beep. 

u_int16 beepLength = 0;
u_int16 beepVolume = 3;
u_int16 beepTone = 64*2; // must be divisible by 2

// LCC: Add new interrupt handler to vector 0x29 (SDM)
// Note that you must not add a handler to an interrupt which is already running,
// so if you add an interrupt to UART, you should not load the program using UART.

// For linking in the vector, add the following line to the memory description file:
// sdm_int: origin = 0x29, length = 1

#pragma interrupt x 0x29
void SDMInterruptHandler(void) {
	const __y s_int16 *sinStart = (__y s_int16*)0x6001; //ptr to ROM sin table
	const __y s_int16 *sinEnd = (__y s_int16*)0x7000;
	static __y s_int16 *sinePtr = sinStart;
	if (beepLength) {
		beepLength--;
		USEX(SDM_DATA_RIGHT) = USEX(SDM_DATA_LEFT) = *sinePtr >> beepVolume;
		if ((sinePtr+=beepTone) >= sinEnd) sinePtr -= 2*2048;
	} else {
		USEX(SDM_DATA_LEFT) = 0;
		USEX(SDM_DATA_RIGHT) = 0;
		sinePtr = sinStart;
	}
}

// Start the SDM port and enable SDM interrupt
void SDMBeepInit(void) {
	USEX(SDM_CONTROL) = SDM_ENABLE | SDM_RATE_48K;
	USEX(INT_ENABLE) |= (1<<INT_EN_SDM);
}
