#ifndef __DELAY_H__
#define __DELAY_H__

#ifdef VS1063
#include <vs1063.h>
#else
#include <vs1053.h>
#endif

#define MY_SAMPLERATE 24000

#define BLOCKSIZE 64 //Number of stereo samples processed in one loop round
#define RAMP_INCR (32768U/BLOCKSIZE*2) //ramp down in first half of block - ramp up in second half
#define DELAY_BUF_SZ ((8100/(2*BLOCKSIZE))*(2*BLOCKSIZE)) //must be multiple of 2*BLOCKSIZE
#define PUSH_BUTTON_DELAY_MS 500
#define PUSH_BUTTON_DELAY (PUSH_BUTTON_DELAY_MS*(MY_SAMPLERATE/1000)/BLOCKSIZE)

//Audio delays in milliseconds
//Max delay for stereo in ms is 1000 * (DELAY_BUF_SZ - BLOCKSIZE * 2) / MY_SAMPLERATE / 2
//For mono signal delay can be doubled
#define DELAY_1_IN_MS 40
#define DELAY_2_IN_MS 80
#define DELAY_3_IN_MS 120
#define DELAY_4_IN_MS 160

#define DELAY_1 (DELAY_1_IN_MS*(MY_SAMPLERATE/1000))
#define DELAY_2 (DELAY_2_IN_MS*(MY_SAMPLERATE/1000))
#define DELAY_3 (DELAY_3_IN_MS*(MY_SAMPLERATE/1000))
#define DELAY_4 (DELAY_4_IN_MS*(MY_SAMPLERATE/1000))

#define LED_STATE_COUNT 5 //0000, 1000, 1100, 1110, 1111

#endif
