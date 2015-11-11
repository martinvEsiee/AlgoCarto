    11:   // LEDs sur broches 4 & 5 
0x00000314 2400      MOVS     r4,#0x00
0x00000316 2500      MOVS     r5,#0x00
    12:         ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF); 	//SYSCTL_PERIPH_GPIOF = 0x20000020
	;((void (*)(unsigned long ulPeripheral))((unsigned long *)(((unsigned long *)0x01000010)[13]))[6])(0x20000020);
0x00000318 F04F7080  MOV      r0,#0x1000000
0x0000031C 6C40      LDR      r0,[r0,#0x44]
0x0000031E 6981      LDR      r1,[r0,#0x18]
0x00000320 4825      LDR      r0,[pc,#148]  ; @0x000003B8
0x00000322 4788      BLX      r1

;==================sous programme en C ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF)
0x010029C6 4AD9      LDR      r2,[pc,#868]  ; @0x01002D2C
0x010029C8 0F01      LSRS     r1,r0,#28
0x010029CA F8521021  LDR      r1,[r2,r1,LSL #2]
0x010029CE 680A      LDR      r2,[r1,#0x00]
0x010029D0 B283      UXTH     r3,r0
0x010029D2 F3C04004  UBFX     r0,r0,#16,#5
0x010029D6 FA03F000  LSL      r0,r3,r0
0x010029DA 4310      ORRS     r0,r0,r2
0x010029DC 6008      STR      r0,[r1,#0x00]
0x010029DE 4770      BX       lr
;=================fin sous programme ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF)

    13:         ROM_GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_4 | GPIO_PIN_5); 
	;((void (*)(unsigned long ulPort, unsigned char ucPins))((unsigned long *)(((unsigned long *)0x01000010)[4]))[15])
	; (0x40025000, 0x00000010 | 0x00000020);
	;donc GPIO_PORTF_BASE=0x40025000
	;GPIO_PIN_4=0x00000010 et GPIO_PIN_5=0x00000020
    14:  
    15:  
0x00000324 F04F7080  MOV      r0,#0x1000000
0x00000328 6A00      LDR      r0,[r0,#0x20]
0x0000032A 2130      MOVS     r1,#0x30
0x0000032C 6BC2      LDR      r2,[r0,#0x3C]
0x0000032E 4823      LDR      r0,[pc,#140]  ; @0x000003BC
0x00000330 4790      BLX      r2

0x01001EA0 B510      PUSH     {r4,lr}
0x01001EA2 4684      MOV      r12,r0
0x01001EA4 460C      MOV      r4,r1
0x01001EA6 2201      MOVS     r2,#0x01
0x01001EA8 F7FFFE55  BL.W     0x01001B56

;=====================debut sous programme ROM_GPIOPinTypeGPIOOutput
0x01001B56 F8D03400  LDR      r3,[r0,#0x400]
0x01001B5A F0120F01  TST      r2,#0x01
0x01001B5E BF0C      ITE      EQ
0x01001B60 438B      BICEQ    r3,r3,r1
0x01001B62 430B      ORRNE    r3,r3,r1
0x01001B64 F8C03400  STR      r3,[r0,#0x400]
0x01001B68 F0120F02  TST      r2,#0x02
0x01001B6C F8D02420  LDR      r2,[r0,#0x420]
0x01001B70 BF0C      ITE      EQ
0x01001B72 EA220101  BICEQ    r1,r2,r1
0x01001B76 4311      ORRNE    r1,r1,r2
0x01001B78 F8C01420  STR      r1,[r0,#0x420]
0x01001B7C 4770      BX       lr

0x01001EAC 4621      MOV      r1,r4
0x01001EAE 2308      MOVS     r3,#0x08
0x01001EB0 E8BD4010  POP      {r4,lr}
0x01001EB4 2201      MOVS     r2,#0x01
0x01001EB6 4660      MOV      r0,r12
0x01001EB8 E6A7      B        0x01001C0A

0x01001C0A F8D0C500  LDR      r12,[r0,#0x500]
0x01001C0E F0120F01  TST      r2,#0x01
0x01001C12 BF0C      ITE      EQ
0x01001C14 EA2C0C01  BICEQ    r12,r12,r1
0x01001C18 EA4C0C01  ORRNE    r12,r12,r1
0x01001C1C F8C0C500  STR      r12,[r0,#0x500]
0x01001C20 F8D0C504  LDR      r12,[r0,#0x504]
0x01001C24 F0120F02  TST      r2,#0x02
0x01001C28 BF0C      ITE      EQ
0x01001C2A EA2C0C01  BICEQ    r12,r12,r1
0x01001C2E EA4C0C01  ORRNE    r12,r12,r1
0x01001C32 F8C0C504  STR      r12,[r0,#0x504]
0x01001C36 F8D0C508  LDR      r12,[r0,#0x508]
0x01001C3A F0120F04  TST      r2,#0x04
0x01001C3E BF0C      ITE      EQ
0x01001C40 EA2C0C01  BICEQ    r12,r12,r1
0x01001C44 EA4C0C01  ORRNE    r12,r12,r1
0x01001C48 F8C0C508  STR      r12,[r0,#0x508]
0x01001C4C F0120F08  TST      r2,#0x08
0x01001C50 F8D02518  LDR      r2,[r0,#0x518]
0x01001C54 BF0C      ITE      EQ
0x01001C56 438A      BICS     r2,r2,r1
0x01001C58 430A      ORRS     r2,r2,r1
0x01001C5A F8C02518  STR      r2,[r0,#0x518]
0x01001C5E F8D0250C  LDR      r2,[r0,#0x50C]
0x01001C62 F0130F01  TST      r3,#0x01
0x01001C66 BF0C      ITE      EQ
0x01001C68 438A      BICS     r2,r2,r1
0x01001C6A 430A      ORRS     r2,r2,r1
0x01001C6C F8C0250C  STR      r2,[r0,#0x50C]
0x01001C70 F8D02510  LDR      r2,[r0,#0x510]
0x01001C74 F0130F02  TST      r3,#0x02
0x01001C78 BF0C      ITE      EQ
0x01001C7A 438A      BICS     r2,r2,r1
0x01001C7C 430A      ORRS     r2,r2,r1
0x01001C7E F8C02510  STR      r2,[r0,#0x510]
0x01001C82 F8D02514  LDR      r2,[r0,#0x514]
0x01001C86 F0130F04  TST      r3,#0x04
0x01001C8A BF0C      ITE      EQ
0x01001C8C 438A      BICS     r2,r2,r1
0x01001C8E 430A      ORRS     r2,r2,r1
0x01001C90 F8C02514  STR      r2,[r0,#0x514]
0x01001C94 F8D0251C  LDR      r2,[r0,#0x51C]
0x01001C98 F0130F08  TST      r3,#0x08
0x01001C9C BF0C      ITE      EQ
0x01001C9E 438A      BICS     r2,r2,r1
0x01001CA0 430A      ORRS     r2,r2,r1
0x01001CA2 F8C0251C  STR      r2,[r0,#0x51C]
0x01001CA6 F8D02528  LDR      r2,[r0,#0x528]
0x01001CAA 2B00      CMP      r3,#0x00
0x01001CAC BF14      ITE      NE
0x01001CAE EA220101  BIC      r1,r2,r1
0x01001CB2 4311      ORRS     r1,r1,r2
0x01001CB4 F8C01528  STR      r1,[r0,#0x528]
0x01001CB8 4770      BX       lr
;=================================fin sous programme ROM_GPIOPinTypeGPIOOutput

    16:   while(1) { 
0x00000332 E017      B        0x00000364
    17:                 ROM_GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_4 | GPIO_PIN_5, 
    18:                       ~ROM_GPIOPinRead(GPIO_PORTF_BASE, 
    19:                                        GPIO_PIN_4 | GPIO_PIN_5)); 
0x00000334 F04F7080  MOV      r0,#0x1000000
0x00000338 6A00      LDR      r0,[r0,#0x20]
0x0000033A 2130      MOVS     r1,#0x30
0x0000033C 6AC2      LDR      r2,[r0,#0x2C]
0x0000033E 481F      LDR      r0,[pc,#124]  ; @0x000003BC
0x00000340 4790      BLX      r2
0x00000342 43C0      MVNS     r0,r0
0x00000344 B2C6      UXTB     r6,r0
0x00000346 F04F7080  MOV      r0,#0x1000000
0x0000034A 6A00      LDR      r0,[r0,#0x20]
0x0000034C 4632      MOV      r2,r6
0x0000034E 2130      MOVS     r1,#0x30
0x00000350 6803      LDR      r3,[r0,#0x00]
0x00000352 481A      LDR      r0,[pc,#104]  ; @0x000003BC
0x00000354 4798      BLX      r3
    20:          for (a=0;a<1000000;a++); 
0x00000356 2400      MOVS     r4,#0x00
0x00000358 E000      B        0x0000035C
0x0000035A 1C64      ADDS     r4,r4,#1
0x0000035C 4818      LDR      r0,[pc,#96]  ; @0x000003C0
0x0000035E 4284      CMP      r4,r0
0x00000360 DBFB      BLT      0x0000035A
    21:                 b=b*2; 
    22:         } 
    23: } 