#ifndef DAC_H
#define DAC_H

#ifdef VS1053
#include <vs1053.h>
#else
#include <vs1063.h>
#endif

#define DAC_BUFFER_LENGTH (2*8) /* Must be power of two */
#define DAC_BUFFER_DELAY  (2*4)

#ifndef ASM
extern u_int16 __y dacBuffer[DAC_BUFFER_LENGTH];
extern u_int16 __y *dacRdPtr, *dacWrPtr;

void MyDacVector(void); // Contains pointer to DAC interrupt. Never call this explititly!

auto void WriteStereoSampleToDacBuffer(register __d0 s_int16 left, register __d1 s_int16 right);

#endif /* !ASM */

#endif /* !DAC_H */