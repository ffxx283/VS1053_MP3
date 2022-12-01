#ifdef VS1063
#include <vs1063.h>
#else
#include <vs1053.h>
#endif

#define SPI_CLK (1 << 1)
#define SPI_MISO_SHIFT (-3)

//auto u_int16 SpiSend(register __a0 u_int16 dataTopAligned, register __a1 bits);
//auto u_int16 SpiTransfer(register __a0 u_int16 dataTopAligned, register __a1 bits);

.sect code,SpiTransfer
.export _SpiTransfer16
.export _SpiTransfer
_SpiTransfer16:
	ldc 16,A1
_SpiTransfer:
// auto u_int16 SpiSendReceive(register __a0 u_int16 dataTopAligned, register __a1 bits);
	stx d0,(i6)+1	; sty c0,(i6)
	//Now saves the old state of other GPIO pins
	ldc GPIO_ODATA,i7
	ldx (i7),b0	; sty b0,(i6)
	ldc ~SPI_CLK,d0  
	and b0,d0,b0   //B0 == Clock Down GPIO output pattern
	ldc SPI_CLK,c0 //C0 = Mask for SCLK
	j _SpiCommon
	ldc 0,d0
	
_SpiCommon:
	or c0,b0,c0    //C0 == Clock Up GPIO output pattern
	or d0,b0,d0	; ldy (i6),b0 // D0 == Clock Down GPIO output pattern
	stx lc,(i6)+1	; sty c1,(i6)
	add a1,ones,c1	; stx ls,(i6)
	lsl a,a		; sty le,(i6)
	ldc SER_DREQ,i7

	loop c1,$0-1
	ldc SPI_MISO_SHIFT,c1
$1:
	nop
	nop
	nop
	nop
	nop
	nop // as much delay between clk down and data i/o as possible
	stx a1,(i7)+(GPIO_IDATA-SER_DREQ)	//data out
	ldx (i7)+(GPIO_ODATA-GPIO_IDATA),a1	//data in, note pipeline!
	stx c0,(i7)+(GPIO_ODATA-GPIO_ODATA) // clk up   ODATA
	ashl a1,c1,a1
	nop
	nop
	nop
	nop
//	nop
	lslc a,a	; stx d0,(i7)+(SER_DREQ-GPIO_ODATA)	// clk down
$0:
	ldx (i6)-1,ls	; ldy (i6),le
	ldx (i6)-1,lc	; ldy (i6),c1
	jr
	ldx (i6)-1,d0	; ldy (i6),c0




.sect code,SpiSend
.export _SpiSend
_SpiSend:
// auto u_int16 SpiSend(register __a0 u_int16 dataTopAligned, register __a1 bits);
	stx d0,(i6)+1	; sty c0,(i6)
	//Now saves the old state of other GPIO pins
	ldc GPIO_ODATA,i7
	ldx (i7),c0
	ldc ~SPI_CLK,d0  
	and c0,d0,d0   ; sty c1,(i6) //d0 == Clock Down GPIO output pattern
	ldc SPI_CLK,c0
	or c0,d0,c0      ; stx lc,(i6)+1 //c0 = clk up
	add a1,ones,c1	; stx ls,(i6) //loop count, save loop state
	lsl a,a		; sty le,(i6) //save loop state
	loop c1,$0-1
	ldc SER_DREQ,i7 //DREQ=MOSI
$1:
	//nop
	stx a1,(i7)+(GPIO_ODATA-SER_DREQ)	//data out
//	nop
	stx c0,(i7)+(GPIO_ODATA-GPIO_ODATA) // clk up   ODATA
	nop
	lsl a,a	; stx d0,(i7)+(SER_DREQ-GPIO_ODATA)	// clk down
$0:
	//nop
	ldx (i6)-1,ls	; ldy (i6),le
	ldx (i6)-1,lc	; ldy (i6),c1
	jr
	ldx (i6)-1,d0	; ldy (i6),c0






#if 0

	.sect code,SpiSendReceiveDev
	.export _SpiSendReceiveDev16
	.export _SpiSendReceiveDev
_SpiSendReceiveDev16:
	ldc 16,A1
_SpiSendReceiveDev:
// auto u_int16 SpiSendReceiveMmc(register __a0 u_int16 dataTopAligned, register __a1 bits);
	// A0 = 16-bit data to send, A0 = data read
	// I7, A1, D1 tmp regs
	stx d0,(i6)+1	; sty c0,(i6)
	ldc GPIO_ODATA,i7
	ldx (i7),b0	; sty b0,(i6)
	ldc ~(SPI_CLK|SPI_xCS|SPI_xCS2),d0
	and b0,d0,b0
	ldc SPI_CLK|SPI_xCS,c0	//MMC CLK up, SPI CS up
	ldc SPI_xCS,d0		//MMC CLK down, SPI CS up
_SpiCommon:
	or c0,b0,c0
	or d0,b0,d0	; ldy (i6),b0
	stx lc,(i6)+1	; sty c1,(i6)
	add a1,ones,c1	; stx ls,(i6)
	lsl a,a		; sty le,(i6)
	ldc SER_DREQ,i7

	loop c1,$0-1
	ldc SPI_MISO_SHIFT,c1
$1:
	nop //more delay
	nop
	nop // as much delay between clk down and data i/o as possible
	stx a1,(i7)+(GPIO_IDATA-SER_DREQ)	//data out
	nop //more delay
	ldx (i7)+(GPIO_ODATA-GPIO_IDATA),a1	//data in, note pipeline!
	nop //more delay
	stx c0,(i7)+(GPIO_ODATA-GPIO_ODATA) // clk up   ODATA
	ashl a1,c1,a1
	nop
	nop
	lslc a,a	; stx d0,(i7)+(SER_DREQ-GPIO_ODATA)	// clk down
$0:
	ldx (i6)-1,ls	; ldy (i6),le
	ldx (i6)-1,lc	; ldy (i6),c1
	jr
	ldx (i6)-1,d0	; ldy (i6),c0

#endif



#if 0

.sect code,SpiSendReceiveLcd2
.export _SpiSendReceiveLcd2
_SpiSendReceiveLcd2:
// auto u_int16 SpiSendReceiveLcd(register __a0 u_int16 dataTopAligned, register __a1 bits);
	stx d0,(i6)+1	; sty c0,(i6)
	//Now saves the old state of other GPIO pins
	ldc GPIO_ODATA,i7
	ldx (i7),b0	; sty b0,(i6)
	ldc ~SPI_CLK,d0
	and b0,d0,b0
	ldc SPI_CLK,c0
	j _SpiCommon
	ldc 0,d0
	
_SpiCommon:
	or c0,b0,c0
	or d0,b0,d0	; ldy (i6),b0
	stx lc,(i6)+1	; sty c1,(i6)
	add a1,ones,c1	; stx ls,(i6)
	lsl a,a		; sty le,(i6)
	ldc SER_DREQ,i7

	loop c1,$0-1
	ldc SPI_MISO_SHIFT,c1
$1:
	nop
	nop // as much delay between clk down and data i/o as possible
	stx a1,(i7)+(GPIO_IDATA-SER_DREQ)	//data out
	ldx (i7)+(GPIO_ODATA-GPIO_IDATA),a1	//data in, note pipeline!
	stx c0,(i7)+(GPIO_ODATA-GPIO_ODATA) // clk up   ODATA
	ashl a1,c1,a1
	nop
	nop
	lslc a,a	; stx d0,(i7)+(SER_DREQ-GPIO_ODATA)	// clk down
$0:
	ldx (i6)-1,ls	; ldy (i6),le
	ldx (i6)-1,lc	; ldy (i6),c1
	jr
	ldx (i6)-1,d0	; ldy (i6),c0



#endif


