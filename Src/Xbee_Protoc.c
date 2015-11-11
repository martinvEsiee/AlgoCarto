#include "Xbee_Protoc.h"
#include "driverlib/uart.h"
#include "inc/hw_types.h"
#include "driverlib/gpio.h"
#include "driverlib/pin_map.h"
#include "driverlib/sysctl.h"
#include "driverlib/rom.h"
#include "inc/hw_memmap.h"
#include <stdlib.h>
#include <string.h>

typedef enum {
	START_OCTET = 0xFF,
	STOP_OCTET  = 0xFE,
}Xbee_Protoc;


//env un char
void uartPutChar(unsigned char ch){
	if(ch !=START_OCTET && ch != STOP_OCTET)
		UARTCharPut(UART1_BASE,ch);
	return;
}

void UARTCharPutProtoc(Xbee_Protoc cg){
	UARTCharPut(UART1_BASE,(unsigned char)cg);
}



Xbee_Mess * Xbee_mess_build(
		unsigned char id,
		Xbee_Mess_Type type,
		char * mess,
		unsigned char size){	
		
		Xbee_Mess* t = malloc(sizeof(Xbee_Mess));
		t->id		= id;
		t->type = type;
		t->size = size;
		t->state = CREATED;
			
		//copy
		t->mess	= malloc(size);
		
		strncpy(t->mess,mess,t->size);
		return t;
}


Xbee * Xbee_protoc_init(void){
	
	Xbee * conection;

		
     SysCtlClockSet(SYSCTL_SYSDIV_1 | SYSCTL_USE_OSC | SYSCTL_OSC_MAIN |
                   SYSCTL_XTAL_16MHZ);
	

		SysCtlPeripheralEnable(SYSCTL_PERIPH_UART1);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOB);
    GPIOPinConfigure(GPIO_PB4_U1RX);
    GPIOPinConfigure(GPIO_PB5_U1TX);
    GPIOPinTypeUART(GPIO_PORTB_BASE, GPIO_PIN_4 | GPIO_PIN_5);
		//115200 vitesse de communication
		UARTConfigSetExpClk(UART1_BASE, SysCtlClockGet(), 115200,(UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE |UART_CONFIG_PAR_NONE));


		
		

		uartPutChar('!');
		
		//maloc struc
		conection = malloc(sizeof(Xbee));
		conection->id = 1;
		conection->receive = Xbee_fifo_build();
		conection->send = Xbee_fifo_build();

	return conection;
}


Xbee_protoc_fifo* Xbee_fifo_build(void){
	Xbee_protoc_fifo * proto = malloc(sizeof(Xbee_protoc_fifo));
	
	proto->PRIV_firstOut = NULL;
	proto->PRIV_lastIn = NULL;
	
	return proto;
}


void 				Xbee_Add_Message(Xbee_protoc_fifo * fifo,Xbee_Mess * messToAdd){
	
	Xbee_protoc_cont * old;
	Xbee_protoc_cont * cont = malloc(sizeof(Xbee_protoc_cont));
			cont->data = messToAdd;
			cont->next = NULL;
			cont->previous =NULL;
	
	
	if(fifo->PRIV_firstOut == NULL && fifo->PRIV_lastIn == NULL)
	{	
			fifo->PRIV_lastIn 	= cont;
			fifo->PRIV_firstOut = cont;	
			return;
	}
	
	 old = fifo->PRIV_lastIn;
	
	old->previous			=	cont; 
	cont->next				=	old;
	fifo->PRIV_lastIn = cont;
	
	return;	
}


Xbee_Mess* 	Xbee_Get_Message(Xbee_protoc_fifo * fifo){
	return fifo->PRIV_firstOut->data;
}


Xbee_Mess* 	Xbee_Pop_Message(Xbee_protoc_fifo* fifo){
	
	Xbee_protoc_cont* tmp = fifo->PRIV_firstOut;
	Xbee_Mess * data = tmp->data;
	
	fifo->PRIV_firstOut = tmp->previous;
	tmp->previous->next = NULL;
	
	free(tmp);
	
	return data;
}



//env une string
void uartPutString(char* mess,int size){
	int i;
	for(i=0;i<size;i++)
		uartPutChar(mess[i]);
	
	return;
}



//recupere un char
char uartgetChar(){
	
			char ret =UARTCharGet(UART1_BASE);
			#ifdef DEBUG
			UARTCharPut(UART1_BASE,ret);
			#endif	
	return ret;
}


//recupere une string
char * Xbee_uartGetString(int size){
	
			char * retSring = malloc(sizeof(char)*size);
			int i;
			for( i= 0;i<size;i++){
				retSring[i]=uartgetChar();
			}
			return retSring;
}


void Xbee_Rece_Message(Xbee_protoc_fifo * recFIFO,unsigned char pID){
	
	unsigned char id = uartgetChar();//pass no forget to init
	char type;
	unsigned char size;
	char* mess;
	Xbee_Mess * messa;
	
	if(id!=pID){
		return;
	}
	type = uartgetChar();
	size = uartgetChar();
	mess = Xbee_uartGetString(size);
	
	messa = Xbee_mess_build(id,(Xbee_Mess_Type)type,mess,size);
	Xbee_Add_Message(recFIFO,messa);
	free(mess);
}



void Xbee_Dest_Message(Xbee_Mess*mess){
	free(mess->mess);//free de la chaine de carac
	free(mess);//free de l'elem
	return;
}

void Xbee_Send_Message(Xbee_protoc_fifo * sendFIFO){

	Xbee_Mess * mess = Xbee_Get_Message(sendFIFO);
	
	//gestion des etats
	switch(mess->state){
		case TO_SEND:
			break;
		
		default:
				Xbee_Dest_Message(Xbee_Pop_Message(sendFIFO));
				return;
		}
	UARTCharPutProtoc(START_OCTET);
	//env id
	//mess->id;
	uartPutChar(mess->id);
	//env type_data
	uartPutChar(mess->type);
	//size
	uartPutChar(mess->size);
	//env data
	uartPutString(mess->mess,mess->size);
		
	UARTCharPutProtoc(STOP_OCTET);
		
	mess->state = SEND;
	
	//destruction du message
	Xbee_Dest_Message(Xbee_Pop_Message(sendFIFO));
	
	return;
}
void test(){
	while(1)
	{
	uartPutChar(uartgetChar());
}
}
