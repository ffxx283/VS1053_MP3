#ifndef BUTTONS_H
#define BUTTONS_H

#include <vstypes.h>
#ifdef VS1063
#include <vs1063.h>
#else
#include <vs1053.h>
#endif

#define SW9 1092
#define SW3 1
#define SW4 16
#define SW5 273
#define SW7 128
#define SW8 2184
#define SW2 64
#define SW6 8

#define SW_HOME SW9
#define SW_UP SW3
#define SW_REC SW4
#define SW_LEFT SW5
#define SW_RIGHT SW7
#define SW_STOP SW8
#define SW_DOWN SW2
#define SW_PLAY SW6

u_int16 GetKeyPress();
u_int16 GetKeyState();

#endif