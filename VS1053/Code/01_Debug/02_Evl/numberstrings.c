#include <string.h>
#include "numberstrings.h"

/* non-re-entrant! - only call from main thread */
char *IntToStr(register s_int32 i, register u_int16 decimalPointPosition) {
	static char temps[14];
	char *p = &temps[13];	
	u_int16 negative = 0;
	if (i<0) {
		negative=1;
		i = -i;
	}
	*p = '\0'; //zero termination
	do {
		*--p = (char)('0'+(i % 10)); //digits
		i /= 10L;	
		if (!--decimalPointPosition) {
			*--p = '.'; //decimal point
		}
	} while (i);
	if (negative) {
		*--p='-'; //sign if negative
	}
	{
		char *c = &temps[0];
		while (c<p) {
			*c++ = ' ';
		}
	}
	return p; //return pointer to beginning of non-space;
}
