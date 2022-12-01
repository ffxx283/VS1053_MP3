#ifndef SOUNDPRESSURE_H
#define SOUNDPRESSURE_H


u_int16 LinToDB(u_int16 n);
void DrawSoundPressureBars(register s_int16 *samplePair, register u_int16 *levelmem);
void DrawSoundPressureArea();

#endif 