#ifdef VS1063
#include <vs1063.h>
#else
#include <vs1053.h>
#endif
#include "dacvolume.h"

void SetDacVolume(register s_int16 volume) {
	int attFine, attCoarse, t;
	if (volume > 0) {
		volume = 0;
	} else if (volume < -90) {
		volume = -90;
	}
	t = volume + 96;
	attCoarse = 16-t/6;
	attFine = (t%6)*2;
	USEX(DAC_VOL) = 257*(attCoarse + (attFine<<4));
}