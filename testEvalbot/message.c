#include "driverlib/uart.h"
#include "driverlib/uart.h"
#include "inc/hw_types.h"
#include "driverlib/gpio.h"
#include "driverlib/pin_map.h"
#include "driverlib/sysctl.h"
#include "driverlib/rom.h"
#include "inc/hw_memmap.h"





//init
int mess_init(){
		SysCtlClockSet(SYSCTL_SYSDIV_1 | SYSCTL_USE_OSC | SYSCTL_OSC_MAIN |
                   SYSCTL_XTAL_16MHZ);
		SysCtlPeripheralEnable(SYSCTL_PERIPH_UART1);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOB);
    GPIOPinConfigure(GPIO_PB4_U1RX);
    GPIOPinConfigure(GPIO_PB5_U1TX);
    GPIOPinTypeUART(GPIO_PORTB_BASE, GPIO_PIN_4 | GPIO_PIN_5);
		//115200 vitesse de communication
		UARTConfigSetExpClk(UART1_BASE, SysCtlClockGet(), 115200,(UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE |UART_CONFIG_PAR_NONE));


		return 1;
}
//send
char mess_get(){
	char ret = UARTCharGet(UART1_BASE);
	return ret;
}

//receive
int mess_set(char ch){
		UARTCharPut(UART1_BASE,ch);
		return 1;
}

//send a string 
int mess_getSting(){
		return 1;
}

//send a string 
int mess_setString(char* chs, int size){
		int i;
		for(i=0;i < size;i++){
			mess_set(chs[i]);
		}
		return 1;
}

int mess_test(){
	char ch ='N';
	mess_init();
	mess_set('!');
	
	while('Q'!=ch){
		ch = mess_get();
		mess_set(ch);
	}
	mess_setString("FIN",3);
	return 1;
}


