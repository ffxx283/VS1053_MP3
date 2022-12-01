#ifndef AUDIO_INT_H
#define AUDIO_INT_H

#define SDM_RATE_192K (32-1)
#define SRC_RATE_192K (32-1)
#define SDM_RATE_96K (64-1)
#define SRC_RATE_96K (64-1)
#define SDM_RATE_48K (128-1)
#define SRC_RATE_48K (128-1)
#define SDM_RATE_24K (256-1)
#define SRC_RATE_24K (256-1)


void InitAudioPath(void);
// Below are read-only copies of the current sample in and out. 
// They are only for level tracking.
// Do not write to them anywhere except in the ADC interrupt handler!
extern const volatile s_int16 stereoSampleOut[2]; // do NOT write to except in the audio interrupt handler
extern const volatile s_int16 stereoSampleIn[2]; // this is only for level tracking,

// This is incremented every sample. Use and clear it freely for user interface timing or whatever.
extern volatile u_int16 sampleCounter16;
extern volatile s_int16 boostShift;

extern s_int16 leftBuffer[160];
extern u_int16 leftBufferIndex;

// These headers are for functions defined in dacasm.s
s_int16 Saturate24to16(register __reg_a s_int32 a);
auto s_int16 Sat16Add(register __d0 s_int16 s1, register __d1 s_int16 s2);
auto s_int16 Sat16Sub(register __d0 s_int16 s1, register __d1 s_int16 s2);

#endif


