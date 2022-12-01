#ifndef FM102BC_H
#define FM102BC_H

#include <vstypes.h>
#ifdef VS1063
#include <vs1063.h>
#else
#include <vs1053.h>
#endif
#include <gpio.h>


#define FM1_MUTE (1<<7)
#define FM1_SEARCH (1<<6)
#define FM3_SEARCH_UP (1<<7)	
#define FM3_SEARCHLVL_H (1<<6)
#define FM3_SEARCHLVL_L (1<<5)
#define FM3_LO_INJECT_HI (1<<4)
#define FM3_MONO (1<<3)
#define FM3_MUTE_LEFT (1<<2)
#define FM3_MUTE_RIGHT (1<<1)
#define FM3_SW_PORT_1 (1<<0)
#define FM4_SW_PORT_2 (1<<7)
#define FM4_STANDBY (1<<6)
#define FM4_BAND_JAPAN (1<<5)
#define FM4_XTAL_32K (1<<4)
#define FM4_SOFTMUTE (1<<3)
#define FM4_HCC (1<<2)
#define FM4_SNC (1<<1)
#define FM4_SEARCH_IND (1<<0)
#define FM5_PLLREF (1<<7)
#define FM5_DE_EMPH_75 (1<<6)


#define SDA (1<<4)
#define SCL (1<<6)
#define DELAY {u_int16 i; for(i=0; i<10000; i++) {}}
#define SDA_HIGH {GPIO_SET_HIGH (SDA); DELAY;}
#define SDA_LOW {GPIO_SET_LOW (SDA); DELAY;}
#define SCL_HIGH {GPIO_SET_HIGH (SCL); DELAY;}
#define SCL_LOW {GPIO_SET_LOW (SCL); DELAY;}
#define I2C_START {SDA_LOW; SCL_LOW;}
#define I2C_STOP {SCL_HIGH; SDA_HIGH;}

u_int16 I2CWriteByte(u_int16 b);
void I2CSetFM(u_int16 frq10K);

#endif
