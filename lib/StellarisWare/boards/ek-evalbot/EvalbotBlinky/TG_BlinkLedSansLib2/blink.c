/* Ce projet fait clignoter les 2 leds TG 9/2012*/
/* pour le creer : cible : LM3S9B92
symbole rvmdk PART_LM3S9B96 TARGET_IS_TEMPEST_RB1
include path : .;..;..\..\..;
*/

int main(void) {
   int a=0;
  // LEDs sur broches 4 & 5
  // p291 : GPIOF = bit 5 = 0x20
  //*(int *) (0x400FE108)= *(int *)(0x400FE108)| 0x20;
	*(int *) (0x400FE000+0x108)= *(int *)(0x400FE000+0x108)| 0x20;
	for (a=0;a<10;a++);	 //delai de 3 clock
	
  //GPIO_PORTF_BASE=0x40025000
	//GPIO_PIN_4=0x00000010 et GPIO_PIN_5=0x00000020 

	// Puissances de sortie 2mA => activer bit dans GPIO_O_DR2R, les autres à 0 
	//Offset des registres de configuration correspondant (p414):	
	//#define GPIO_O_DR2R             0x00000500  // GPIO 2-mA Drive Select 
	*(volatile unsigned long *)(0x40025000+0x00000500)= *(volatile unsigned long *)(0x40025000+0x00000500) | 0x00000030;
	 //#define GPIO_O_DR4R             0x00000504  // GPIO 4-mA Drive Select
	*(volatile unsigned long *)(0x40025000+0x00000504)= *(volatile unsigned long *)(0x40025000+0x00000504) & ~0x00000030;
	 //#define GPIO_O_DR8R             0x00000508  // GPIO 8-mA Drive Select
	*(volatile unsigned long *)(0x40025000+0x00000508)= *(volatile unsigned long *)(0x40025000+0x00000508) & ~0x00000030;	
	 //#define GPIO_O_SLR              0x00000518  // GPIO Slew Rate Control Select	
	*(volatile unsigned long *)(0x40025000+0x00000518)= *(volatile unsigned long *)(0x40025000+0x00000518) & ~0x00000030;

	//Type de sortie Push-pull standard (ou opendrain, analog comp etc)
	//#define GPIO_O_ODR              0x0000050C  // GPIO Open Drain Select
   	*(volatile unsigned long *)(0x40025000+0x0000050C)= *(volatile unsigned long *)(0x40025000+0x0000050C) & (~0x00000030);
	//#define GPIO_O_PUR              0x00000510  // GPIO Pull-Up Select
	*(volatile unsigned long *)(0x40025000+0x00000510)= *(volatile unsigned long *)(0x40025000+0x00000510) & ~(0x00000030);
	//#define GPIO_O_PDR              0x00000514  // GPIO Pull-Down Select
	*(volatile unsigned long *)(0x40025000+0x00000514)= *(volatile unsigned long *)(0x40025000+0x00000514) & ~(0x00000030);
	//#define GPIO_O_DEN              0x0000051C  // GPIO Digital Enable	*/
	*(volatile unsigned long *)(0x40025000+0x0000051C)= *(volatile unsigned long *)(0x40025000+0x0000051C) | 0x00000030; //BIZARRE CAR PAS PUSH PULL...
	//Mode analogique ou non 
	//#define GPIO_O_AMSEL            0x00000528  // GPIO Analog Mode Select
	*(volatile unsigned long *)(0x40025000+0x00000528)= *(volatile unsigned long *)(0x40025000+0x00000528) | (~0x00000030); 
				 
 	//Direction des ports : out  
   //#define GPIO_O_DIR              0x00000400  // GPIO Direction
	*(volatile unsigned long *)(0x40025000+0x400) = 	*(volatile unsigned long *)(0x40025000+0x400) | 0x00000030;																
	//#define GPIO_O_AFSEL            0x00000420  // GPIO Alternate Function Select */
	*(volatile unsigned long *)(0x40025000+0x420) = 	*(volatile unsigned long *)(0x40025000+0x420) & ~0x00000030;
   while(1) {
 		//Ecriture sur les ports : 
		*(int *) (0x40025000+(0x10<<2)) = 0x10;	  // Offset (0x10<<2) : port 0x10 = broche 4
		*(int *) (0x40025000+(0x20<<2)) = 0x00;	  // Offset (0x20<<2) : port 0x20 = broche 5
				
		for (a=0;a<1000000;a++); //attente visuelle
				
		*(int *) (0x40025000+(0x10<<2)) = 0x00;
		*(int *) (0x40025000+(0x20<<2)) = 0x20;
		
		for (a=0;a<1000000;a++);  //attente visuelle
	}
}
