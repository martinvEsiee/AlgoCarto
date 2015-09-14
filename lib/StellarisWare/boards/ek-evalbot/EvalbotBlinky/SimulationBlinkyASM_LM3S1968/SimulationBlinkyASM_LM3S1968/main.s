	;; TG 04/2012 - Simulation LM3S1968 (Cortex M3 de Texas Instrument)
	;; fait clignoter les leds connectées au port GPIOG
   	
		AREA    |.text|, CODE, READONLY
 
GPIOG 			EQU		0x400FE108 		  ;SYSCTL_RCGC2_R
GPIO_PORTG_DIR_R EQU	0x40026400		  ;Direction port G	  (p299 de lm3s1968.pdf)
GPIO_PORTG_DEN_R EQU	0x4002651C	      ;GPIO Digital Enable 	(p316 )
GPIO_PORTG_DATA_R EQU	0x400263FC 		  ;Pour changer tous les bits du port G, (voir p291)
										; =0x40026000+Ox3FC comme Ox3FC =1111111100 les bits 9:2
										;sont a 1 on peut donc ecrire tous les bits du port a
										;cette adresse (0x3FC est un masque)

DUREE    EQU        80000

	  	ENTRY
		EXPORT	__main
__main	
		ldr r6, = GPIOG  ;;Enable clock sur GPIOG où sont branchés les leds
        mov r0, #0x00000040  
        str r0, [r6]
		
        ldr r6, = GPIO_PORTG_DIR_R   ;Pin portG en sortie
        ldr r0, = 0x04	
        str r0, [r6]
		
        ldr r6, = GPIO_PORTG_DEN_R	;;Enable Digital Function
        ldr r0, = 0x04			
        str r0, [r6]
 

        mov r2, #0x00       ;Etat 1 du portG
        mov r3, #0x04       ;Etat2 du portG 
        ldr r6, = GPIO_PORTG_DATA_R    ; ata Register
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