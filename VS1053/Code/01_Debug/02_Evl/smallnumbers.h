#ifndef SMALLNUMBERS_H
#define SMALLNUMBERS_H

#include <vstypes.h>
#include "lcd.h"

void PutSmallGlyph(register u_int16 glyph);
auto void PutSmallGlyphs(register u_int16 *glyphs);
void PutSmallInteger(register s_int16 n);

#endif