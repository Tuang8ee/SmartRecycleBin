subtitle "Microchip MPLAB XC8 C Compiler v2.36 (Free license) build 20220127204148 Og9 "

pagewidth 120

	opt flic

	processor	16F877
include "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\16f877.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 55 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INDF equ 00h ;# 
# 62 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR0 equ 01h ;# 
# 69 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCL equ 02h ;# 
# 76 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
STATUS equ 03h ;# 
# 162 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
FSR equ 04h ;# 
# 169 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTA equ 05h ;# 
# 219 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTB equ 06h ;# 
# 281 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTC equ 07h ;# 
# 343 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTD equ 08h ;# 
# 405 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTE equ 09h ;# 
# 437 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCLATH equ 0Ah ;# 
# 457 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INTCON equ 0Bh ;# 
# 535 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR1 equ 0Ch ;# 
# 597 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR2 equ 0Dh ;# 
# 630 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1 equ 0Eh ;# 
# 637 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1L equ 0Eh ;# 
# 644 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1H equ 0Fh ;# 
# 651 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T1CON equ 010h ;# 
# 728 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR2 equ 011h ;# 
# 735 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T2CON equ 012h ;# 
# 806 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPBUF equ 013h ;# 
# 813 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON equ 014h ;# 
# 883 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1 equ 015h ;# 
# 890 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1L equ 015h ;# 
# 897 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1H equ 016h ;# 
# 904 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP1CON equ 017h ;# 
# 962 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCSTA equ 018h ;# 
# 1057 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXREG equ 019h ;# 
# 1064 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCREG equ 01Ah ;# 
# 1071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2 equ 01Bh ;# 
# 1078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2L equ 01Bh ;# 
# 1085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2H equ 01Ch ;# 
# 1092 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP2CON equ 01Dh ;# 
# 1150 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESH equ 01Eh ;# 
# 1157 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON0 equ 01Fh ;# 
# 1253 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
OPTION_REG equ 081h ;# 
# 1323 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISA equ 085h ;# 
# 1373 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISB equ 086h ;# 
# 1435 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISC equ 087h ;# 
# 1497 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISD equ 088h ;# 
# 1559 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISE equ 089h ;# 
# 1616 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE1 equ 08Ch ;# 
# 1678 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE2 equ 08Dh ;# 
# 1711 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCON equ 08Eh ;# 
# 1745 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON2 equ 091h ;# 
# 1807 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PR2 equ 092h ;# 
# 1814 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPADD equ 093h ;# 
# 1821 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPSTAT equ 094h ;# 
# 1990 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXSTA equ 098h ;# 
# 2071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SPBRG equ 099h ;# 
# 2078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESL equ 09Eh ;# 
# 2085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON1 equ 09Fh ;# 
# 2138 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATA equ 010Ch ;# 
# 2145 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADR equ 010Dh ;# 
# 2152 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATH equ 010Eh ;# 
# 2159 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADRH equ 010Fh ;# 
# 2166 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON1 equ 018Ch ;# 
# 2211 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON2 equ 018Dh ;# 
# 55 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INDF equ 00h ;# 
# 62 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR0 equ 01h ;# 
# 69 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCL equ 02h ;# 
# 76 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
STATUS equ 03h ;# 
# 162 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
FSR equ 04h ;# 
# 169 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTA equ 05h ;# 
# 219 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTB equ 06h ;# 
# 281 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTC equ 07h ;# 
# 343 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTD equ 08h ;# 
# 405 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTE equ 09h ;# 
# 437 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCLATH equ 0Ah ;# 
# 457 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INTCON equ 0Bh ;# 
# 535 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR1 equ 0Ch ;# 
# 597 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR2 equ 0Dh ;# 
# 630 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1 equ 0Eh ;# 
# 637 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1L equ 0Eh ;# 
# 644 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1H equ 0Fh ;# 
# 651 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T1CON equ 010h ;# 
# 728 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR2 equ 011h ;# 
# 735 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T2CON equ 012h ;# 
# 806 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPBUF equ 013h ;# 
# 813 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON equ 014h ;# 
# 883 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1 equ 015h ;# 
# 890 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1L equ 015h ;# 
# 897 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1H equ 016h ;# 
# 904 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP1CON equ 017h ;# 
# 962 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCSTA equ 018h ;# 
# 1057 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXREG equ 019h ;# 
# 1064 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCREG equ 01Ah ;# 
# 1071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2 equ 01Bh ;# 
# 1078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2L equ 01Bh ;# 
# 1085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2H equ 01Ch ;# 
# 1092 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP2CON equ 01Dh ;# 
# 1150 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESH equ 01Eh ;# 
# 1157 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON0 equ 01Fh ;# 
# 1253 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
OPTION_REG equ 081h ;# 
# 1323 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISA equ 085h ;# 
# 1373 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISB equ 086h ;# 
# 1435 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISC equ 087h ;# 
# 1497 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISD equ 088h ;# 
# 1559 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISE equ 089h ;# 
# 1616 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE1 equ 08Ch ;# 
# 1678 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE2 equ 08Dh ;# 
# 1711 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCON equ 08Eh ;# 
# 1745 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON2 equ 091h ;# 
# 1807 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PR2 equ 092h ;# 
# 1814 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPADD equ 093h ;# 
# 1821 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPSTAT equ 094h ;# 
# 1990 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXSTA equ 098h ;# 
# 2071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SPBRG equ 099h ;# 
# 2078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESL equ 09Eh ;# 
# 2085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON1 equ 09Fh ;# 
# 2138 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATA equ 010Ch ;# 
# 2145 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADR equ 010Dh ;# 
# 2152 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATH equ 010Eh ;# 
# 2159 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADRH equ 010Fh ;# 
# 2166 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON1 equ 018Ch ;# 
# 2211 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON2 equ 018Dh ;# 
# 55 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INDF equ 00h ;# 
# 62 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR0 equ 01h ;# 
# 69 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCL equ 02h ;# 
# 76 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
STATUS equ 03h ;# 
# 162 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
FSR equ 04h ;# 
# 169 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTA equ 05h ;# 
# 219 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTB equ 06h ;# 
# 281 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTC equ 07h ;# 
# 343 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTD equ 08h ;# 
# 405 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTE equ 09h ;# 
# 437 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCLATH equ 0Ah ;# 
# 457 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INTCON equ 0Bh ;# 
# 535 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR1 equ 0Ch ;# 
# 597 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR2 equ 0Dh ;# 
# 630 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1 equ 0Eh ;# 
# 637 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1L equ 0Eh ;# 
# 644 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1H equ 0Fh ;# 
# 651 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T1CON equ 010h ;# 
# 728 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR2 equ 011h ;# 
# 735 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T2CON equ 012h ;# 
# 806 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPBUF equ 013h ;# 
# 813 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON equ 014h ;# 
# 883 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1 equ 015h ;# 
# 890 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1L equ 015h ;# 
# 897 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1H equ 016h ;# 
# 904 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP1CON equ 017h ;# 
# 962 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCSTA equ 018h ;# 
# 1057 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXREG equ 019h ;# 
# 1064 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCREG equ 01Ah ;# 
# 1071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2 equ 01Bh ;# 
# 1078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2L equ 01Bh ;# 
# 1085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2H equ 01Ch ;# 
# 1092 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP2CON equ 01Dh ;# 
# 1150 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESH equ 01Eh ;# 
# 1157 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON0 equ 01Fh ;# 
# 1253 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
OPTION_REG equ 081h ;# 
# 1323 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISA equ 085h ;# 
# 1373 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISB equ 086h ;# 
# 1435 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISC equ 087h ;# 
# 1497 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISD equ 088h ;# 
# 1559 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISE equ 089h ;# 
# 1616 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE1 equ 08Ch ;# 
# 1678 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE2 equ 08Dh ;# 
# 1711 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCON equ 08Eh ;# 
# 1745 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON2 equ 091h ;# 
# 1807 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PR2 equ 092h ;# 
# 1814 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPADD equ 093h ;# 
# 1821 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPSTAT equ 094h ;# 
# 1990 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXSTA equ 098h ;# 
# 2071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SPBRG equ 099h ;# 
# 2078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESL equ 09Eh ;# 
# 2085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON1 equ 09Fh ;# 
# 2138 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATA equ 010Ch ;# 
# 2145 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADR equ 010Dh ;# 
# 2152 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATH equ 010Eh ;# 
# 2159 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADRH equ 010Fh ;# 
# 2166 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON1 equ 018Ch ;# 
# 2211 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON2 equ 018Dh ;# 
# 55 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INDF equ 00h ;# 
# 62 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR0 equ 01h ;# 
# 69 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCL equ 02h ;# 
# 76 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
STATUS equ 03h ;# 
# 162 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
FSR equ 04h ;# 
# 169 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTA equ 05h ;# 
# 219 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTB equ 06h ;# 
# 281 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTC equ 07h ;# 
# 343 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTD equ 08h ;# 
# 405 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTE equ 09h ;# 
# 437 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCLATH equ 0Ah ;# 
# 457 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INTCON equ 0Bh ;# 
# 535 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR1 equ 0Ch ;# 
# 597 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR2 equ 0Dh ;# 
# 630 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1 equ 0Eh ;# 
# 637 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1L equ 0Eh ;# 
# 644 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1H equ 0Fh ;# 
# 651 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T1CON equ 010h ;# 
# 728 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR2 equ 011h ;# 
# 735 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T2CON equ 012h ;# 
# 806 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPBUF equ 013h ;# 
# 813 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON equ 014h ;# 
# 883 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1 equ 015h ;# 
# 890 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1L equ 015h ;# 
# 897 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1H equ 016h ;# 
# 904 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP1CON equ 017h ;# 
# 962 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCSTA equ 018h ;# 
# 1057 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXREG equ 019h ;# 
# 1064 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCREG equ 01Ah ;# 
# 1071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2 equ 01Bh ;# 
# 1078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2L equ 01Bh ;# 
# 1085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2H equ 01Ch ;# 
# 1092 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP2CON equ 01Dh ;# 
# 1150 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESH equ 01Eh ;# 
# 1157 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON0 equ 01Fh ;# 
# 1253 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
OPTION_REG equ 081h ;# 
# 1323 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISA equ 085h ;# 
# 1373 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISB equ 086h ;# 
# 1435 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISC equ 087h ;# 
# 1497 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISD equ 088h ;# 
# 1559 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISE equ 089h ;# 
# 1616 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE1 equ 08Ch ;# 
# 1678 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE2 equ 08Dh ;# 
# 1711 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCON equ 08Eh ;# 
# 1745 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON2 equ 091h ;# 
# 1807 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PR2 equ 092h ;# 
# 1814 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPADD equ 093h ;# 
# 1821 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPSTAT equ 094h ;# 
# 1990 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXSTA equ 098h ;# 
# 2071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SPBRG equ 099h ;# 
# 2078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESL equ 09Eh ;# 
# 2085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON1 equ 09Fh ;# 
# 2138 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATA equ 010Ch ;# 
# 2145 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADR equ 010Dh ;# 
# 2152 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATH equ 010Eh ;# 
# 2159 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADRH equ 010Fh ;# 
# 2166 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON1 equ 018Ch ;# 
# 2211 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON2 equ 018Dh ;# 
# 55 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INDF equ 00h ;# 
# 62 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR0 equ 01h ;# 
# 69 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCL equ 02h ;# 
# 76 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
STATUS equ 03h ;# 
# 162 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
FSR equ 04h ;# 
# 169 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTA equ 05h ;# 
# 219 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTB equ 06h ;# 
# 281 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTC equ 07h ;# 
# 343 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTD equ 08h ;# 
# 405 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTE equ 09h ;# 
# 437 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCLATH equ 0Ah ;# 
# 457 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INTCON equ 0Bh ;# 
# 535 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR1 equ 0Ch ;# 
# 597 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR2 equ 0Dh ;# 
# 630 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1 equ 0Eh ;# 
# 637 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1L equ 0Eh ;# 
# 644 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1H equ 0Fh ;# 
# 651 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T1CON equ 010h ;# 
# 728 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR2 equ 011h ;# 
# 735 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T2CON equ 012h ;# 
# 806 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPBUF equ 013h ;# 
# 813 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON equ 014h ;# 
# 883 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1 equ 015h ;# 
# 890 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1L equ 015h ;# 
# 897 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1H equ 016h ;# 
# 904 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP1CON equ 017h ;# 
# 962 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCSTA equ 018h ;# 
# 1057 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXREG equ 019h ;# 
# 1064 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCREG equ 01Ah ;# 
# 1071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2 equ 01Bh ;# 
# 1078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2L equ 01Bh ;# 
# 1085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2H equ 01Ch ;# 
# 1092 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP2CON equ 01Dh ;# 
# 1150 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESH equ 01Eh ;# 
# 1157 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON0 equ 01Fh ;# 
# 1253 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
OPTION_REG equ 081h ;# 
# 1323 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISA equ 085h ;# 
# 1373 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISB equ 086h ;# 
# 1435 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISC equ 087h ;# 
# 1497 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISD equ 088h ;# 
# 1559 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISE equ 089h ;# 
# 1616 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE1 equ 08Ch ;# 
# 1678 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE2 equ 08Dh ;# 
# 1711 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCON equ 08Eh ;# 
# 1745 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON2 equ 091h ;# 
# 1807 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PR2 equ 092h ;# 
# 1814 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPADD equ 093h ;# 
# 1821 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPSTAT equ 094h ;# 
# 1990 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXSTA equ 098h ;# 
# 2071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SPBRG equ 099h ;# 
# 2078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESL equ 09Eh ;# 
# 2085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON1 equ 09Fh ;# 
# 2138 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATA equ 010Ch ;# 
# 2145 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADR equ 010Dh ;# 
# 2152 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATH equ 010Eh ;# 
# 2159 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADRH equ 010Fh ;# 
# 2166 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON1 equ 018Ch ;# 
# 2211 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON2 equ 018Dh ;# 
# 55 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INDF equ 00h ;# 
# 62 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR0 equ 01h ;# 
# 69 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCL equ 02h ;# 
# 76 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
STATUS equ 03h ;# 
# 162 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
FSR equ 04h ;# 
# 169 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTA equ 05h ;# 
# 219 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTB equ 06h ;# 
# 281 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTC equ 07h ;# 
# 343 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTD equ 08h ;# 
# 405 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTE equ 09h ;# 
# 437 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCLATH equ 0Ah ;# 
# 457 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INTCON equ 0Bh ;# 
# 535 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR1 equ 0Ch ;# 
# 597 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR2 equ 0Dh ;# 
# 630 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1 equ 0Eh ;# 
# 637 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1L equ 0Eh ;# 
# 644 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1H equ 0Fh ;# 
# 651 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T1CON equ 010h ;# 
# 728 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR2 equ 011h ;# 
# 735 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T2CON equ 012h ;# 
# 806 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPBUF equ 013h ;# 
# 813 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON equ 014h ;# 
# 883 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1 equ 015h ;# 
# 890 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1L equ 015h ;# 
# 897 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1H equ 016h ;# 
# 904 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP1CON equ 017h ;# 
# 962 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCSTA equ 018h ;# 
# 1057 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXREG equ 019h ;# 
# 1064 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCREG equ 01Ah ;# 
# 1071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2 equ 01Bh ;# 
# 1078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2L equ 01Bh ;# 
# 1085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2H equ 01Ch ;# 
# 1092 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP2CON equ 01Dh ;# 
# 1150 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESH equ 01Eh ;# 
# 1157 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON0 equ 01Fh ;# 
# 1253 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
OPTION_REG equ 081h ;# 
# 1323 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISA equ 085h ;# 
# 1373 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISB equ 086h ;# 
# 1435 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISC equ 087h ;# 
# 1497 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISD equ 088h ;# 
# 1559 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISE equ 089h ;# 
# 1616 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE1 equ 08Ch ;# 
# 1678 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE2 equ 08Dh ;# 
# 1711 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCON equ 08Eh ;# 
# 1745 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON2 equ 091h ;# 
# 1807 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PR2 equ 092h ;# 
# 1814 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPADD equ 093h ;# 
# 1821 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPSTAT equ 094h ;# 
# 1990 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXSTA equ 098h ;# 
# 2071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SPBRG equ 099h ;# 
# 2078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESL equ 09Eh ;# 
# 2085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON1 equ 09Fh ;# 
# 2138 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATA equ 010Ch ;# 
# 2145 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADR equ 010Dh ;# 
# 2152 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATH equ 010Eh ;# 
# 2159 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADRH equ 010Fh ;# 
# 2166 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON1 equ 018Ch ;# 
# 2211 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON2 equ 018Dh ;# 
# 55 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INDF equ 00h ;# 
# 62 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR0 equ 01h ;# 
# 69 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCL equ 02h ;# 
# 76 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
STATUS equ 03h ;# 
# 162 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
FSR equ 04h ;# 
# 169 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTA equ 05h ;# 
# 219 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTB equ 06h ;# 
# 281 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTC equ 07h ;# 
# 343 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTD equ 08h ;# 
# 405 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTE equ 09h ;# 
# 437 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCLATH equ 0Ah ;# 
# 457 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INTCON equ 0Bh ;# 
# 535 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR1 equ 0Ch ;# 
# 597 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR2 equ 0Dh ;# 
# 630 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1 equ 0Eh ;# 
# 637 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1L equ 0Eh ;# 
# 644 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1H equ 0Fh ;# 
# 651 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T1CON equ 010h ;# 
# 728 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR2 equ 011h ;# 
# 735 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T2CON equ 012h ;# 
# 806 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPBUF equ 013h ;# 
# 813 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON equ 014h ;# 
# 883 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1 equ 015h ;# 
# 890 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1L equ 015h ;# 
# 897 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1H equ 016h ;# 
# 904 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP1CON equ 017h ;# 
# 962 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCSTA equ 018h ;# 
# 1057 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXREG equ 019h ;# 
# 1064 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCREG equ 01Ah ;# 
# 1071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2 equ 01Bh ;# 
# 1078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2L equ 01Bh ;# 
# 1085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2H equ 01Ch ;# 
# 1092 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP2CON equ 01Dh ;# 
# 1150 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESH equ 01Eh ;# 
# 1157 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON0 equ 01Fh ;# 
# 1253 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
OPTION_REG equ 081h ;# 
# 1323 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISA equ 085h ;# 
# 1373 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISB equ 086h ;# 
# 1435 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISC equ 087h ;# 
# 1497 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISD equ 088h ;# 
# 1559 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISE equ 089h ;# 
# 1616 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE1 equ 08Ch ;# 
# 1678 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE2 equ 08Dh ;# 
# 1711 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCON equ 08Eh ;# 
# 1745 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON2 equ 091h ;# 
# 1807 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PR2 equ 092h ;# 
# 1814 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPADD equ 093h ;# 
# 1821 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPSTAT equ 094h ;# 
# 1990 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXSTA equ 098h ;# 
# 2071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SPBRG equ 099h ;# 
# 2078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESL equ 09Eh ;# 
# 2085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON1 equ 09Fh ;# 
# 2138 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATA equ 010Ch ;# 
# 2145 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADR equ 010Dh ;# 
# 2152 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATH equ 010Eh ;# 
# 2159 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADRH equ 010Fh ;# 
# 2166 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON1 equ 018Ch ;# 
# 2211 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON2 equ 018Dh ;# 
# 55 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INDF equ 00h ;# 
# 62 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR0 equ 01h ;# 
# 69 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCL equ 02h ;# 
# 76 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
STATUS equ 03h ;# 
# 162 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
FSR equ 04h ;# 
# 169 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTA equ 05h ;# 
# 219 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTB equ 06h ;# 
# 281 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTC equ 07h ;# 
# 343 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTD equ 08h ;# 
# 405 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTE equ 09h ;# 
# 437 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCLATH equ 0Ah ;# 
# 457 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INTCON equ 0Bh ;# 
# 535 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR1 equ 0Ch ;# 
# 597 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR2 equ 0Dh ;# 
# 630 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1 equ 0Eh ;# 
# 637 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1L equ 0Eh ;# 
# 644 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1H equ 0Fh ;# 
# 651 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T1CON equ 010h ;# 
# 728 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR2 equ 011h ;# 
# 735 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T2CON equ 012h ;# 
# 806 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPBUF equ 013h ;# 
# 813 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON equ 014h ;# 
# 883 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1 equ 015h ;# 
# 890 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1L equ 015h ;# 
# 897 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1H equ 016h ;# 
# 904 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP1CON equ 017h ;# 
# 962 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCSTA equ 018h ;# 
# 1057 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXREG equ 019h ;# 
# 1064 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCREG equ 01Ah ;# 
# 1071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2 equ 01Bh ;# 
# 1078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2L equ 01Bh ;# 
# 1085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2H equ 01Ch ;# 
# 1092 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP2CON equ 01Dh ;# 
# 1150 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESH equ 01Eh ;# 
# 1157 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON0 equ 01Fh ;# 
# 1253 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
OPTION_REG equ 081h ;# 
# 1323 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISA equ 085h ;# 
# 1373 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISB equ 086h ;# 
# 1435 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISC equ 087h ;# 
# 1497 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISD equ 088h ;# 
# 1559 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISE equ 089h ;# 
# 1616 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE1 equ 08Ch ;# 
# 1678 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE2 equ 08Dh ;# 
# 1711 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCON equ 08Eh ;# 
# 1745 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON2 equ 091h ;# 
# 1807 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PR2 equ 092h ;# 
# 1814 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPADD equ 093h ;# 
# 1821 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPSTAT equ 094h ;# 
# 1990 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXSTA equ 098h ;# 
# 2071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SPBRG equ 099h ;# 
# 2078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESL equ 09Eh ;# 
# 2085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON1 equ 09Fh ;# 
# 2138 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATA equ 010Ch ;# 
# 2145 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADR equ 010Dh ;# 
# 2152 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATH equ 010Eh ;# 
# 2159 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADRH equ 010Fh ;# 
# 2166 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON1 equ 018Ch ;# 
# 2211 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON2 equ 018Dh ;# 
# 55 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INDF equ 00h ;# 
# 62 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR0 equ 01h ;# 
# 69 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCL equ 02h ;# 
# 76 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
STATUS equ 03h ;# 
# 162 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
FSR equ 04h ;# 
# 169 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTA equ 05h ;# 
# 219 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTB equ 06h ;# 
# 281 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTC equ 07h ;# 
# 343 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTD equ 08h ;# 
# 405 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTE equ 09h ;# 
# 437 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCLATH equ 0Ah ;# 
# 457 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INTCON equ 0Bh ;# 
# 535 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR1 equ 0Ch ;# 
# 597 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR2 equ 0Dh ;# 
# 630 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1 equ 0Eh ;# 
# 637 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1L equ 0Eh ;# 
# 644 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1H equ 0Fh ;# 
# 651 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T1CON equ 010h ;# 
# 728 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR2 equ 011h ;# 
# 735 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T2CON equ 012h ;# 
# 806 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPBUF equ 013h ;# 
# 813 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON equ 014h ;# 
# 883 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1 equ 015h ;# 
# 890 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1L equ 015h ;# 
# 897 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1H equ 016h ;# 
# 904 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP1CON equ 017h ;# 
# 962 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCSTA equ 018h ;# 
# 1057 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXREG equ 019h ;# 
# 1064 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCREG equ 01Ah ;# 
# 1071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2 equ 01Bh ;# 
# 1078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2L equ 01Bh ;# 
# 1085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2H equ 01Ch ;# 
# 1092 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP2CON equ 01Dh ;# 
# 1150 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESH equ 01Eh ;# 
# 1157 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON0 equ 01Fh ;# 
# 1253 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
OPTION_REG equ 081h ;# 
# 1323 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISA equ 085h ;# 
# 1373 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISB equ 086h ;# 
# 1435 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISC equ 087h ;# 
# 1497 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISD equ 088h ;# 
# 1559 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISE equ 089h ;# 
# 1616 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE1 equ 08Ch ;# 
# 1678 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE2 equ 08Dh ;# 
# 1711 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCON equ 08Eh ;# 
# 1745 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON2 equ 091h ;# 
# 1807 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PR2 equ 092h ;# 
# 1814 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPADD equ 093h ;# 
# 1821 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPSTAT equ 094h ;# 
# 1990 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXSTA equ 098h ;# 
# 2071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SPBRG equ 099h ;# 
# 2078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESL equ 09Eh ;# 
# 2085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON1 equ 09Fh ;# 
# 2138 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATA equ 010Ch ;# 
# 2145 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADR equ 010Dh ;# 
# 2152 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATH equ 010Eh ;# 
# 2159 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADRH equ 010Fh ;# 
# 2166 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON1 equ 018Ch ;# 
# 2211 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON2 equ 018Dh ;# 
# 55 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INDF equ 00h ;# 
# 62 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR0 equ 01h ;# 
# 69 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCL equ 02h ;# 
# 76 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
STATUS equ 03h ;# 
# 162 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
FSR equ 04h ;# 
# 169 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTA equ 05h ;# 
# 219 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTB equ 06h ;# 
# 281 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTC equ 07h ;# 
# 343 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTD equ 08h ;# 
# 405 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTE equ 09h ;# 
# 437 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCLATH equ 0Ah ;# 
# 457 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INTCON equ 0Bh ;# 
# 535 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR1 equ 0Ch ;# 
# 597 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR2 equ 0Dh ;# 
# 630 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1 equ 0Eh ;# 
# 637 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1L equ 0Eh ;# 
# 644 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1H equ 0Fh ;# 
# 651 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T1CON equ 010h ;# 
# 728 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR2 equ 011h ;# 
# 735 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T2CON equ 012h ;# 
# 806 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPBUF equ 013h ;# 
# 813 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON equ 014h ;# 
# 883 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1 equ 015h ;# 
# 890 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1L equ 015h ;# 
# 897 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1H equ 016h ;# 
# 904 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP1CON equ 017h ;# 
# 962 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCSTA equ 018h ;# 
# 1057 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXREG equ 019h ;# 
# 1064 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCREG equ 01Ah ;# 
# 1071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2 equ 01Bh ;# 
# 1078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2L equ 01Bh ;# 
# 1085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2H equ 01Ch ;# 
# 1092 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP2CON equ 01Dh ;# 
# 1150 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESH equ 01Eh ;# 
# 1157 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON0 equ 01Fh ;# 
# 1253 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
OPTION_REG equ 081h ;# 
# 1323 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISA equ 085h ;# 
# 1373 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISB equ 086h ;# 
# 1435 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISC equ 087h ;# 
# 1497 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISD equ 088h ;# 
# 1559 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISE equ 089h ;# 
# 1616 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE1 equ 08Ch ;# 
# 1678 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE2 equ 08Dh ;# 
# 1711 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCON equ 08Eh ;# 
# 1745 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON2 equ 091h ;# 
# 1807 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PR2 equ 092h ;# 
# 1814 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPADD equ 093h ;# 
# 1821 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPSTAT equ 094h ;# 
# 1990 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXSTA equ 098h ;# 
# 2071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SPBRG equ 099h ;# 
# 2078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESL equ 09Eh ;# 
# 2085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON1 equ 09Fh ;# 
# 2138 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATA equ 010Ch ;# 
# 2145 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADR equ 010Dh ;# 
# 2152 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATH equ 010Eh ;# 
# 2159 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADRH equ 010Fh ;# 
# 2166 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON1 equ 018Ch ;# 
# 2211 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON2 equ 018Dh ;# 
# 55 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INDF equ 00h ;# 
# 62 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR0 equ 01h ;# 
# 69 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCL equ 02h ;# 
# 76 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
STATUS equ 03h ;# 
# 162 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
FSR equ 04h ;# 
# 169 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTA equ 05h ;# 
# 219 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTB equ 06h ;# 
# 281 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTC equ 07h ;# 
# 343 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTD equ 08h ;# 
# 405 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PORTE equ 09h ;# 
# 437 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCLATH equ 0Ah ;# 
# 457 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
INTCON equ 0Bh ;# 
# 535 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR1 equ 0Ch ;# 
# 597 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIR2 equ 0Dh ;# 
# 630 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1 equ 0Eh ;# 
# 637 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1L equ 0Eh ;# 
# 644 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR1H equ 0Fh ;# 
# 651 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T1CON equ 010h ;# 
# 728 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TMR2 equ 011h ;# 
# 735 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
T2CON equ 012h ;# 
# 806 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPBUF equ 013h ;# 
# 813 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON equ 014h ;# 
# 883 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1 equ 015h ;# 
# 890 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1L equ 015h ;# 
# 897 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR1H equ 016h ;# 
# 904 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP1CON equ 017h ;# 
# 962 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCSTA equ 018h ;# 
# 1057 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXREG equ 019h ;# 
# 1064 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
RCREG equ 01Ah ;# 
# 1071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2 equ 01Bh ;# 
# 1078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2L equ 01Bh ;# 
# 1085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCPR2H equ 01Ch ;# 
# 1092 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
CCP2CON equ 01Dh ;# 
# 1150 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESH equ 01Eh ;# 
# 1157 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON0 equ 01Fh ;# 
# 1253 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
OPTION_REG equ 081h ;# 
# 1323 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISA equ 085h ;# 
# 1373 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISB equ 086h ;# 
# 1435 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISC equ 087h ;# 
# 1497 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISD equ 088h ;# 
# 1559 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TRISE equ 089h ;# 
# 1616 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE1 equ 08Ch ;# 
# 1678 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PIE2 equ 08Dh ;# 
# 1711 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PCON equ 08Eh ;# 
# 1745 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPCON2 equ 091h ;# 
# 1807 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
PR2 equ 092h ;# 
# 1814 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPADD equ 093h ;# 
# 1821 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SSPSTAT equ 094h ;# 
# 1990 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
TXSTA equ 098h ;# 
# 2071 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
SPBRG equ 099h ;# 
# 2078 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADRESL equ 09Eh ;# 
# 2085 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
ADCON1 equ 09Fh ;# 
# 2138 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATA equ 010Ch ;# 
# 2145 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADR equ 010Dh ;# 
# 2152 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEDATH equ 010Eh ;# 
# 2159 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EEADRH equ 010Fh ;# 
# 2166 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON1 equ 018Ch ;# 
# 2211 "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\include\proc\pic16f877.h"
EECON2 equ 018Dh ;# 
	debug_source C
	FNCALL	_main,_GPIO_Read
	FNCALL	_main,_GPIO_Write
	FNCALL	_main,_MCU_Config
	FNCALL	_main,_Step_Set
	FNCALL	_main,_Step_Start
	FNCALL	_main,_Step_Stop
	FNCALL	_Step_Start,_Delay_us
	FNCALL	_Step_Start,_GPIO_Read
	FNCALL	_Step_Start,_GPIO_Write
	FNCALL	_Step_Set,_GPIO_Write
	FNCALL	_Step_Set,___wmul
	FNCALL	_MCU_Config,_GPIO_Write
	FNCALL	_MCU_Config,_Reset_ADC_Register
	FNCALL	_MCU_Config,_Startup_Infor
	FNCALL	_MCU_Config,_Step_Stop
	FNCALL	_MCU_Config,_Timer2_Interrupt_Init
	FNCALL	_MCU_Config,_UART_BASE_Init
	FNCALL	_MCU_Config,_UART_WriteStr
	FNCALL	_UART_WriteStr,_UART_WriteChar
	FNCALL	_UART_WriteStr,_strlen
	FNCALL	_UART_BASE_Init,___aldiv
	FNCALL	_Step_Stop,_GPIO_Write
	FNCALL	_Startup_Infor,_GPIO_Write
	FNROOT	_main
	FNCALL	intlevel1,_Interrupts_Function
	global	intlevel1
	FNROOT	intlevel1
	global	_SW1
	global	_Motor_0
	global	_LED2
	global	_LED1
	global	_compressStepHandle
	global	_BUZZER
	global	_winchStepHandle
	global	_doorStepHandle
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	132

;initializer for _UltraSonic_1
	retlw	low(6|((0x0)<<8))
	retlw	04h
	retlw	low(6|((0x0)<<8))
	retlw	05h
	line	161

;initializer for _SW2
	retlw	low(5|((0x0)<<8))
	retlw	05h
	line	160

;initializer for _SW1
	retlw	low(5|((0x0)<<8))
	retlw	04h
	line	153

;initializer for _IR_Sensor_2
	retlw	low(5|((0x0)<<8))
	retlw	01h
	line	152

;initializer for _IR_Sensor_1
	retlw	low(5|((0x0)<<8))
	retlw	low(0)
	line	59

;initializer for _Motor_0
	retlw	low(6|((0x0)<<8))
	retlw	low(0)
	line	57

;initializer for _LED2
	retlw	low(6|((0x0)<<8))
	retlw	02h
	line	56

;initializer for _LED1
	retlw	low(6|((0x0)<<8))
	retlw	03h
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	62

;initializer for _disinfectionState
	retlw	02h
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	62

;initializer for _compressStepHandle
	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)
	retlw	low highword(0)
	retlw	high highword(0)

	retlw	01h
	retlw	02Ch
	retlw	01h

	retlw	low(8|((0x0)<<8))
	retlw	06h
	retlw	low(8|((0x0)<<8))
	retlw	05h
	retlw	low(8|((0x0)<<8))
	retlw	07h
	line	142

;initializer for _UltraSonic_2
	retlw	low(5|((0x0)<<8))
	retlw	02h
	retlw	low(5|((0x0)<<8))
	retlw	03h
	line	58

;initializer for _BUZZER
	retlw	low(6|((0x0)<<8))
	retlw	01h
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	line	84

;initializer for _winchStepHandle
	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)
	retlw	low highword(0)
	retlw	high highword(0)

	retlw	01h
	retlw	02Ch
	retlw	01h

	retlw	low(9|((0x0)<<8))
	retlw	02h
	retlw	low(7|((0x0)<<8))
	retlw	low(0)
	retlw	low(9|((0x0)<<8))
	retlw	01h
	line	73

;initializer for _doorStepHandle
	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)
	retlw	low highword(0)
	retlw	high highword(0)

	retlw	01h
	retlw	02Ch
	retlw	01h

	retlw	low(7|((0x0)<<8))
	retlw	03h
	retlw	low(8|((0x0)<<8))
	retlw	low(0)
	retlw	low(7|((0x0)<<8))
	retlw	02h
	global	_timeBuffer
	global	_timeReset_flag
	global	_timeSysTick
	global	_compressionState
	global	_ADCON0
_ADCON0	set	31
	global	_TXREG
_TXREG	set	25
	global	_RCSTA
_RCSTA	set	24
	global	_T2CON
_T2CON	set	18
	global	_TMR2
_TMR2	set	17
	global	_PIR1
_PIR1	set	12
	global	_INTCON
_INTCON	set	11
	global	_PORTE
_PORTE	set	9
	global	_PORTD
_PORTD	set	8
	global	_PORTC
_PORTC	set	7
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_T2CKPS1
_T2CKPS1	set	145
	global	_TMR2ON
_TMR2ON	set	146
	global	_TMR2IF
_TMR2IF	set	97
	global	_TXIF
_TXIF	set	100
	global	_ADCON1
_ADCON1	set	159
	global	_SPBRG
_SPBRG	set	153
	global	_TXSTA
_TXSTA	set	152
	global	_PIE1
_PIE1	set	140
	global	_TRISE
_TRISE	set	137
	global	_TRISD
_TRISD	set	136
	global	_TRISC
_TRISC	set	135
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_TRMT
_TRMT	set	1217
	global	_TMR2IE
_TMR2IE	set	1121
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	
STR_1:	
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	58	;':'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	75	;'K'
	retlw	10
	retlw	0
psect	strings
	
STR_2:	
	retlw	67	;'C'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	99	;'c'
	retlw	109	;'m'
	retlw	10
	retlw	0
	retlw	0
psect	strings
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "HS"
	config WDTE = "ON"
	config PWRTE = "OFF"
	config CP = "OFF"
	config BOREN = "OFF"
	config LVP = "OFF"
	config CPD = "OFF"
	config WRT = "OFF"
	file	"Build\main.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_distanceBuffer:
       ds      1

_trashDoorState:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
Compression_Run@F1170:
       ds      10

_timeBuffer:
       ds      4

_timeSysTickBuffer:
       ds      2

_timeReset_flag:
       ds      2

_timeSysTick:
       ds      2

_compressionState:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	132
_UltraSonic_1:
       ds      4

psect	dataBANK0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	161
_SW2:
       ds      2

psect	dataBANK0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	160
_SW1:
       ds      2

psect	dataBANK0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	153
_IR_Sensor_2:
       ds      2

psect	dataBANK0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	152
_IR_Sensor_1:
       ds      2

psect	dataBANK0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	59
_Motor_0:
       ds      2

psect	dataBANK0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	57
_LED2:
       ds      2

psect	dataBANK0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	56
_LED1:
       ds      2

psect	dataBANK0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	62
_disinfectionState:
       ds      1

psect	dataBANK0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	62
_compressStepHandle:
       ds      15

psect	dataBANK0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	142
_UltraSonic_2:
       ds      4

psect	dataBANK0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	58
_BUZZER:
       ds      2

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	84
_winchStepHandle:
       ds      15

psect	dataBANK1
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	73
_doorStepHandle:
       ds      15

	file	"Build\main.as"
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+30)
	movwf btemp-1
	movlw high(__pidataBANK1)
	movwf btemp
	movlw low(__pidataBANK1)
	movwf btemp+1
	movlw low(__pdataBANK1)
	movwf fsr
	fcall init_ram0
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK0
	movlw low(__pdataBANK0+40)
	movwf btemp-1
	movlw high(__pidataBANK0)
	movwf btemp
	movlw low(__pidataBANK0)
	movwf btemp+1
	movlw low(__pdataBANK0)
	movwf fsr
	fcall init_ram0
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+015h)
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_MCU_Config:	; 1 bytes @ 0x0
?_Step_Set:	; 1 bytes @ 0x0
?_Step_Start:	; 1 bytes @ 0x0
?_Step_Stop:	; 1 bytes @ 0x0
?_Timer2_Interrupt_Init:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_Reset_ADC_Register:	; 1 bytes @ 0x0
?_Interrupts_Function:	; 1 bytes @ 0x0
??_Interrupts_Function:	; 1 bytes @ 0x0
?_UART_WriteChar:	; 1 bytes @ 0x0
	ds	2
?_GPIO_Write:	; 1 bytes @ 0x2
?_GPIO_Read:	; 1 bytes @ 0x2
??_Timer2_Interrupt_Init:	; 1 bytes @ 0x2
??_Reset_ADC_Register:	; 1 bytes @ 0x2
?_Delay_us:	; 1 bytes @ 0x2
??_UART_WriteChar:	; 1 bytes @ 0x2
	global	?_strlen
?_strlen:	; 2 bytes @ 0x2
	global	?___wmul
?___wmul:	; 2 bytes @ 0x2
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x2
	global	GPIO_Write@Pin
GPIO_Write@Pin:	; 1 bytes @ 0x2
	global	GPIO_Read@Pin
GPIO_Read@Pin:	; 1 bytes @ 0x2
	global	UART_WriteChar@data
UART_WriteChar@data:	; 1 bytes @ 0x2
	global	Delay_us@time
Delay_us@time:	; 2 bytes @ 0x2
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x2
	global	strlen@s
strlen@s:	; 2 bytes @ 0x2
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x2
	ds	1
??_GPIO_Read:	; 1 bytes @ 0x3
	global	GPIO_Write@GPIO_State
GPIO_Write@GPIO_State:	; 1 bytes @ 0x3
	ds	1
??_GPIO_Write:	; 1 bytes @ 0x4
??_strlen:	; 1 bytes @ 0x4
??_Delay_us:	; 1 bytes @ 0x4
	global	GPIO_Read@GPIO_Port
GPIO_Read@GPIO_Port:	; 1 bytes @ 0x4
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x4
	global	strlen@cp
strlen@cp:	; 2 bytes @ 0x4
	ds	2
?_UART_WriteStr:	; 1 bytes @ 0x6
??___wmul:	; 1 bytes @ 0x6
	global	GPIO_Write@GPIO_Port
GPIO_Write@GPIO_Port:	; 1 bytes @ 0x6
	global	UART_WriteStr@data
UART_WriteStr@data:	; 2 bytes @ 0x6
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x6
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x6
	ds	1
??_Step_Stop:	; 1 bytes @ 0x7
?_Startup_Infor:	; 1 bytes @ 0x7
	global	Startup_Infor@index
Startup_Infor@index:	; 1 bytes @ 0x7
	global	Step_Start@stepHandle
Step_Start@stepHandle:	; 1 bytes @ 0x7
	ds	1
??_UART_WriteStr:	; 1 bytes @ 0x8
	global	Startup_Infor@GPIO
Startup_Infor@GPIO:	; 1 bytes @ 0x8
	global	Step_Set@stepHandle
Step_Set@stepHandle:	; 1 bytes @ 0x8
	global	Step_Stop@stepHandle
Step_Stop@stepHandle:	; 1 bytes @ 0x8
	ds	2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_Step_Set:	; 1 bytes @ 0x0
??_Step_Start:	; 1 bytes @ 0x0
??_Startup_Infor:	; 1 bytes @ 0x0
??___aldiv:	; 1 bytes @ 0x0
	global	UART_WriteStr@len
UART_WriteStr@len:	; 2 bytes @ 0x0
	ds	1
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x1
	ds	1
	global	UART_WriteStr@i
UART_WriteStr@i:	; 1 bytes @ 0x2
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x2
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x3
	ds	4
?_UART_BASE_Init:	; 1 bytes @ 0x7
	global	UART_BASE_Init@baud
UART_BASE_Init@baud:	; 4 bytes @ 0x7
	ds	4
??_UART_BASE_Init:	; 1 bytes @ 0xB
	ds	4
??_MCU_Config:	; 1 bytes @ 0xF
	ds	3
??_main:	; 1 bytes @ 0x12
	ds	1
;!
;!Data Sizes:
;!    Strings     20
;!    Constant    0
;!    Data        70
;!    BSS         23
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      12
;!    BANK0            80     19      80
;!    BANK1            80      0      30
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    Step_Start@stepHandle.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Step_Set@stepHandle.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Step_Stop@stepHandle.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    _doprnt$2	PTR PTR void  size(1) Largest target is 1
;!		 -> sprintf@ap(COMMON[1]), 
;!
;!    _doprnt$1	PTR const unsigned char  size(1) Largest target is 9
;!		 -> STR_2(CODE[9]), 
;!
;!    _doprnt$0	PTR struct __prbuf size(1) Largest target is 3
;!		 -> sprintf@pb(COMMON[2]), 
;!
;!    strlen@s	PTR const unsigned char  size(2) Largest target is 11
;!		 -> Compression_Run@TX(COMMON[10]), STR_1(CODE[11]), 
;!
;!    strlen@cp	PTR const unsigned char  size(2) Largest target is 11
;!		 -> Compression_Run@TX(COMMON[10]), STR_1(CODE[11]), 
;!
;!    S3756__prbuf$func	PTR FTN(unsigned char ,)void  size(1) Largest target is 1
;!		 -> Absolute function(), 
;!
;!    pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 1
;!		 -> Absolute function(), 
;!
;!    S3756__prbuf$ptr	PTR unsigned char  size(1) Largest target is 10
;!		 -> Compression_Run@TX(COMMON[10]), 
;!
;!    pb.ptr	PTR unsigned char  size(1) Largest target is 10
;!		 -> Compression_Run@TX(COMMON[10]), 
;!
;!    UltraSonicSensor_Read@sensor.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    UART_WriteStr@data	PTR const unsigned char  size(2) Largest target is 11
;!		 -> Compression_Run@TX(COMMON[10]), STR_1(CODE[11]), 
;!
;!    Step_Start@stepHandle.ENA_Pin.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Step_Start@stepHandle.PUL_Pin.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Step_Start@stepHandle.DIR_Pin.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Step_Start@stepHandle	PTR struct . size(1) Largest target is 18
;!		 -> winchStepHandle(BANK1[15]), doorStepHandle(BANK1[15]), compressStepHandle(BANK0[15]), 
;!
;!    Step_Stop@stepHandle.ENA_Pin.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Step_Stop@stepHandle.PUL_Pin.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Step_Stop@stepHandle.DIR_Pin.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Step_Stop@stepHandle	PTR struct . size(1) Largest target is 18
;!		 -> winchStepHandle(BANK1[15]), doorStepHandle(BANK1[15]), compressStepHandle(BANK0[15]), 
;!
;!    Step_Set@stepHandle.ENA_Pin.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Step_Set@stepHandle.PUL_Pin.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Step_Set@stepHandle.DIR_Pin.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Step_Set@stepHandle	PTR struct . size(1) Largest target is 18
;!		 -> winchStepHandle(BANK1[15]), doorStepHandle(BANK1[15]), compressStepHandle(BANK0[15]), 
;!
;!    Motor_Reverse_Start@motor_handle.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Motor_Forward_Start@motor_handle.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Motor_Stop@motor_handle.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    GPIO_Read@GPIO_Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    GPIO_Write@GPIO_Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Startup_Infor@GPIO.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Startup_Infor@GPIO	PTR struct . size(1) Largest target is 3
;!		 -> BUZZER(BANK0[2]), 
;!
;!    SW2.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    SW1.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    IR_Sensor_2.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    IR_Sensor_1.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    UltraSonic_2.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    UltraSonic_1.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    winchStepHandle.ENA_Pin.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    winchStepHandle.PUL_Pin.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    winchStepHandle.DIR_Pin.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    doorStepHandle.ENA_Pin.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    doorStepHandle.PUL_Pin.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    doorStepHandle.DIR_Pin.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    compressStepHandle.ENA_Pin.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    compressStepHandle.PUL_Pin.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    compressStepHandle.DIR_Pin.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Motor_0.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    BUZZER.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    LED2.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    S22$Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    LED1.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _Step_Start->_GPIO_Write
;!    _Step_Set->___wmul
;!    _MCU_Config->_UART_WriteStr
;!    _UART_WriteStr->_strlen
;!    _UART_BASE_Init->___aldiv
;!    _Step_Stop->_GPIO_Write
;!    _Startup_Infor->_GPIO_Write
;!
;!Critical Paths under _Interrupts_Function in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_MCU_Config
;!    _MCU_Config->_UART_BASE_Init
;!    _UART_BASE_Init->___aldiv
;!
;!Critical Paths under _Interrupts_Function in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _Interrupts_Function in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _Interrupts_Function in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _Interrupts_Function in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0   64102
;!                                             18 BANK0      1     1      0
;!                          _GPIO_Read
;!                         _GPIO_Write
;!                         _MCU_Config
;!                           _Step_Set
;!                         _Step_Start
;!                          _Step_Stop
;! ---------------------------------------------------------------------------------
;! (1) _Step_Start                                           5     5      0    9952
;!                                              7 COMMON     1     1      0
;!                                              0 BANK0      4     4      0
;!                           _Delay_us
;!                          _GPIO_Read
;!                         _GPIO_Write
;! ---------------------------------------------------------------------------------
;! (2) _GPIO_Read                                            3     2      1     880
;!                                              2 COMMON     3     2      1
;! ---------------------------------------------------------------------------------
;! (2) _Delay_us                                             2     0      2     151
;!                                              2 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! (1) _Step_Set                                             5     5      0    9159
;!                                              8 COMMON     1     1      0
;!                                              0 BANK0      4     4      0
;!                         _GPIO_Write
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     290
;!                                              2 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (1) _MCU_Config                                           3     3      0   26953
;!                                             15 BANK0      3     3      0
;!                         _GPIO_Write
;!                 _Reset_ADC_Register
;!                      _Startup_Infor
;!                          _Step_Stop
;!              _Timer2_Interrupt_Init
;!                     _UART_BASE_Init
;!                      _UART_WriteStr
;! ---------------------------------------------------------------------------------
;! (2) _UART_WriteStr                                        7     5      2     406
;!                                              6 COMMON     4     2      2
;!                                              0 BANK0      3     3      0
;!                     _UART_WriteChar
;!                             _strlen
;! ---------------------------------------------------------------------------------
;! (4) _strlen                                               4     2      2     154
;!                                              2 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (3) _UART_WriteChar                                       1     1      0      22
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _UART_BASE_Init                                       8     4      4     707
;!                                              7 BANK0      8     4      4
;!                            ___aldiv
;! ---------------------------------------------------------------------------------
;! (3) ___aldiv                                             15     7      8     599
;!                                              2 COMMON     8     0      8
;!                                              0 BANK0      7     7      0
;! ---------------------------------------------------------------------------------
;! (2) _Timer2_Interrupt_Init                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Step_Stop                                            2     2      0    8741
;!                                              7 COMMON     2     2      0
;!                         _GPIO_Write
;! ---------------------------------------------------------------------------------
;! (2) _Startup_Infor                                        5     4      1    8682
;!                                              7 COMMON     2     1      1
;!                                              0 BANK0      3     3      0
;!                         _GPIO_Write
;! ---------------------------------------------------------------------------------
;! (2) _GPIO_Write                                           5     3      2    8417
;!                                              2 COMMON     5     3      2
;! ---------------------------------------------------------------------------------
;! (2) _Reset_ADC_Register                                   1     1      0       0
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _Interrupts_Function                                  2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _GPIO_Read
;!   _GPIO_Write
;!   _MCU_Config
;!     _GPIO_Write
;!     _Reset_ADC_Register
;!     _Startup_Infor
;!       _GPIO_Write
;!     _Step_Stop
;!       _GPIO_Write
;!     _Timer2_Interrupt_Init
;!     _UART_BASE_Init
;!       ___aldiv
;!     _UART_WriteStr
;!       _UART_WriteChar
;!       _strlen
;!   _Step_Set
;!     _GPIO_Write
;!     ___wmul
;!   _Step_Start
;!     _Delay_us
;!     _GPIO_Read
;!     _GPIO_Write
;!   _Step_Stop
;!
;! _Interrupts_Function (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0      1E       7       37.5%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     13      50       5      100.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      A       C       1       85.7%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      7A      12        0.0%
;!ABS                  0      0      7A       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 6 in file ".\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_GPIO_Read
;;		_GPIO_Write
;;		_MCU_Config
;;		_Step_Set
;;		_Step_Start
;;		_Step_Stop
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	".\main.c"
	line	6
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	".\main.c"
	line	6
	
_main:	
;incstack = 0
	callstack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	8
	
l7442:	
	fcall	_MCU_Config
	line	9
	
l7444:	
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_Motor_0)+01h,w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(_Motor_0),w
	fcall	_GPIO_Write
	line	10
	
l7446:	
	movlw	090h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_compressStepHandle)
	movlw	01h
	movwf	((_compressStepHandle))+1
	line	11
	
l7448:	
	movlw	02Ch
	movwf	0+(_compressStepHandle)+07h
	movlw	01h
	movwf	(0+(_compressStepHandle)+07h)+1
	line	12
	
l7450:	
	movlw	(low(_compressStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Set
	line	15
	
l7452:	
	movlw	090h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_winchStepHandle)^080h
	movlw	01h
	movwf	((_winchStepHandle)^080h)+1
	line	16
	
l7454:	
	movlw	090h
	movwf	0+(_winchStepHandle)^080h+07h
	movlw	01h
	movwf	(0+(_winchStepHandle)^080h+07h)+1
	line	17
	
l7456:	
	movlw	(low(_winchStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Set
	line	30
	
l7458:	
	movf	0+(_SW1)+01h,w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(GPIO_Read@Pin)
	movf	(_SW1),w
	fcall	_GPIO_Read
	xorlw	01h
	skipz
	goto	u1221
	goto	u1220
u1221:
	goto	l7474
u1220:
	line	32
	
l7460:	
	clrf	0+(_compressStepHandle)+06h
	incf	0+(_compressStepHandle)+06h,f
	line	33
	
l7462:	
	movlw	090h
	movwf	(_compressStepHandle)
	movlw	01h
	movwf	((_compressStepHandle))+1
	line	34
	
l7464:	
	movlw	(low(_compressStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Set
	line	35
	
l7466:	
	movlw	(low(_compressStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Start
	line	38
	
l7468:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_winchStepHandle)^080h+06h
	incf	0+(_winchStepHandle)^080h+06h,f
	line	39
	movlw	090h
	movwf	(_winchStepHandle)^080h
	movlw	01h
	movwf	((_winchStepHandle)^080h)+1
	line	40
	
l7470:	
	movlw	(low(_winchStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Set
	line	41
	
l7472:	
	movlw	(low(_winchStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Start
	line	42
	goto	l7476
	line	58
	
l7474:	
	movlw	(low(_compressStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Stop
	line	59
	movlw	(low(_winchStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Stop
	line	62
	
l7476:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_timeReset_flag)),w
iorwf	((_timeReset_flag+1)),w
	btfsc	status,2
	goto	u1231
	goto	u1230
u1231:
	goto	l7458
u1230:
	line	64
	
l7478:	
	clrf	(_timeReset_flag)
	clrf	(_timeReset_flag+1)
	goto	l7458
	global	start
	ljmp	start
	callstack 0
	line	68
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Step_Start

;; *************** function _Step_Start *****************
;; Defined at:
;;		line 103 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
;; Parameters:    Size  Location     Type
;;  stepHandle      1    wreg     PTR struct .
;;		 -> winchStepHandle(15), doorStepHandle(15), compressStepHandle(15), 
;; Auto vars:     Size  Location     Type
;;  stepHandle      1    7[COMMON] PTR struct .
;;		 -> winchStepHandle(15), doorStepHandle(15), compressStepHandle(15), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 800/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         1       4       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_Delay_us
;;		_GPIO_Read
;;		_GPIO_Write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
	line	103
global __ptext1
__ptext1:	;psect for function _Step_Start
psect	text1
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
	line	103
	
_Step_Start:	
;incstack = 0
	callstack 5
; Regs used in _Step_Start: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(Step_Start@stepHandle)
	line	105
	
l7378:	
	movf	(Step_Start@stepHandle),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Step_Start+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_Step_Start+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??_Step_Start+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??_Step_Start+0)+0+3
	movf	3+(??_Step_Start+0)+0,w
	iorwf	2+(??_Step_Start+0)+0,w
	iorwf	1+(??_Step_Start+0)+0,w
	iorwf	0+(??_Step_Start+0)+0,w
	skipnz
	goto	u1141
	goto	u1140
u1141:
	goto	l3037
u1140:
	line	107
	
l7380:	
	movf	(Step_Start@stepHandle),w
	addlw	0Eh
	movwf	fsr0
	movf	indf,w
	movwf	(??_Step_Start+0)+0
	movf	(??_Step_Start+0)+0,w
	movwf	(GPIO_Read@Pin)
	movf	(Step_Start@stepHandle),w
	addlw	0Dh
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Read
	xorlw	01h
	skipz
	goto	u1151
	goto	u1150
u1151:
	goto	l3036
u1150:
	line	109
	
l7382:	
	movf	(Step_Start@stepHandle),w
	addlw	0Eh
	movwf	fsr0
	movf	indf,w
	movwf	(??_Step_Start+0)+0
	movf	(??_Step_Start+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(Step_Start@stepHandle),w
	addlw	0Dh
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	110
	
l3036:	
	line	111
	movf	(Step_Start@stepHandle),w
	addlw	0Ch
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_Step_Start+0)+0
	movf	(??_Step_Start+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(Step_Start@stepHandle),w
	addlw	0Bh
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	112
	movf	(Step_Start@stepHandle),w
	addlw	07h
	movwf	fsr0
	movf	indf,w
	movwf	(Delay_us@time)
	incf	fsr0,f
	movf	indf,w
	movwf	(Delay_us@time+1)
	fcall	_Delay_us
	line	113
	movf	(Step_Start@stepHandle),w
	addlw	0Ch
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Step_Start+0)+0
	movf	(??_Step_Start+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(Step_Start@stepHandle),w
	addlw	0Bh
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	114
	movf	(Step_Start@stepHandle),w
	addlw	07h
	movwf	fsr0
	movf	indf,w
	movwf	(Delay_us@time)
	incf	fsr0,f
	movf	indf,w
	movwf	(Delay_us@time+1)
	fcall	_Delay_us
	line	115
	
l7384:	
	movf	(Step_Start@stepHandle),w
	addlw	02h
	movwf	fsr0
	movlw	01h
	bcf	status, 7	;select IRP bank0
	subwf	indf,f
	incf	fsr0
	movlw	0
	skipc
movlw 1
	subwf	indf,f
	incf	fsr0
	movlw	0
	skipc
movlw 1
	subwf	indf,f
	incf	fsr0
	movlw	0
	skipc
movlw 1
	subwf	indf,f
	movlw	3
	subwf	fsr0
	line	117
	
l3037:	
	return
	callstack 0
GLOBAL	__end_of_Step_Start
	__end_of_Step_Start:
	signat	_Step_Start,4217
	global	_GPIO_Read

;; *************** function _GPIO_Read *****************
;; Defined at:
;;		line 40 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\GPIO.c"
;; Parameters:    Size  Location     Type
;;  GPIO_Port       1    wreg     PTR volatile unsigned ch
;;		 -> PORTA(1), PORTE(1), PORTC(1), PORTD(1), 
;;		 -> PORTB(1), 
;;  Pin             1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  GPIO_Port       1    4[COMMON] PTR volatile unsigned ch
;;		 -> PORTA(1), PORTE(1), PORTC(1), PORTD(1), 
;;		 -> PORTB(1), 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Step_Start
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\GPIO.c"
	line	40
global __ptext2
__ptext2:	;psect for function _GPIO_Read
psect	text2
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\GPIO.c"
	line	40
	
_GPIO_Read:	
;incstack = 0
	callstack 5
; Regs used in _GPIO_Read: [wreg-fsr0h+status,2+status,0]
	movwf	(GPIO_Read@GPIO_Port)
	line	42
	
l7052:	
	movf	(GPIO_Read@GPIO_Port),w
	movwf	fsr0
	movlw	low(01h)
	movwf	(??_GPIO_Read+0)+0
	incf	(GPIO_Read@Pin),w
	goto	u674
u675:
	clrc
	rlf	(??_GPIO_Read+0)+0,f
u674:
	addlw	-1
	skipz
	goto	u675
	movf	0+(??_GPIO_Read+0)+0,w
	andwf	indf,w
	btfsc	status,2
	goto	u681
	goto	u680
u681:
	goto	l7060
u680:
	line	44
	
l7054:	
	movlw	low(01h)
	goto	l2413
	line	48
	
l7060:	
	movlw	low(0)
	line	51
	
l2413:	
	return
	callstack 0
GLOBAL	__end_of_GPIO_Read
	__end_of_GPIO_Read:
	signat	_GPIO_Read,8313
	global	_Delay_us

;; *************** function _Delay_us *****************
;; Defined at:
;;		line 10 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
;; Parameters:    Size  Location     Type
;;  time            2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Step_Start
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
	line	10
global __ptext3
__ptext3:	;psect for function _Delay_us
psect	text3
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
	line	10
	
_Delay_us:	
;incstack = 0
	callstack 5
; Regs used in _Delay_us: [wreg+status,2+status,0]
	line	12
	
l7112:	
	goto	l7118
	line	14
	
l7114:	
	movlw	01h
	subwf	(Delay_us@time),f
	movlw	0
	skipc
	decf	(Delay_us@time+1),f
	subwf	(Delay_us@time+1),f
	line	15
	
l7116:	
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop
	asmopt pop

	line	12
	
l7118:	
	movf	((Delay_us@time)),w
iorwf	((Delay_us@time+1)),w
	btfss	status,2
	goto	u721
	goto	u720
u721:
	goto	l7114
u720:
	line	17
	
l3013:	
	return
	callstack 0
GLOBAL	__end_of_Delay_us
	__end_of_Delay_us:
	signat	_Delay_us,4217
	global	_Step_Set

;; *************** function _Step_Set *****************
;; Defined at:
;;		line 91 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
;; Parameters:    Size  Location     Type
;;  stepHandle      1    wreg     PTR struct .
;;		 -> winchStepHandle(15), doorStepHandle(15), compressStepHandle(15), 
;; Auto vars:     Size  Location     Type
;;  stepHandle      1    8[COMMON] PTR struct .
;;		 -> winchStepHandle(15), doorStepHandle(15), compressStepHandle(15), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : A00/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         1       4       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_GPIO_Write
;;		___wmul
;; This function is called by:
;;		_main
;;		_Compression_Run
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	91
global __ptext4
__ptext4:	;psect for function _Step_Set
psect	text4
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
	line	91
	
_Step_Set:	
;incstack = 0
	callstack 5
; Regs used in _Step_Set: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(Step_Set@stepHandle)
	line	93
	
l7376:	
	movf	(Step_Set@stepHandle),w
	addlw	0Ah
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_Step_Set+0)+0
	movf	(??_Step_Set+0)+0,w
	movwf	(GPIO_Write@Pin)
	movf	(Step_Set@stepHandle),w
	addlw	06h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Step_Set+1)+0
	movf	(??_Step_Set+1)+0,w
	movwf	(GPIO_Write@GPIO_State)
	movf	(Step_Set@stepHandle),w
	addlw	09h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	94
	movf	(Step_Set@stepHandle),w
	movwf	fsr0
	movf	indf,w
	movwf	(___wmul@multiplier)
	incf	fsr0,f
	movf	indf,w
	movwf	(___wmul@multiplier+1)
	movlw	040h
	movwf	(___wmul@multiplicand)
	movlw	06h
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	((??_Step_Set+0)+0)
	movf	(1+(?___wmul)),w
	movwf	((??_Step_Set+0)+0+1)
	clrf	((??_Step_Set+0)+0+2)
	clrf	((??_Step_Set+0)+0+3)
	movf	(Step_Set@stepHandle),w
	addlw	02h
	movwf	fsr0
	movf	0+(??_Step_Set+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_Step_Set+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	2+(??_Step_Set+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	3+(??_Step_Set+0)+0,w
	movwf	indf
	line	95
	
l3029:	
	return
	callstack 0
GLOBAL	__end_of_Step_Set
	__end_of_Step_Set:
	signat	_Step_Set,4217
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    2[COMMON] unsigned int 
;;  multiplicand    2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    6[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/100
;;		On exit  : B00/100
;;		Unchanged: B00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Step_Set
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\Umul16.c"
	line	15
global __ptext5
__ptext5:	;psect for function ___wmul
psect	text5
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\Umul16.c"
	line	15
	
___wmul:	
;incstack = 0
	callstack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l7346:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	45
	
l7348:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1101
	goto	u1100
u1101:
	goto	l6272
u1100:
	line	46
	
l7350:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l6272:	
	line	47
	movlw	01h
	
u1115:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u1115
	line	48
	
l7352:	
	movlw	01h
	
u1125:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u1125
	line	49
	
l7354:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u1131
	goto	u1130
u1131:
	goto	l7348
u1130:
	line	52
	
l7356:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	53
	
l6274:	
	return
	callstack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_MCU_Config

;; *************** function _MCU_Config *****************
;; Defined at:
;;		line 37 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_GPIO_Write
;;		_Reset_ADC_Register
;;		_Startup_Infor
;;		_Step_Stop
;;		_Timer2_Interrupt_Init
;;		_UART_BASE_Init
;;		_UART_WriteStr
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
	line	37
global __ptext6
__ptext6:	;psect for function _MCU_Config
psect	text6
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
	line	37
	
_MCU_Config:	
;incstack = 0
	callstack 3
; Regs used in _MCU_Config: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	43
	
l7360:	
	movlw	low(05h)
	movwf	(??_MCU_Config+0)+0
	movf	(??_MCU_Config+0)+0,w
	movwf	(Startup_Infor@index)
	movlw	(low(_BUZZER|((0x0)<<8)))&0ffh
	fcall	_Startup_Infor
	line	46
	
l7362:	
	fcall	_Timer2_Interrupt_Init
	line	49
	
l7364:	
	fcall	_Reset_ADC_Register
	line	52
	
l7366:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_BASE_Init@baud+3)
	movlw	0
	movwf	(UART_BASE_Init@baud+2)
	movlw	025h
	movwf	(UART_BASE_Init@baud+1)
	movlw	080h
	movwf	(UART_BASE_Init@baud)

	fcall	_UART_BASE_Init
	line	53
	
l7368:	
	asmopt push
asmopt off
movlw  13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_MCU_Config+0)+0+2)
movlw	175
movwf	((??_MCU_Config+0)+0+1)
	movlw	181
movwf	((??_MCU_Config+0)+0)
	u1247:
decfsz	((??_MCU_Config+0)+0),f
	goto	u1247
	decfsz	((??_MCU_Config+0)+0+1),f
	goto	u1247
	decfsz	((??_MCU_Config+0)+0+2),f
	goto	u1247
	nop2
asmopt pop

	line	58
	
l7370:	
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	movwf	(UART_WriteStr@data)
	movlw	80h
	movwf	(UART_WriteStr@data+1)
	fcall	_UART_WriteStr
	line	59
	
l7372:	
	movf	0+(_LED2)+01h,w
	movwf	(??_MCU_Config+0)+0
	movf	(??_MCU_Config+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(_LED2),w
	fcall	_GPIO_Write
	line	61
	
l7374:	
	movlw	(low(_compressStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Stop
	line	62
	
l1811:	
	return
	callstack 0
GLOBAL	__end_of_MCU_Config
	__end_of_MCU_Config:
	signat	_MCU_Config,89
	global	_UART_WriteStr

;; *************** function _UART_WriteStr *****************
;; Defined at:
;;		line 37 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UART.c"
;; Parameters:    Size  Location     Type
;;  data            2    6[COMMON] PTR const unsigned char 
;;		 -> Compression_Run@TX(10), STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  len             2    0[BANK0 ] unsigned int 
;;  i               1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       3       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_UART_WriteChar
;;		_strlen
;; This function is called by:
;;		_MCU_Config
;;		_Compression_Run
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UART.c"
	line	37
global __ptext7
__ptext7:	;psect for function _UART_WriteStr
psect	text7
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UART.c"
	line	37
	
_UART_WriteStr:	
;incstack = 0
	callstack 3
; Regs used in _UART_WriteStr: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	39
	
l7100:	
	line	40
	
l7102:	
		movf	(UART_WriteStr@data),w
	movwf	(strlen@s)
movf	(UART_WriteStr@data+1),w
movwf	(strlen@s+1)

	fcall	_strlen
	movf	(1+(?_strlen)),w
	movwf	(UART_WriteStr@len+1)
	movf	(0+(?_strlen)),w
	movwf	(UART_WriteStr@len)
	line	41
	
l7104:	
	clrf	(UART_WriteStr@i)
	goto	l7110
	line	43
	
l7106:	
	movf	(UART_WriteStr@i),w
	addwf	(UART_WriteStr@data),w
	movwf	fsr0
	movf	(UART_WriteStr@data+1),w
	skipnc
	incf	(UART_WriteStr@data+1),w
	movwf	btemp+1
	fcall	stringtab
	fcall	_UART_WriteChar
	line	41
	
l7108:	
	movlw	low(01h)
	movwf	(??_UART_WriteStr+0)+0
	movf	(??_UART_WriteStr+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	(UART_WriteStr@i),f
	
l7110:	
	movf	(UART_WriteStr@i),w
	movwf	(??_UART_WriteStr+0)+0
	clrf	(??_UART_WriteStr+0)+0+1
	movf	1+(??_UART_WriteStr+0)+0,w
	subwf	(UART_WriteStr@len+1),w
	skipz
	goto	u715
	movf	0+(??_UART_WriteStr+0)+0,w
	subwf	(UART_WriteStr@len),w
u715:
	skipnc
	goto	u711
	goto	u710
u711:
	goto	l7106
u710:
	line	45
	
l5586:	
	return
	callstack 0
GLOBAL	__end_of_UART_WriteStr
	__end_of_UART_WriteStr:
	signat	_UART_WriteStr,4217
	global	_strlen

;; *************** function _strlen *****************
;; Defined at:
;;		line 4 in file "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\strlen.c"
;; Parameters:    Size  Location     Type
;;  s               2    2[COMMON] PTR const unsigned char 
;;		 -> Compression_Run@TX(10), STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  cp              2    4[COMMON] PTR const unsigned char 
;;		 -> Compression_Run@TX(10), STR_1(11), 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 2
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_WriteStr
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=2
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\strlen.c"
	line	4
global __ptext8
__ptext8:	;psect for function _strlen
psect	text8
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\strlen.c"
	line	4
	
_strlen:	
;incstack = 0
	callstack 3
; Regs used in _strlen: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	line	8
	
l7002:	
		movf	(strlen@s),w
	movwf	(strlen@cp)
movf	(strlen@s+1),w
movwf	(strlen@cp+1)

	line	9
	goto	l7006
	line	10
	
l7004:	
	movlw	01h
	addwf	(strlen@cp),f
	skipnc
	incf	(strlen@cp+1),f
	movlw	0
	addwf	(strlen@cp+1),f
	line	9
	
l7006:	
	movf	(strlen@cp+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(strlen@cp),w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipz
	goto	u561
	goto	u560
u561:
	goto	l7004
u560:
	line	12
	
l7008:	
	movf	(strlen@s),w
	subwf	(strlen@cp),w
	movwf	(?_strlen)
	movf	(strlen@s+1),w
	skipc
	incf	(strlen@s+1),w
	subwf	(strlen@cp+1),w
	movwf	1+(?_strlen)
	line	13
	
l6708:	
	return
	callstack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
	signat	_strlen,4218
	global	_UART_WriteChar

;; *************** function _UART_WriteChar *****************
;; Defined at:
;;		line 21 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UART.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_WriteStr
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UART.c"
	line	21
global __ptext9
__ptext9:	;psect for function _UART_WriteChar
psect	text9
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UART.c"
	line	21
	
_UART_WriteChar:	
;incstack = 0
	callstack 4
; Regs used in _UART_WriteChar: [wreg]
	movwf	(UART_WriteChar@data)
	line	23
	
l7000:	
	movf	(UART_WriteChar@data),w
	movwf	(25)	;volatile
	line	24
	
l5568:	
	btfss	(100/8),(100)&7	;volatile
	goto	u541
	goto	u540
u541:
	goto	l5568
u540:
	
l5570:	
	line	25
	bcf	(100/8),(100)&7	;volatile
	line	26
	
l5571:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u551
	goto	u550
u551:
	goto	l5571
u550:
	line	27
	
l5574:	
	return
	callstack 0
GLOBAL	__end_of_UART_WriteChar
	__end_of_UART_WriteChar:
	signat	_UART_WriteChar,4217
	global	_UART_BASE_Init

;; *************** function _UART_BASE_Init *****************
;; Defined at:
;;		line 13 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UART.c"
;; Parameters:    Size  Location     Type
;;  baud            4    7[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_MCU_Config
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext10
__ptext10:	;psect for function _UART_BASE_Init
psect	text10
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UART.c"
	line	13
	
_UART_BASE_Init:	
;incstack = 0
	callstack 4
; Regs used in _UART_BASE_Init: [wreg+status,2+status,0+pclath+cstack]
	line	15
	
l7342:	
	movlw	low(080h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(135)^080h	;volatile
	line	16
	movlw	low(024h)
	movwf	(152)^080h	;volatile
	line	17
	movlw	low(090h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	18
	
l7344:	
	movf	(UART_BASE_Init@baud),w
	movwf	(??_UART_BASE_Init+0)+0
	movf	(UART_BASE_Init@baud+1),w
	movwf	((??_UART_BASE_Init+0)+0+1)
	movf	(UART_BASE_Init@baud+2),w
	movwf	((??_UART_BASE_Init+0)+0+2)
	movf	(UART_BASE_Init@baud+3),w
	movwf	((??_UART_BASE_Init+0)+0+3)
	movlw	04h
u1095:
	clrc
	rlf	(??_UART_BASE_Init+0)+0,f
	rlf	(??_UART_BASE_Init+0)+1,f
	rlf	(??_UART_BASE_Init+0)+2,f
	rlf	(??_UART_BASE_Init+0)+3,f
u1090:
	addlw	-1
	skipz
	goto	u1095
	movf	3+(??_UART_BASE_Init+0)+0,w
	movwf	(___aldiv@divisor+3)
	movf	2+(??_UART_BASE_Init+0)+0,w
	movwf	(___aldiv@divisor+2)
	movf	1+(??_UART_BASE_Init+0)+0,w
	movwf	(___aldiv@divisor+1)
	movf	0+(??_UART_BASE_Init+0)+0,w
	movwf	(___aldiv@divisor)

	movlw	01h
	movwf	(___aldiv@dividend+3)
	movlw	031h
	movwf	(___aldiv@dividend+2)
	movlw	02Dh
	movwf	(___aldiv@dividend+1)
	movlw	0
	movwf	(___aldiv@dividend)

	fcall	___aldiv
	movf	(0+(?___aldiv)),w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	movwf	(153)^080h	;volatile
	line	19
	
l5565:	
	return
	callstack 0
GLOBAL	__end_of_UART_BASE_Init
	__end_of_UART_BASE_Init:
	signat	_UART_BASE_Init,4217
	global	___aldiv

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 5 in file "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    2[COMMON] long 
;;  dividend        4    6[COMMON] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    3[BANK0 ] long 
;;  sign            1    2[BANK0 ] unsigned char 
;;  counter         1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    2[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         8       7       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_BASE_Init
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\aldiv.c"
	line	5
global __ptext11
__ptext11:	;psect for function ___aldiv
psect	text11
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\aldiv.c"
	line	5
	
___aldiv:	
;incstack = 0
	callstack 4
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	13
	
l7288:	
	clrf	(___aldiv@sign)
	line	14
	
l7290:	
	btfss	(___aldiv@divisor+3),7
	goto	u981
	goto	u980
u981:
	goto	l6343
u980:
	line	15
	
l7292:	
	comf	(___aldiv@divisor),f
	comf	(___aldiv@divisor+1),f
	comf	(___aldiv@divisor+2),f
	comf	(___aldiv@divisor+3),f
	incf	(___aldiv@divisor),f
	skipnz
	incf	(___aldiv@divisor+1),f
	skipnz
	incf	(___aldiv@divisor+2),f
	skipnz
	incf	(___aldiv@divisor+3),f
	line	16
	clrf	(___aldiv@sign)
	incf	(___aldiv@sign),f
	line	17
	
l6343:	
	line	18
	btfss	(___aldiv@dividend+3),7
	goto	u991
	goto	u990
u991:
	goto	l7298
u990:
	line	19
	
l7294:	
	comf	(___aldiv@dividend),f
	comf	(___aldiv@dividend+1),f
	comf	(___aldiv@dividend+2),f
	comf	(___aldiv@dividend+3),f
	incf	(___aldiv@dividend),f
	skipnz
	incf	(___aldiv@dividend+1),f
	skipnz
	incf	(___aldiv@dividend+2),f
	skipnz
	incf	(___aldiv@dividend+3),f
	line	20
	
l7296:	
	movlw	low(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	xorwf	(___aldiv@sign),f
	line	22
	
l7298:	
	movlw	high highword(0)
	movwf	(___aldiv@quotient+3)
	movlw	low highword(0)
	movwf	(___aldiv@quotient+2)
	movlw	high(0)
	movwf	(___aldiv@quotient+1)
	movlw	low(0)
	movwf	(___aldiv@quotient)

	line	23
	
l7300:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u1001
	goto	u1000
u1001:
	goto	l7320
u1000:
	line	24
	
l7302:	
	clrf	(___aldiv@counter)
	incf	(___aldiv@counter),f
	line	25
	goto	l7306
	line	26
	
l7304:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u1015:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u1015
	line	27
	movlw	low(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	addwf	(___aldiv@counter),f
	line	25
	
l7306:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u1021
	goto	u1020
u1021:
	goto	l7304
u1020:
	line	30
	
l7308:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u1035:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0)+0
	goto	u1035
	line	31
	
l7310:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u1045
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u1045
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u1045
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u1045:
	skipc
	goto	u1041
	goto	u1040
u1041:
	goto	l7316
u1040:
	line	32
	
l7312:	
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),f
	movf	(___aldiv@divisor+1),w
	skipc
	incfsz	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),f
	movf	(___aldiv@divisor+2),w
	skipc
	incfsz	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),f
	movf	(___aldiv@divisor+3),w
	skipc
	incfsz	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),f
	line	33
	
l7314:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	line	35
	
l7316:	
	movlw	01h
u1055:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u1055

	line	36
	
l7318:	
	movlw	01h
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u1061
	goto	u1060
u1061:
	goto	l7308
u1060:
	line	38
	
l7320:	
	movf	((___aldiv@sign)),w
	btfsc	status,2
	goto	u1071
	goto	u1070
u1071:
	goto	l7324
u1070:
	line	39
	
l7322:	
	comf	(___aldiv@quotient),f
	comf	(___aldiv@quotient+1),f
	comf	(___aldiv@quotient+2),f
	comf	(___aldiv@quotient+3),f
	incf	(___aldiv@quotient),f
	skipnz
	incf	(___aldiv@quotient+1),f
	skipnz
	incf	(___aldiv@quotient+2),f
	skipnz
	incf	(___aldiv@quotient+3),f
	line	40
	
l7324:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	line	41
	
l6353:	
	return
	callstack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_Timer2_Interrupt_Init

;; *************** function _Timer2_Interrupt_Init *****************
;; Defined at:
;;		line 220 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MCU_Config
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Timer.c"
	line	220
global __ptext12
__ptext12:	;psect for function _Timer2_Interrupt_Init
psect	text12
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Timer.c"
	line	220
	
_Timer2_Interrupt_Init:	
;incstack = 0
	callstack 5
; Regs used in _Timer2_Interrupt_Init: [status,2]
	line	222
	
l7082:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(18)	;volatile
	line	228
	
l7084:	
	bsf	(146/8),(146)&7	;volatile
	line	235
	
l7086:	
	bsf	(145/8),(145)&7	;volatile
	line	243
	
l7088:	
	bsf	(11)+(7/8),(7)&7	;volatile
	line	249
	
l7090:	
	bsf	(11)+(6/8),(6)&7	;volatile
	line	255
	
l7092:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	261
	
l7094:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	line	262
	
l4951:	
	return
	callstack 0
GLOBAL	__end_of_Timer2_Interrupt_Init
	__end_of_Timer2_Interrupt_Init:
	signat	_Timer2_Interrupt_Init,89
	global	_Step_Stop

;; *************** function _Step_Stop *****************
;; Defined at:
;;		line 97 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
;; Parameters:    Size  Location     Type
;;  stepHandle      1    wreg     PTR struct .
;;		 -> winchStepHandle(15), doorStepHandle(15), compressStepHandle(15), 
;; Auto vars:     Size  Location     Type
;;  stepHandle      1    8[COMMON] PTR struct .
;;		 -> winchStepHandle(15), doorStepHandle(15), compressStepHandle(15), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : A00/0
;;		On exit  : B00/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_GPIO_Write
;; This function is called by:
;;		_main
;;		_MCU_Config
;;		_Compression_Run
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
	line	97
global __ptext13
__ptext13:	;psect for function _Step_Stop
psect	text13
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
	line	97
	
_Step_Stop:	
;incstack = 0
	callstack 5
; Regs used in _Step_Stop: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(Step_Stop@stepHandle)
	line	99
	
l7328:	
	movlw	low(02h)
	addwf	(Step_Stop@stepHandle),w
	movwf	(??_Step_Stop+0)+0
	movf	0+(??_Step_Stop+0)+0,w
	movwf	fsr0
	
	clrf	indf
	incf	fsr0,f
	clrf	indf
	incf	fsr0,f
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	100
	
l7330:	
	movf	(Step_Stop@stepHandle),w
	addlw	0Eh
	movwf	fsr0
	movf	indf,w
	movwf	(??_Step_Stop+0)+0
	movf	(??_Step_Stop+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(Step_Stop@stepHandle),w
	addlw	0Dh
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	101
	
l3032:	
	return
	callstack 0
GLOBAL	__end_of_Step_Stop
	__end_of_Step_Stop:
	signat	_Step_Stop,4217
	global	_Startup_Infor

;; *************** function _Startup_Infor *****************
;; Defined at:
;;		line 17 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
;; Parameters:    Size  Location     Type
;;  GPIO            1    wreg     PTR struct .
;;		 -> BUZZER(2), 
;;  index           1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  GPIO            1    8[COMMON] PTR struct .
;;		 -> BUZZER(2), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         2       3       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_GPIO_Write
;; This function is called by:
;;		_MCU_Config
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
	line	17
global __ptext14
__ptext14:	;psect for function _Startup_Infor
psect	text14
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
	line	17
	
_Startup_Infor:	
;incstack = 0
	callstack 4
; Regs used in _Startup_Infor: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(Startup_Infor@GPIO)
	line	19
	
l7332:	
	goto	l7340
	line	21
	
l7334:	
	incf	(Startup_Infor@GPIO),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Startup_Infor+0)+0
	movf	(??_Startup_Infor+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(Startup_Infor@GPIO),w
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	22
	
l7336:	
	asmopt push
asmopt off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_Startup_Infor+0)+0+2)
movlw	138
movwf	((??_Startup_Infor+0)+0+1)
	movlw	85
movwf	((??_Startup_Infor+0)+0)
	u1257:
decfsz	((??_Startup_Infor+0)+0),f
	goto	u1257
	decfsz	((??_Startup_Infor+0)+0+1),f
	goto	u1257
	decfsz	((??_Startup_Infor+0)+0+2),f
	goto	u1257
asmopt pop

	line	23
	
l7338:	
	incf	(Startup_Infor@GPIO),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Startup_Infor+0)+0
	movf	(??_Startup_Infor+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(Startup_Infor@GPIO),w
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	24
	asmopt push
asmopt off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_Startup_Infor+0)+0+2)
movlw	138
movwf	((??_Startup_Infor+0)+0+1)
	movlw	85
movwf	((??_Startup_Infor+0)+0)
	u1267:
decfsz	((??_Startup_Infor+0)+0),f
	goto	u1267
	decfsz	((??_Startup_Infor+0)+0+1),f
	goto	u1267
	decfsz	((??_Startup_Infor+0)+0+2),f
	goto	u1267
asmopt pop

	line	19
	
l7340:	
	movlw	01h
	subwf	(Startup_Infor@index),f
		incf	(((Startup_Infor@index))),w
	btfss	status,2
	goto	u1081
	goto	u1080
u1081:
	goto	l7334
u1080:
	line	26
	
l1805:	
	return
	callstack 0
GLOBAL	__end_of_Startup_Infor
	__end_of_Startup_Infor:
	signat	_Startup_Infor,8313
	global	_GPIO_Write

;; *************** function _GPIO_Write *****************
;; Defined at:
;;		line 4 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\GPIO.c"
;; Parameters:    Size  Location     Type
;;  GPIO_Port       1    wreg     PTR volatile unsigned ch
;;		 -> PORTA(1), PORTE(1), PORTC(1), PORTD(1), 
;;		 -> PORTB(1), 
;;  Pin             1    2[COMMON] unsigned char 
;;  GPIO_State      1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  GPIO_Port       1    6[COMMON] PTR volatile unsigned ch
;;		 -> PORTA(1), PORTE(1), PORTC(1), PORTD(1), 
;;		 -> PORTB(1), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : B00/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Startup_Infor
;;		_MCU_Config
;;		_Step_Set
;;		_Step_Stop
;;		_Step_Start
;;		_Compression_Run
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\GPIO.c"
	line	4
global __ptext15
__ptext15:	;psect for function _GPIO_Write
psect	text15
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\GPIO.c"
	line	4
	
_GPIO_Write:	
;incstack = 0
	callstack 5
; Regs used in _GPIO_Write: [wreg-fsr0h+status,2+status,0]
	movwf	(GPIO_Write@GPIO_Port)
	line	6
	
l7260:	
	movf	(GPIO_Write@GPIO_Port),w
	xorlw	low(5|((0x0)<<8))&0ffh
	skipz
	goto	u871
	goto	u870
u871:
	goto	l7264
u870:
	line	8
	
l7262:	
	movlw	low(01h)
	movwf	(??_GPIO_Write+0)+0
	incf	(GPIO_Write@Pin),w
	goto	u884
u885:
	clrc
	rlf	(??_GPIO_Write+0)+0,f
u884:
	addlw	-1
	skipz
	goto	u885
	movf	0+(??_GPIO_Write+0)+0,w
	xorlw	0ffh
	movwf	(??_GPIO_Write+1)+0
	movf	(??_GPIO_Write+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(133)^080h,f	;volatile
	line	9
	goto	l7286
	line	10
	
l7264:	
	movf	(GPIO_Write@GPIO_Port),w
	xorlw	low(6|((0x0)<<8))&0ffh
	skipz
	goto	u891
	goto	u890
u891:
	goto	l7268
u890:
	line	12
	
l7266:	
	movlw	low(01h)
	movwf	(??_GPIO_Write+0)+0
	incf	(GPIO_Write@Pin),w
	goto	u904
u905:
	clrc
	rlf	(??_GPIO_Write+0)+0,f
u904:
	addlw	-1
	skipz
	goto	u905
	movf	0+(??_GPIO_Write+0)+0,w
	xorlw	0ffh
	movwf	(??_GPIO_Write+1)+0
	movf	(??_GPIO_Write+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	13
	goto	l7286
	line	14
	
l7268:	
	movf	(GPIO_Write@GPIO_Port),w
	xorlw	low(7|((0x0)<<8))&0ffh
	skipz
	goto	u911
	goto	u910
u911:
	goto	l7272
u910:
	line	16
	
l7270:	
	movlw	low(01h)
	movwf	(??_GPIO_Write+0)+0
	incf	(GPIO_Write@Pin),w
	goto	u924
u925:
	clrc
	rlf	(??_GPIO_Write+0)+0,f
u924:
	addlw	-1
	skipz
	goto	u925
	movf	0+(??_GPIO_Write+0)+0,w
	xorlw	0ffh
	movwf	(??_GPIO_Write+1)+0
	movf	(??_GPIO_Write+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(135)^080h,f	;volatile
	line	17
	goto	l7286
	line	18
	
l7272:	
	movf	(GPIO_Write@GPIO_Port),w
	xorlw	low(8|((0x0)<<8))&0ffh
	skipz
	goto	u931
	goto	u930
u931:
	goto	l7276
u930:
	line	20
	
l7274:	
	movlw	low(01h)
	movwf	(??_GPIO_Write+0)+0
	incf	(GPIO_Write@Pin),w
	goto	u944
u945:
	clrc
	rlf	(??_GPIO_Write+0)+0,f
u944:
	addlw	-1
	skipz
	goto	u945
	movf	0+(??_GPIO_Write+0)+0,w
	xorlw	0ffh
	movwf	(??_GPIO_Write+1)+0
	movf	(??_GPIO_Write+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(136)^080h,f	;volatile
	line	21
	goto	l7286
	line	24
	
l7276:	
	movlw	low(01h)
	movwf	(??_GPIO_Write+0)+0
	incf	(GPIO_Write@Pin),w
	goto	u954
u955:
	clrc
	rlf	(??_GPIO_Write+0)+0,f
u954:
	addlw	-1
	skipz
	goto	u955
	movf	0+(??_GPIO_Write+0)+0,w
	xorlw	0ffh
	movwf	(??_GPIO_Write+1)+0
	movf	(??_GPIO_Write+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(137)^080h,f	;volatile
	goto	l7286
	line	29
	
l7278:	
	movlw	low(01h)
	movwf	(??_GPIO_Write+0)+0
	incf	(GPIO_Write@Pin),w
	goto	u964
u965:
	clrc
	rlf	(??_GPIO_Write+0)+0,f
u964:
	addlw	-1
	skipz
	goto	u965
	movf	0+(??_GPIO_Write+0)+0,w
	movwf	(??_GPIO_Write+1)+0
	movf	(GPIO_Write@GPIO_Port),w
	movwf	fsr0
	movf	(??_GPIO_Write+1)+0,w
	bcf	status, 7	;select IRP bank0
	iorwf	indf,f
	line	30
	goto	l2409
	line	32
	
l7280:	
	movlw	low(01h)
	movwf	(??_GPIO_Write+0)+0
	incf	(GPIO_Write@Pin),w
	goto	u974
u975:
	clrc
	rlf	(??_GPIO_Write+0)+0,f
u974:
	addlw	-1
	skipz
	goto	u975
	movf	0+(??_GPIO_Write+0)+0,w
	xorlw	0ffh
	movwf	(??_GPIO_Write+1)+0
	movf	(GPIO_Write@GPIO_Port),w
	movwf	fsr0
	movf	(??_GPIO_Write+1)+0,w
	bcf	status, 7	;select IRP bank0
	andwf	indf,f
	line	33
	goto	l2409
	line	26
	
l7286:	
	movf	(GPIO_Write@GPIO_State),w
	; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           14     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l7280
	xorlw	1^0	; case 1
	skipnz
	goto	l7278
	goto	l7280
	asmopt pop

	line	38
	
l2409:	
	return
	callstack 0
GLOBAL	__end_of_GPIO_Write
	__end_of_GPIO_Write:
	signat	_GPIO_Write,12409
	global	_Reset_ADC_Register

;; *************** function _Reset_ADC_Register *****************
;; Defined at:
;;		line 28 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MCU_Config
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
	line	28
global __ptext16
__ptext16:	;psect for function _Reset_ADC_Register
psect	text16
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
	line	28
	
_Reset_ADC_Register:	
;incstack = 0
	callstack 5
; Regs used in _Reset_ADC_Register: [wreg+status,2+status,0]
	line	31
	
l7078:	
	clrf	(31)	;volatile
	line	32
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	34
	
l7080:	
	movlw	low(07h)
	movwf	(??_Reset_ADC_Register+0)+0
	movf	(??_Reset_ADC_Register+0)+0,w
	iorwf	(159)^080h,f	;volatile
	line	35
	
l1808:	
	return
	callstack 0
GLOBAL	__end_of_Reset_ADC_Register
	__end_of_Reset_ADC_Register:
	signat	_Reset_ADC_Register,89
	global	_Interrupts_Function

;; *************** function _Interrupts_Function *****************
;; Defined at:
;;		line 3 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Interrupts.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Interrupts.c"
	line	3
global __ptext17
__ptext17:	;psect for function _Interrupts_Function
psect	text17
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Interrupts.c"
	line	3
	
_Interrupts_Function:	
;incstack = 0
	callstack 3
; Regs used in _Interrupts_Function: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_Interrupts_Function+0)
	movf	pclath,w
	movwf	(??_Interrupts_Function+1)
	ljmp	_Interrupts_Function
psect	text17
	line	14
	
i1l7248:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(140)^080h,(1)&7	;volatile
	goto	u83_21
	goto	u83_20
u83_21:
	goto	i1l3628
u83_20:
	
i1l7250:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(12),(1)&7	;volatile
	goto	u84_21
	goto	u84_20
u84_21:
	goto	i1l3628
u84_20:
	line	16
	
i1l7252:	
	movlw	01h
	addwf	(_timeReset_flag),f
	skipnc
	incf	(_timeReset_flag+1),f
	movlw	0
	addwf	(_timeReset_flag+1),f
	line	17
	movlw	01h
	addwf	(_timeSysTick),f	;volatile
	skipnc
	incf	(_timeSysTick+1),f	;volatile
	movlw	0
	addwf	(_timeSysTick+1),f	;volatile
	line	18
	movlw	075h
	subwf	(_timeSysTick+1),w	;volatile
	movlw	031h
	skipnz
	subwf	(_timeSysTick),w	;volatile
	skipc
	goto	u85_21
	goto	u85_20
u85_21:
	goto	i1l3629
u85_20:
	line	20
	
i1l7254:	
	movlw	01h
	movwf	(_timeSysTick)	;volatile
	movlw	0
	movwf	((_timeSysTick))+1	;volatile
	line	21
	
i1l3629:	
	line	22
	movlw	low(0DDh)
	movwf	(17)	;volatile
	line	23
	
i1l7256:	
	bcf	(97/8),(97)&7	;volatile
	line	25
	
i1l3628:	
	line	26
	movlw	013h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_timeReset_flag+1),w
	movlw	088h
	skipnz
	subwf	(_timeReset_flag),w
	skipnc
	goto	u86_21
	goto	u86_20
u86_21:
	goto	i1l3631
u86_20:
	line	28
	
i1l7258:	
# 28 "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Interrupts.c"
clrwdt ;# 
psect	text17
	line	30
	
i1l3631:	
	movf	(??_Interrupts_Function+1),w
	movwf	pclath
	swapf	(??_Interrupts_Function+0),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	callstack 0
GLOBAL	__end_of_Interrupts_Function
	__end_of_Interrupts_Function:
	signat	_Interrupts_Function,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
