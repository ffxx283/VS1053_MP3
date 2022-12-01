#include "fmtuner.h"

#include "lcd.h"
//u_int16 frqReg;

u_int16 I2CWrite(u_int16 b){
	u_int16 i;
	for (i=0; i<8; i++) {
		if (b & (1 << (7-i))) {
			SDA_HIGH;
		} else {
			SDA_LOW;
		}
		SCL_HIGH;
		SCL_LOW;
	}

	GPIO_CONFIGURE_AS_INPUT(SDA);
	SCL_HIGH;
	if (GPIO_IS_HIGH(SDA)) {
		i=0;
	} else {
		i=1;
	}
	SCL_LOW;
	GPIO_CONFIGURE_AS_OUTPUT(SDA);
	return i;
}

void I2CSetFM(u_int16 frq10k) {
	u_int32 fmFrq = (u_int32)frq10k * 10000;
	u_int16 frqReg = 0;
	GPIO_CONFIGURE_AS_OUTPUT(1<<5);
	GPIO_SET_HIGH(1<<5);
	DELAY;
	GPIO_SET_LOW(1<<5);	
	fmFrq += 225000;
	frqReg = (u_int16)(fmFrq / 8192UL);	
	
	I2C_START;
	I2CWrite(0xc0); // i2c addr of tuner ic
	/*FM 1*/ I2CWrite( ((frqReg>>8) & 0x3f)); 
	/*FM 2*/ I2CWrite((frqReg&0xff));
	/*FM 3*/ I2CWrite(FM3_SEARCH_UP | FM3_SEARCHLVL_H | FM3_LO_INJECT_HI  |FM3_MONO); 
	/*FM 4*/ I2CWrite(FM4_XTAL_32K);
	/*FM 5*/ I2CWrite(FM5_PLLREF | FM5_DE_EMPH_75); 
	I2C_STOP;		
}