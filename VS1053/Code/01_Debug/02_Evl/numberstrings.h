#ifndef NUMBERSTRINGS_H
#define NUMBERSTRINGS_H

#include <vstypes.h>
#define IntToString IntToStr

char *IntToStr(register s_int32 i, register u_int16 decimalPoint);
void LcdPutString(char *s);


#endif