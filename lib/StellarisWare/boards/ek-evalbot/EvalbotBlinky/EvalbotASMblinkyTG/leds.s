	;; TG 09/2012 - Evalbot (Cortex M3 de Texas Instrument)
	;; fait clignoter les leds connectées au port GPIOF
   	
		AREA    |.text|, CODE, READONLY
 
 
;;OLD pour commentaire...
GPIO_PORTG_DATA_R EQU	0x400263FC 		  ;Pour changer tous les bits du port G, (voir p291)
										; =0x40026000+Ox3FC comme Ox3FC =1111111100 les bits 9:2
										;sont a 1 on peut donc ecrire tous les bits du port a
										;cette adresse (0x3FC est un masque)
;;fin OLD

SYSCTL_PERIPH_GPIOF EQU		0x400FE108	;SYSCTL_RCGC2_R
GPIO_PORTF_BASE		EQU		0x40025000
GPIO_O_DIR   		EQU 	0x00000400  ; GPIO Direction  (p299 de lm3s1968.pdf)
GPIO_O_DR2R   		EQU 	0x00000500  ; GPIO 2-mA Drive Select
GPIO_O_DEN   		EQU 	0x0000051C  ; GPIO Digital Enable	(p316 )

PORT4_5				EQU 	0x30	;broches 4 et 5 où sont les leds
PORT4OFFSET			EQU		0x40	;0x10<<2  (voir p291)
PORT5OFFSET			EQU 	0x80	;0x20<<2

DUREE   			EQU     0x002FFFFF	

	  	ENTRY
		EXPORT	__main
__main	
		ldr r6, = SYSCTL_PERIPH_GPIOF  
        mov r0, #0x00000020  ;;Enable clock sur GPIOF où sont branchés les leds
        str r0, [r6]
		
		nop
		nop
		nop
	
        ldr r6, = GPIO_PORTF_BASE+GPIO_O_DIR   ;2 Pins portF en sortie
        ldr r0, = PORT4_5	
        str r0, [r6]
		
        ldr r6, = GPIO_PORTF_BASE+GPIO_O_DEN	;;Enable Digital Function (p316 )
        ldr r0, = PORT4_5		
        str r0, [r6]
 
		ldr r6, = GPIO_PORTF_BASE+GPIO_O_DR2R	;; Choix de l'intensité de sortie (2mA)
        ldr r0, = PORT4_5			
        str r0, [r6]

        mov r2, #0x000       ;Eteint 
        mov r3, #0x010       ;Allume portF broche 4
        ldr r6, = GPIO_PORTF_BASE+PORT4OFFSET    ; data Register
loop
        str r2, [r6]    ;change etat du port = etat1 dans r2       
        ldr r1, = DUREE ;pour la duree de la boucle d'attente1 (wait1)
wait1
        subs r1, #1
        bne wait1

        str r3, [r6]  ;change etat du port = etat2 dans r3
        ldr r1, = DUREE	;pour la duree de la boucle d'attente2 (wait2)
wait2
        subs r1, #1
        bne wait2

        b loop                 
        END 