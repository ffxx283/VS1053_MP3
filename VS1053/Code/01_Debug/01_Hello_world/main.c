/* For free support for VSIDE, please visit www.vsdsp-forum.com */

// Please select below which PCB board you use: the Prototyping board
// or the VS1053 Simple DSP board (enabled by default)

#include <stdio.h>
#ifdef VS1063
#include <vs1063.h>
#else
#include <vs1053.h>
#endif

#define USE_PROTOTYPING_BOARD
//#define USE_PROTOTYPING_BOARD
// (define *one* of the PCB types before including board.h)
#include "board.h"

main() {
	// show text in console
	//puts("Hello, world.");
	// set up button and led

	
	GPIO_CONFIGURE_AS_OUTPUT(LED_3);
	GPIO_CONFIGURE_AS_INPUT(XDCS_PIN);
	//
	// enter busy loop, detect button press:
	//
	
	USEX(GPIO_DDR) |= ((1<<8));
	//USEX(GPIO_ODATA) &= (~(1<<9));
	USEX(GPIO_ODATA) |= ((1<<8));

	while (1) {
		if ( (USEX(GPIO_IDATA)) & XDCS_PIN  ) {
			GPIO_SET_HIGH(LED_3);

			USEX(GPIO_DDR) |= ((1<<8));
			//USEX(GPIO_ODATA) &= (~(1<<9));
			USEX(GPIO_ODATA) |= ((1<<8));
			
			//puts("Hello, world.");
		} else {
			GPIO_SET_LOW(LED_3);
			
		}
	}
	return 0;
}
