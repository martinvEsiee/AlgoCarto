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


int main() {
	
	Xbee * xb = Xbee_protoc_init();
	GLOBAL_VAR_MAP = Carto_InitCarto();
	GLOBAL_VAR_MAP->evalbot->order = Carto_order_build(GO_UP,10);
	GLOBAL_VAR_MAP->evalbot->order->next = Carto_order_build(GO_BACK,10);
	
	
	while(1)
		Carto_order_interprete(GLOBAL_VAR_MAP->evalbot->order);
	
	return 0;
}
