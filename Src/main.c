#include "inc/hw_memmap.h"
#include "inc/hw_types.h"
#include "driverlib/sysctl.h"
#include "driverlib/gpio.h"
#include "driverlib/pin_map.h"
#include "driverlib/rom.h"

#include "inc/hw_types.h"
#include "boards/ek-evalbot/drivers/motor.h"
#include "boards/ek-evalbot/drivers/sensors.h"
#include "boards/ek-evalbot/drivers/display96x16x1.h"
#include "boards/ek-evalbot/drivers/io.h"

#include "Xbee_Protoc.h"
#include "Carto.h"

#include <stdlib.h>
#include <stdio.h>
int main() {

	Xbee * xb = Xbee_protoc_init();
	GLOBAL_VAR_MAP = Carto_InitCarto();
	
	 Carto_order_add(Carto_order_build(GO_UP,10));
	 Carto_order_add(Carto_order_build(GO_BACK,5));
	
	/*
	GLOBAL_VAR_MAP->evalbot->order->next = Carto_order_build(GO_BACK,20);
	GLOBAL_VAR_MAP->evalbot->order->next->next = Carto_order_build(TURN_LEFT,15);
	GLOBAL_VAR_MAP->evalbot->order->next->next->next = Carto_order_build(GO_UP,10);
	*/
	
	
	while(1){
		Carto_order_interprete(GLOBAL_VAR_MAP->evalbot->order);
		//if(GLOBAL_VAR_MAP->evalbot->order->ordre == WAIT ){
			
			//getORDER();
			
		//}
	}
	return 1;
}

