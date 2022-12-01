#include "dac.h"

// if USE_SDM is globally defined (in project options) then don't link in this handler, it's not needed.
#ifndef USE_SDM

	.sect data_y,myDac
	.palign DAC_BUFFER_LENGTH
	.export _dacBuffer
_dacBuffer:
	.zero DAC_BUFFER_LENGTH
	.export _dacWrPtr
_dacWrPtr:
	.word _dacBuffer+DAC_BUFFER_DELAY
	.export _dacRdPtr
_dacRdPtr:
	.word _dacBuffer

	.sect code,DacRoutines
	.export _MyDacVector
_MyDacVector:
	jmpi MyDacInt,(i6)+1	// DAC	0x20

	.export MyDacInt
MyDacInt:
	// 14+2 cycles (mr0 not changed or used)
	sty i1,(i6)+1
	stx I3,(I6)+1	; sty I2,(I6)
	stx D0,(I6)	; sty I7,(i6)

	ldc _dacRdPtr,I7
	ldc 0x8000+DAC_BUFFER_LENGTH-1,i2

	ldy (I7),I3
	ldy (I3)*,D0
	ldc DAC_LEFT,I1
	stx d0,(I1)+(DAC_RIGHT-DAC_LEFT)	; ldy (I3)*,d0
	stx d0,(i1)+(INT_GLOB_ENA-DAC_RIGHT)	; sty i3,(i7)

	ldx (I6)-1,D0	; ldy (I6),I7
	ldx (i6)-1,I3	; ldy (I6),I2

	reti
	stx i1,(i1)	; ldy (i6)-1,i1


	.export _WriteStereoSampleToDacBuffer
_WriteStereoSampleToDacBuffer:
	// 14+2 cycles (mr0 not changed or used)
	stx i2,(i6);	sty i3,(i6)

	ldc _dacWrPtr,I7
	ldc 0x8000+DAC_BUFFER_LENGTH-1,i2
	ldy (I7),I3
	sty d0,(I3)*
	sty d1,(I3)*
	sty i3,(i7)

	jr
	ldx (I6),I2;	ldy (i6)-1,i3

#endif //!USE_SDM

	//s_int16 Saturate24to16(register __reg_a s_int32 a);
	.sect code,Saturate24to16
	.export _Saturate24to16
_Saturate24to16:	
	add a0,null,a1; mv a1,a2
	sat a,a
	jr
	mv a1,a0

	//auto s_int16 Sat16Add(register __d0 s_int16 s1, register __d1 s_int16 s2);
	.sect code,Sat16Add
	.export _Sat16Add
_Sat16Add:
	stx mr0,(i6)
	ldc MR_SAT|MR_INT,mr0
	jr
	add d0,d1,a0;	ldx (i6)-1,mr0

	//auto s_int16 Sat16Sub(register __d0 s_int16 s1, register __d1 s_int16 s2);
	.sect code,Sat16Sub
	.export _Sat16Sub
_Sat16Sub:
	stx mr0,(i6)
	ldc MR_SAT|MR_INT,mr0
	jr
	sub d0,d1,a0;	ldx (i6)-1,mr0



	.end

