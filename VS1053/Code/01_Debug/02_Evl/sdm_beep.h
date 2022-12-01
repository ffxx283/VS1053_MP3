/// \file sdm_beep.h Auxiliary beeper for the SDM port of VS1053/VS8053 (uses ROM sin table)
/// \author Panu-Kristian Poiksalo, VLSI Solution Oy 2013

#ifndef SDM_BEEP_H
#define SDM_BEEP_H

#ifndef SDM_RATE_48K
#define SDM_RATE_48K (128-1)
#endif

/// To activate the beep, first call SDMInit() in the begining of your program. 
/// When you want a beep, set the beepLength to a non-zero value.

extern u_int16 beepLength; ///< length of beep in samples, 48000 is 1 second, counts to zero.
extern u_int16 beepVolume; ///< 1 = very loud ... 15 = very soft
extern u_int16 beepTone; ///< 5 = low frequency ... 15 = medium frequency ... 100 = high frequency

void SDMBeepInit(void);

#endif
