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
	FNCALL	_main,_GPIO_Write
	FNCALL	_main,_Loop
	FNCALL	_main,_MCU_Config
	FNCALL	_MCU_Config,_GPIO_Write
	FNCALL	_MCU_Config,_Reset_ADC_Register
	FNCALL	_MCU_Config,_Startup_Infor
	FNCALL	_MCU_Config,_Timer2_Interrupt_Init
	FNCALL	_MCU_Config,_UART_BASE_Init
	FNCALL	_MCU_Config,_UART_WriteStr
	FNCALL	_UART_BASE_Init,___aldiv
	FNCALL	_Startup_Infor,_GPIO_Write
	FNCALL	_Loop,_Compression_Ctrl
	FNCALL	_Loop,_Compression_Run
	FNCALL	_Loop,_Disinfection_Ctrl
	FNCALL	_Loop,_Disionfection_Run
	FNCALL	_Loop,_TimeSysTickUpdate
	FNCALL	_Loop,_TrashDoor_Ctrl
	FNCALL	_TrashDoor_Ctrl,_GPIO_Read
	FNCALL	_TrashDoor_Ctrl,_IRSensor_Read
	FNCALL	_TrashDoor_Ctrl,_TrashDoor_Close
	FNCALL	_TrashDoor_Ctrl,_TrashDoor_Open
	FNCALL	_TrashDoor_Ctrl,___ftge
	FNCALL	_TrashDoor_Ctrl,___lwmod
	FNCALL	_TrashDoor_Open,_GPIO_Write
	FNCALL	_TrashDoor_Open,_Motor_Forward_Start
	FNCALL	_TrashDoor_Open,_Motor_Stop
	FNCALL	_TrashDoor_Close,_GPIO_Write
	FNCALL	_TrashDoor_Close,_Motor_Reverse_Start
	FNCALL	_TrashDoor_Close,_Motor_Stop
	FNCALL	_IRSensor_Read,_ADC_Read
	FNCALL	_IRSensor_Read,___ftadd
	FNCALL	_IRSensor_Read,___ftdiv
	FNCALL	_IRSensor_Read,___ftge
	FNCALL	_IRSensor_Read,___ftmul
	FNCALL	_IRSensor_Read,___lbtoft
	FNCALL	_IRSensor_Read,___lwtoft
	FNCALL	___lwtoft,___ftpack
	FNCALL	___lbtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_ADC_Read,_ADC_BASE_Init
	FNCALL	_TimeSysTickUpdate,_UART_WriteStr
	FNCALL	_TimeSysTickUpdate,___lwmod
	FNCALL	_TimeSysTickUpdate,_sprintf
	FNCALL	_Disionfection_Run,_GPIO_Write
	FNCALL	_Compression_Run,_GPIO_Write
	FNCALL	_Compression_Run,_Motor_Forward_Start
	FNCALL	_Compression_Run,_Motor_Reverse_Start
	FNCALL	_Compression_Run,_Motor_Stop
	FNCALL	_Compression_Run,_UART_WriteStr
	FNCALL	_Compression_Run,_UltraSensor_Read
	FNCALL	_Compression_Run,___llmod
	FNCALL	_Compression_Run,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_UltraSensor_Read,_UltraSonicSensor_Read
	FNCALL	_UltraSensor_Read,___lwdiv
	FNCALL	_UltraSonicSensor_Read,_GPIO_Read
	FNCALL	_UltraSonicSensor_Read,_GPIO_Write
	FNCALL	_UART_WriteStr,_UART_WriteChar
	FNCALL	_UART_WriteStr,_strlen
	FNCALL	_Motor_Reverse_Start,_GPIO_Write
	FNCALL	_Motor_Reverse_Start,_Motor_Stop
	FNCALL	_Motor_Forward_Start,_GPIO_Write
	FNCALL	_Motor_Forward_Start,_Motor_Stop
	FNCALL	_Motor_Stop,_GPIO_Read
	FNCALL	_Motor_Stop,_GPIO_Write
	FNROOT	_main
	FNCALL	intlevel1,_Interrupts_Function
	global	intlevel1
	FNROOT	intlevel1
	global	_LED2
	global	_SW1
	global	_Motor_0
	global	_LED1
	global	_disinfectionState
	global	_BUZZER
	global	_Door_Motor
	global	_Compress_Motor
	global	_UltraSonic_2
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	46

;initializer for _LED2
	retlw	low(6|((0x0)<<8))
	retlw	02h
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	line	116

;initializer for _SW2
	retlw	low(5|((0x0)<<8))
	retlw	05h
	line	115

;initializer for _SW1
	retlw	low(5|((0x0)<<8))
	retlw	04h
	line	108

;initializer for _IR_Sensor_2
	retlw	low(5|((0x0)<<8))
	retlw	01h
	line	107

;initializer for _IR_Sensor_1
	retlw	low(5|((0x0)<<8))
	retlw	low(0)
	line	48

;initializer for _Motor_0
	retlw	low(6|((0x0)<<8))
	retlw	low(0)
	line	45

;initializer for _LED1
	retlw	low(6|((0x0)<<8))
	retlw	03h
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	51

;initializer for _disinfectionState
	retlw	02h
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	47

;initializer for _BUZZER
	retlw	low(6|((0x0)<<8))
	retlw	01h
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	line	75

;initializer for _Motor_4
	retlw	low(7|((0x0)<<8))
	retlw	01h
	retlw	low(7|((0x0)<<8))
	retlw	low(0)
	retlw	low(9|((0x0)<<8))
	retlw	02h
	retlw	low(9|((0x0)<<8))
	retlw	01h
	line	51

;initializer for _Motor_1
	retlw	low(7|((0x0)<<8))
	retlw	04h
	retlw	low(7|((0x0)<<8))
	retlw	05h
	retlw	low(7|((0x0)<<8))
	retlw	06h
	retlw	low(7|((0x0)<<8))
	retlw	07h
	line	87

;initializer for _UltraSonic_1
	retlw	low(6|((0x0)<<8))
	retlw	04h
	retlw	low(6|((0x0)<<8))
	retlw	05h
	line	67

;initializer for _Door_Motor
	retlw	low(8|((0x0)<<8))
	retlw	01h
	retlw	low(8|((0x0)<<8))
	retlw	low(0)
	retlw	low(7|((0x0)<<8))
	retlw	03h
	retlw	low(7|((0x0)<<8))
	retlw	02h
	line	59

;initializer for _Compress_Motor
	retlw	low(8|((0x0)<<8))
	retlw	04h
	retlw	low(8|((0x0)<<8))
	retlw	05h
	retlw	low(8|((0x0)<<8))
	retlw	06h
	retlw	low(8|((0x0)<<8))
	retlw	07h
	line	97

;initializer for _UltraSonic_2
	retlw	low(5|((0x0)<<8))
	retlw	02h
	retlw	low(5|((0x0)<<8))
	retlw	03h
	global	_dpowers
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
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\doprnt.c"
	line	358
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global __end_of_dpowers
__end_of_dpowers:
	global	_dpowers
	global	_timeBuffer
	global	_timeSysTickBuffer
	global	_timeReset_flag
	global	_compressionState
	global	_timeSysTick
	global	_trashDoorState
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
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
	global	_ADON
_ADON	set	248
	global	_GODONE
_GODONE	set	250
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
	global	_ADRESL
_ADRESL	set	158
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
	
STR_3:	
	retlw	84	;'T'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
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
psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	46
_LED2:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_timeBuffer:
       ds      4

_timeSysTickBuffer:
       ds      2

_timeReset_flag:
       ds      2

_compressionState:
       ds      1

_distanceBuffer:
       ds      1

_timeSysTick:
       ds      2

_trashDoorState:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	116
_SW2:
       ds      2

psect	dataBANK0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	115
_SW1:
       ds      2

psect	dataBANK0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	108
_IR_Sensor_2:
       ds      2

psect	dataBANK0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	107
_IR_Sensor_1:
       ds      2

psect	dataBANK0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	48
_Motor_0:
       ds      2

psect	dataBANK0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	45
_LED1:
       ds      2

psect	dataBANK0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	51
_disinfectionState:
       ds      1

psect	dataBANK0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	47
_BUZZER:
       ds      2

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
TimeSysTickUpdate@F1164:
       ds      10

Compression_Run@F1155:
       ds      10

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	75
_Motor_4:
       ds      8

psect	dataBANK1
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	51
_Motor_1:
       ds      8

psect	dataBANK1
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	87
_UltraSonic_1:
       ds      4

psect	dataBANK1
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	67
_Door_Motor:
       ds      8

psect	dataBANK1
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	59
_Compress_Motor:
       ds      8

psect	dataBANK1
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	97
_UltraSonic_2:
       ds      4

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
	movlw low(__pdataBANK1+40)
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
	movlw low(__pdataBANK0+15)
	movwf btemp-1
	movlw high(__pidataBANK0)
	movwf btemp
	movlw low(__pidataBANK0)
	movwf btemp+1
	movlw low(__pdataBANK0)
	movwf fsr
	fcall init_ram0
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
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

; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+014h)
	fcall	clear_ram0
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+0Dh)
	fcall	clear_ram0
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
?_Loop:	; 1 bytes @ 0x0
?_Timer2_Interrupt_Init:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_ADC_BASE_Init:	; 1 bytes @ 0x0
?_Reset_ADC_Register:	; 1 bytes @ 0x0
?_Motor_Stop:	; 1 bytes @ 0x0
?_Motor_Forward_Start:	; 1 bytes @ 0x0
?_Motor_Reverse_Start:	; 1 bytes @ 0x0
?_Interrupts_Function:	; 1 bytes @ 0x0
??_Interrupts_Function:	; 1 bytes @ 0x0
?_TrashDoor_Open:	; 1 bytes @ 0x0
?_TrashDoor_Close:	; 1 bytes @ 0x0
?_UltraSensor_Read:	; 1 bytes @ 0x0
?_Compression_Ctrl:	; 1 bytes @ 0x0
?_Compression_Run:	; 1 bytes @ 0x0
?_Disinfection_Ctrl:	; 1 bytes @ 0x0
?_Disionfection_Run:	; 1 bytes @ 0x0
?_TimeSysTickUpdate:	; 1 bytes @ 0x0
?_UART_WriteChar:	; 1 bytes @ 0x0
	ds	2
?___ftge:	; 1 bit 
?_GPIO_Write:	; 1 bytes @ 0x2
??_Timer2_Interrupt_Init:	; 1 bytes @ 0x2
??_ADC_BASE_Init:	; 1 bytes @ 0x2
??_Reset_ADC_Register:	; 1 bytes @ 0x2
?_GPIO_Read:	; 1 bytes @ 0x2
??_Compression_Ctrl:	; 1 bytes @ 0x2
??_Disinfection_Ctrl:	; 1 bytes @ 0x2
??_UART_WriteChar:	; 1 bytes @ 0x2
	global	?_strlen
?_strlen:	; 2 bytes @ 0x2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x2
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x2
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x2
	global	?___llmod
?___llmod:	; 4 bytes @ 0x2
	global	GPIO_Write@Pin
GPIO_Write@Pin:	; 1 bytes @ 0x2
	global	GPIO_Read@Pin
GPIO_Read@Pin:	; 1 bytes @ 0x2
	global	UART_WriteChar@data
UART_WriteChar@data:	; 1 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	global	strlen@s
strlen@s:	; 2 bytes @ 0x2
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x2
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x2
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x2
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x2
	ds	1
??_GPIO_Read:	; 1 bytes @ 0x3
	global	?_ADC_Read
?_ADC_Read:	; 2 bytes @ 0x3
	global	GPIO_Write@GPIO_State
GPIO_Write@GPIO_State:	; 1 bytes @ 0x3
	ds	1
??_GPIO_Write:	; 1 bytes @ 0x4
??_strlen:	; 1 bytes @ 0x4
	global	GPIO_Read@GPIO_Port
GPIO_Read@GPIO_Port:	; 1 bytes @ 0x4
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x4
	global	strlen@cp
strlen@cp:	; 2 bytes @ 0x4
	ds	1
??_ADC_Read:	; 1 bytes @ 0x5
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x5
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x5
	ds	1
?_UART_WriteStr:	; 1 bytes @ 0x6
??___lwdiv:	; 1 bytes @ 0x6
	global	GPIO_Write@GPIO_Port
GPIO_Write@GPIO_Port:	; 1 bytes @ 0x6
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x6
	global	UART_WriteStr@data
UART_WriteStr@data:	; 2 bytes @ 0x6
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x6
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x6
	ds	1
?_UltraSonicSensor_Read:	; 1 bytes @ 0x7
??___ftpack:	; 1 bytes @ 0x7
?_Startup_Infor:	; 1 bytes @ 0x7
??_Motor_Stop:	; 1 bytes @ 0x7
??_Disionfection_Run:	; 1 bytes @ 0x7
	global	ADC_Read@channel
ADC_Read@channel:	; 1 bytes @ 0x7
	global	Startup_Infor@index
Startup_Infor@index:	; 1 bytes @ 0x7
	global	UltraSonicSensor_Read@system_tick
UltraSonicSensor_Read@system_tick:	; 1 bytes @ 0x7
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x7
	ds	1
??_UART_WriteStr:	; 1 bytes @ 0x8
??___ftge:	; 1 bytes @ 0x8
	global	Startup_Infor@GPIO
Startup_Infor@GPIO:	; 1 bytes @ 0x8
	ds	1
	global	Motor_Stop@motor_handle
Motor_Stop@motor_handle:	; 1 bytes @ 0x9
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x9
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_UltraSonicSensor_Read:	; 1 bytes @ 0x0
??_Startup_Infor:	; 1 bytes @ 0x0
??_Motor_Forward_Start:	; 1 bytes @ 0x0
??_Motor_Reverse_Start:	; 1 bytes @ 0x0
??___aldiv:	; 1 bytes @ 0x0
??___llmod:	; 1 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x0
	global	?___lbtoft
?___lbtoft:	; 3 bytes @ 0x0
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x0
	global	UART_WriteStr@len
UART_WriteStr@len:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x0
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x0
	ds	1
	global	Motor_Forward_Start@motor_handle
Motor_Forward_Start@motor_handle:	; 1 bytes @ 0x1
	global	Motor_Reverse_Start@motor_handle
Motor_Reverse_Start@motor_handle:	; 1 bytes @ 0x1
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x1
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x1
	ds	1
??_TrashDoor_Open:	; 1 bytes @ 0x2
??_TrashDoor_Close:	; 1 bytes @ 0x2
	global	UART_WriteStr@i
UART_WriteStr@i:	; 1 bytes @ 0x2
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	1
??___lbtoft:	; 1 bytes @ 0x3
??___lwtoft:	; 1 bytes @ 0x3
	global	TrashDoor_Open@state
TrashDoor_Open@state:	; 1 bytes @ 0x3
	global	TrashDoor_Close@state
TrashDoor_Close@state:	; 1 bytes @ 0x3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x3
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x3
	ds	1
??___lwmod:	; 1 bytes @ 0x4
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x4
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x4
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	ds	1
??___ftmul:	; 1 bytes @ 0x6
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x6
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x6
	global	UltraSonicSensor_Read@buff_time
UltraSonicSensor_Read@buff_time:	; 4 bytes @ 0x6
	ds	1
?_UART_BASE_Init:	; 1 bytes @ 0x7
	global	___lbtoft@c
___lbtoft@c:	; 1 bytes @ 0x7
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x7
	global	UART_BASE_Init@baud
UART_BASE_Init@baud:	; 4 bytes @ 0x7
	ds	3
??___ftadd:	; 1 bytes @ 0xA
	global	UltraSonicSensor_Read@sensor
UltraSonicSensor_Read@sensor:	; 1 bytes @ 0xA
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0xA
	ds	1
??_UART_BASE_Init:	; 1 bytes @ 0xB
??_sprintf:	; 1 bytes @ 0xB
??_UltraSensor_Read:	; 1 bytes @ 0xB
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0xB
	ds	3
	global	UltraSensor_Read@ptimeSysTick
UltraSensor_Read@ptimeSysTick:	; 1 bytes @ 0xE
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0xE
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0xE
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0xE
	ds	1
??_MCU_Config:	; 1 bytes @ 0xF
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0xF
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0xF
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0xF
	global	UltraSensor_Read@distance_buff
UltraSensor_Read@distance_buff:	; 2 bytes @ 0xF
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x10
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x10
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x10
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x10
	ds	1
	global	UltraSensor_Read@index
UltraSensor_Read@index:	; 1 bytes @ 0x11
	global	sprintf@val
sprintf@val:	; 2 bytes @ 0x11
	ds	1
	global	UltraSensor_Read@distance
UltraSensor_Read@distance:	; 2 bytes @ 0x12
	ds	1
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x13
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x13
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x14
	ds	1
??_Compression_Run:	; 1 bytes @ 0x15
??_TimeSysTickUpdate:	; 1 bytes @ 0x15
	ds	1
??___ftdiv:	; 1 bytes @ 0x16
	ds	1
	global	TimeSysTickUpdate@TX
TimeSysTickUpdate@TX:	; 10 bytes @ 0x17
	ds	1
	global	Compression_Run@TX
Compression_Run@TX:	; 10 bytes @ 0x18
	ds	2
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x1A
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x1B
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x1E
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x1F
	ds	1
	global	?_IRSensor_Read
?_IRSensor_Read:	; 3 bytes @ 0x20
	ds	1
	global	TimeSysTickUpdate@ptimeSysTick
TimeSysTickUpdate@ptimeSysTick:	; 1 bytes @ 0x21
	ds	1
	global	Compression_Run@ptimeSysTick
Compression_Run@ptimeSysTick:	; 1 bytes @ 0x22
	ds	1
??_IRSensor_Read:	; 1 bytes @ 0x23
	global	Compression_Run@distance
Compression_Run@distance:	; 1 bytes @ 0x23
	ds	1
	global	IRSensor_Read@index
IRSensor_Read@index:	; 1 bytes @ 0x24
	ds	1
	global	IRSensor_Read@adc_value
IRSensor_Read@adc_value:	; 3 bytes @ 0x25
	ds	3
?_TrashDoor_Ctrl:	; 1 bytes @ 0x28
	global	TrashDoor_Ctrl@timeSysTick
TrashDoor_Ctrl@timeSysTick:	; 1 bytes @ 0x28
	ds	1
??_TrashDoor_Ctrl:	; 1 bytes @ 0x29
	ds	3
	global	_TrashDoor_Ctrl$3860
_TrashDoor_Ctrl$3860:	; 3 bytes @ 0x2C
	ds	3
	global	TrashDoor_Ctrl@state
TrashDoor_Ctrl@state:	; 1 bytes @ 0x2F
	ds	1
??_Loop:	; 1 bytes @ 0x30
	ds	1
	global	Loop@ptimeSysTick
Loop@ptimeSysTick:	; 1 bytes @ 0x31
	ds	1
??_main:	; 1 bytes @ 0x32
	ds	1
;!
;!Data Sizes:
;!    Strings     27
;!    Constant    10
;!    Data        57
;!    BSS         33
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      12
;!    BANK0            80     51      79
;!    BANK1            80      0      60
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    strlen@s	PTR const unsigned char  size(2) Largest target is 11
;!		 -> TimeSysTickUpdate@TX(BANK0[10]), Compression_Run@TX(BANK0[10]), STR_1(CODE[11]), 
;!
;!    strlen@cp	PTR const unsigned char  size(2) Largest target is 11
;!		 -> TimeSysTickUpdate@TX(BANK0[10]), Compression_Run@TX(BANK0[10]), STR_1(CODE[11]), 
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 9
;!		 -> STR_3(CODE[7]), STR_2(CODE[9]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 10
;!		 -> TimeSysTickUpdate@TX(BANK0[10]), Compression_Run@TX(BANK0[10]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    UltraSonicSensor_Read@system_tick	PTR volatile unsigned int  size(1) Largest target is 2
;!		 -> timeSysTick(BANK0[2]), 
;!
;!    UltraSonicSensor_Read@sensor.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    UltraSonicSensor_Read@sensor	PTR struct . size(1) Largest target is 6
;!		 -> UltraSonic_2(BANK1[4]), 
;!
;!    UART_WriteStr@data	PTR const unsigned char  size(2) Largest target is 11
;!		 -> TimeSysTickUpdate@TX(BANK0[10]), Compression_Run@TX(BANK0[10]), STR_1(CODE[11]), 
;!
;!    Loop@ptimeSysTick	PTR volatile unsigned int  size(1) Largest target is 2
;!		 -> timeSysTick(BANK0[2]), 
;!
;!    TimeSysTickUpdate@ptimeSysTick	PTR volatile unsigned int  size(1) Largest target is 2
;!		 -> timeSysTick(BANK0[2]), 
;!
;!    Compression_Run@ptimeSysTick	PTR volatile unsigned int  size(1) Largest target is 2
;!		 -> timeSysTick(BANK0[2]), 
;!
;!    TrashDoor_Ctrl@timeSysTick	PTR volatile unsigned int  size(1) Largest target is 2
;!		 -> timeSysTick(BANK0[2]), 
;!
;!    TrashDoor_Ctrl@state	PTR enum E1105 size(1) Largest target is 1
;!		 -> trashDoorState(BANK0[1]), 
;!
;!    UltraSensor_Read@ptimeSysTick	PTR volatile unsigned int  size(1) Largest target is 2
;!		 -> timeSysTick(BANK0[2]), 
;!
;!    TrashDoor_Close@state	PTR enum E1105 size(1) Largest target is 1
;!		 -> trashDoorState(BANK0[1]), 
;!
;!    TrashDoor_Open@state	PTR enum E1105 size(1) Largest target is 1
;!		 -> trashDoorState(BANK0[1]), 
;!
;!    Motor_Reverse_Start@motor_handle.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Motor_Reverse_Start@motor_handle	PTR struct . size(1) Largest target is 12
;!		 -> Door_Motor(BANK1[8]), Compress_Motor(BANK1[8]), 
;!
;!    Motor_Forward_Start@motor_handle.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Motor_Forward_Start@motor_handle	PTR struct . size(1) Largest target is 12
;!		 -> Door_Motor(BANK1[8]), Compress_Motor(BANK1[8]), 
;!
;!    Motor_Stop@motor_handle.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Motor_Stop@motor_handle	PTR struct . size(1) Largest target is 12
;!		 -> Door_Motor(BANK1[8]), Compress_Motor(BANK1[8]), 
;!
;!    GPIO_Read@GPIO_Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    GPIO_Write@GPIO_Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Startup_Infor@GPIO.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Startup_Infor@GPIO	PTR struct . size(1) Largest target is 3
;!		 -> BUZZER(BANK0[2]), 
;!
;!    SW2.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    SW1.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    IR_Sensor_2.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    IR_Sensor_1.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    UltraSonic_2.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    UltraSonic_1.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Motor_4.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Door_Motor.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Compress_Motor.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Motor_1.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Motor_0.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    BUZZER.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    LED2.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    S22$Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    LED1.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _MCU_Config->_UART_WriteStr
;!    _UART_BASE_Init->___aldiv
;!    _Startup_Infor->_GPIO_Write
;!    _TrashDoor_Open->_Motor_Stop
;!    _TrashDoor_Close->_Motor_Stop
;!    ___lwtoft->___ftpack
;!    ___lbtoft->___ftpack
;!    ___ftmul->___ftpack
;!    ___ftdiv->___ftpack
;!    ___ftadd->___ftpack
;!    _ADC_Read->_ADC_BASE_Init
;!    _TimeSysTickUpdate->_UART_WriteStr
;!    _Disionfection_Run->_GPIO_Write
;!    _Compression_Run->_Motor_Stop
;!    _Compression_Run->_UART_WriteStr
;!    _Compression_Run->___llmod
;!    _sprintf->___lwdiv
;!    ___lwmod->___lwdiv
;!    _UltraSensor_Read->___lwdiv
;!    _UltraSonicSensor_Read->_GPIO_Write
;!    _UART_WriteStr->_strlen
;!    _Motor_Reverse_Start->_Motor_Stop
;!    _Motor_Forward_Start->_Motor_Stop
;!    _Motor_Stop->_GPIO_Write
;!
;!Critical Paths under _Interrupts_Function in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_Loop
;!    _MCU_Config->_UART_BASE_Init
;!    _UART_BASE_Init->___aldiv
;!    _Loop->_TrashDoor_Ctrl
;!    _TrashDoor_Ctrl->_IRSensor_Read
;!    _TrashDoor_Open->_Motor_Forward_Start
;!    _TrashDoor_Close->_Motor_Reverse_Start
;!    _IRSensor_Read->___ftdiv
;!    ___ftdiv->___ftmul
;!    ___ftadd->___lwtoft
;!    _TimeSysTickUpdate->_sprintf
;!    _Compression_Run->_sprintf
;!    _sprintf->___lwmod
;!    _UltraSensor_Read->_UltraSonicSensor_Read
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
;! (0) _main                                                 1     1      0  193181
;!                                             50 BANK0      1     1      0
;!                         _GPIO_Write
;!                               _Loop
;!                         _MCU_Config
;! ---------------------------------------------------------------------------------
;! (1) _MCU_Config                                           3     3      0   16911
;!                                             15 BANK0      3     3      0
;!                         _GPIO_Write
;!                 _Reset_ADC_Register
;!                      _Startup_Infor
;!              _Timer2_Interrupt_Init
;!                     _UART_BASE_Init
;!                      _UART_WriteStr
;! ---------------------------------------------------------------------------------
;! (2) _UART_BASE_Init                                       8     4      4     671
;!                                              7 BANK0      8     4      4
;!                            ___aldiv
;! ---------------------------------------------------------------------------------
;! (3) ___aldiv                                             15     7      8     575
;!                                              2 COMMON     8     0      8
;!                                              0 BANK0      7     7      0
;! ---------------------------------------------------------------------------------
;! (2) _Timer2_Interrupt_Init                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Startup_Infor                                        5     4      1    8026
;!                                              7 COMMON     2     1      1
;!                                              0 BANK0      3     3      0
;!                         _GPIO_Write
;! ---------------------------------------------------------------------------------
;! (2) _Reset_ADC_Register                                   1     1      0       0
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Loop                                                 2     2      0  168494
;!                                             48 BANK0      2     2      0
;!                   _Compression_Ctrl
;!                    _Compression_Run
;!                  _Disinfection_Ctrl
;!                  _Disionfection_Run
;!                  _TimeSysTickUpdate
;!                     _TrashDoor_Ctrl
;! ---------------------------------------------------------------------------------
;! (2) _TrashDoor_Ctrl                                       8     7      1   90299
;!                                             40 BANK0      8     7      1
;!                          _GPIO_Read
;!                      _IRSensor_Read
;!                    _TrashDoor_Close
;!                     _TrashDoor_Open
;!                             ___ftge
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (3) _TrashDoor_Open                                       2     2      0   36195
;!                                              2 BANK0      2     2      0
;!                         _GPIO_Write
;!                _Motor_Forward_Start
;!                         _Motor_Stop
;! ---------------------------------------------------------------------------------
;! (3) _TrashDoor_Close                                      2     2      0   36165
;!                                              2 BANK0      2     2      0
;!                         _GPIO_Write
;!                _Motor_Reverse_Start
;!                         _Motor_Stop
;! ---------------------------------------------------------------------------------
;! (3) _IRSensor_Read                                        8     5      3   15511
;!                                             32 BANK0      8     5      3
;!                           _ADC_Read
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                           ___lbtoft
;!                           ___lwtoft
;! ---------------------------------------------------------------------------------
;! (4) ___lwtoft                                             4     1      3    2494
;!                                              0 BANK0      4     1      3
;!                           _ADC_Read (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (4) ___lbtoft                                             8     5      3    2429
;!                                              0 BANK0      8     5      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (4) ___ftmul                                             16    10      6    3022
;!                                              0 BANK0     16    10      6
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___ftge                                               6     0      6     348
;!                                              2 COMMON     6     0      6
;! ---------------------------------------------------------------------------------
;! (4) ___ftdiv                                             16    10      6    3084
;!                                             16 BANK0     16    10      6
;!                            ___ftmul (ARG)
;!                           ___ftpack
;!                           ___lbtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___ftadd                                             13     7      6    3843
;!                                              4 BANK0     13     7      6
;!                           _ADC_Read (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___ftpack                                             8     3      5    2398
;!                                              2 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! (4) _ADC_Read                                             5     3      2      22
;!                                              3 COMMON     5     3      2
;!                      _ADC_BASE_Init
;! ---------------------------------------------------------------------------------
;! (5) _ADC_BASE_Init                                        1     1      0       0
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _TimeSysTickUpdate                                   13    13      0    3160
;!                                             21 BANK0     13    13      0
;!                      _UART_WriteStr
;!                            ___lwmod
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _Disionfection_Run                                    1     1      0    7776
;!                                              7 COMMON     1     1      0
;!                         _GPIO_Write
;! ---------------------------------------------------------------------------------
;! (2) _Disinfection_Ctrl                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Compression_Run                                     15    15      0   67136
;!                                             21 BANK0     15    15      0
;!                         _GPIO_Write
;!                _Motor_Forward_Start
;!                _Motor_Reverse_Start
;!                         _Motor_Stop
;!                      _UART_WriteStr
;!                   _UltraSensor_Read
;!                            ___llmod
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (3) _sprintf                                             23    18      5    1882
;!                                              6 BANK0     15    10      5
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              6     2      4     622
;!                                              0 BANK0      6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___llmod                                             10     2      8     362
;!                                              2 COMMON     8     0      8
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) _UltraSensor_Read                                     9     9      0   10042
;!                                             11 BANK0      9     9      0
;!              _UltraSonicSensor_Read
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              8     4      4     374
;!                                              2 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (4) _UltraSonicSensor_Read                               12    11      1    9274
;!                                              7 COMMON     1     0      1
;!                                              0 BANK0     11    11      0
;!                          _GPIO_Read
;!                         _GPIO_Write
;! ---------------------------------------------------------------------------------
;! (2) _UART_WriteStr                                        7     5      2     438
;!                                              6 COMMON     4     2      2
;!                                              0 BANK0      3     3      0
;!                     _UART_WriteChar
;!                             _strlen
;! ---------------------------------------------------------------------------------
;! (4) _strlen                                               4     2      2     143
;!                                              2 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (3) _UART_WriteChar                                       1     1      0      22
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _Motor_Reverse_Start                                  2     2      0   18113
;!                                              0 BANK0      2     2      0
;!                         _GPIO_Write
;!                         _Motor_Stop
;! ---------------------------------------------------------------------------------
;! (4) _Motor_Forward_Start                                  2     2      0   18143
;!                                              0 BANK0      2     2      0
;!                         _GPIO_Write
;!                         _Motor_Stop
;! ---------------------------------------------------------------------------------
;! (4) _Motor_Stop                                           3     3      0   10122
;!                                              7 COMMON     3     3      0
;!                          _GPIO_Read
;!                         _GPIO_Write
;! ---------------------------------------------------------------------------------
;! (3) _GPIO_Write                                           5     3      2    7776
;!                                              2 COMMON     5     3      2
;! ---------------------------------------------------------------------------------
;! (5) _GPIO_Read                                            3     2      1     802
;!                                              2 COMMON     3     2      1
;! ---------------------------------------------------------------------------------
;! (2) _Compression_Ctrl                                     1     1      0       0
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (7) _Interrupts_Function                                  2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _GPIO_Write
;!   _Loop
;!     _Compression_Ctrl
;!     _Compression_Run
;!       _GPIO_Write
;!       _Motor_Forward_Start
;!         _GPIO_Write
;!         _Motor_Stop
;!           _GPIO_Read
;!           _GPIO_Write
;!       _Motor_Reverse_Start
;!         _GPIO_Write
;!         _Motor_Stop
;!       _Motor_Stop
;!       _UART_WriteStr
;!         _UART_WriteChar
;!         _strlen
;!       _UltraSensor_Read
;!         _UltraSonicSensor_Read
;!           _GPIO_Read
;!           _GPIO_Write
;!         ___lwdiv
;!       ___llmod
;!       _sprintf
;!         ___lwdiv
;!         ___lwmod
;!           ___lwdiv (ARG)
;!     _Disinfection_Ctrl
;!     _Disionfection_Run
;!       _GPIO_Write
;!     _TimeSysTickUpdate
;!       _UART_WriteStr
;!       ___lwmod
;!       _sprintf
;!     _TrashDoor_Ctrl
;!       _GPIO_Read
;!       _IRSensor_Read
;!         _ADC_Read
;!           _ADC_BASE_Init
;!         ___ftadd
;!           _ADC_Read (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             _ADC_Read (ARG)
;!             ___ftpack (ARG)
;!         ___ftdiv
;!           ___ftmul (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!         ___ftge
;!         ___ftmul
;!         ___lbtoft
;!         ___lwtoft
;!       _TrashDoor_Close
;!         _GPIO_Write
;!         _Motor_Reverse_Start
;!         _Motor_Stop
;!       _TrashDoor_Open
;!         _GPIO_Write
;!         _Motor_Forward_Start
;!         _Motor_Stop
;!       ___ftge
;!       ___lwmod
;!   _MCU_Config
;!     _GPIO_Write
;!     _Reset_ADC_Register
;!     _Startup_Infor
;!       _GPIO_Write
;!     _Timer2_Interrupt_Init
;!     _UART_BASE_Init
;!       ___aldiv
;!     _UART_WriteStr
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
;!BANK1               50      0      3C       7       75.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     33      4F       5       98.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      A       C       1       85.7%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      97      12        0.0%
;!ABS                  0      0      97       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 4 in file ".\main.c"
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
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_GPIO_Write
;;		_Loop
;;		_MCU_Config
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	".\main.c"
	line	4
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	".\main.c"
	line	4
	
_main:	
;incstack = 0
	callstack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	6
	
l9321:	
	fcall	_MCU_Config
	line	7
	
l9323:	
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_Motor_0)+01h,w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(_Motor_0),w
	fcall	_GPIO_Write
	line	12
	
l9325:	
	movlw	(low(_timeSysTick|((0x0)<<8)))&0ffh
	fcall	_Loop
	line	16
	
l9327:	
	movf	((_timeReset_flag)),w
iorwf	((_timeReset_flag+1)),w
	btfsc	status,2
	goto	u5091
	goto	u5090
u5091:
	goto	l9325
u5090:
	line	18
	
l9329:	
	clrf	(_timeReset_flag)
	clrf	(_timeReset_flag+1)
	goto	l9325
	global	start
	ljmp	start
	callstack 0
	line	22
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_MCU_Config

;; *************** function _MCU_Config *****************
;; Defined at:
;;		line 36 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
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
;;		_Timer2_Interrupt_Init
;;		_UART_BASE_Init
;;		_UART_WriteStr
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
	line	36
global __ptext1
__ptext1:	;psect for function _MCU_Config
psect	text1
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
	line	36
	
_MCU_Config:	
;incstack = 0
	callstack 3
; Regs used in _MCU_Config: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	42
	
l9293:	
	movlw	low(05h)
	movwf	(??_MCU_Config+0)+0
	movf	(??_MCU_Config+0)+0,w
	movwf	(Startup_Infor@index)
	movlw	(low(_BUZZER|((0x0)<<8)))&0ffh
	fcall	_Startup_Infor
	line	45
	
l9295:	
	fcall	_Timer2_Interrupt_Init
	line	48
	
l9297:	
	fcall	_Reset_ADC_Register
	line	51
	
l9299:	
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
	line	52
	
l9301:	
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
	u5107:
decfsz	((??_MCU_Config+0)+0),f
	goto	u5107
	decfsz	((??_MCU_Config+0)+0+1),f
	goto	u5107
	decfsz	((??_MCU_Config+0)+0+2),f
	goto	u5107
	nop2
asmopt pop

	line	57
	
l9303:	
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	movwf	(UART_WriteStr@data)
	movlw	80h
	movwf	(UART_WriteStr@data+1)
	fcall	_UART_WriteStr
	line	58
	
l9305:	
	movf	0+(_LED2)+01h,w
	movwf	(??_MCU_Config+0)+0
	movf	(??_MCU_Config+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(_LED2),w
	fcall	_GPIO_Write
	line	59
	
l1807:	
	return
	callstack 0
GLOBAL	__end_of_MCU_Config
	__end_of_MCU_Config:
	signat	_MCU_Config,89
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
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UART.c"
	line	13
global __ptext2
__ptext2:	;psect for function _UART_BASE_Init
psect	text2
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UART.c"
	line	13
	
_UART_BASE_Init:	
;incstack = 0
	callstack 4
; Regs used in _UART_BASE_Init: [wreg+status,2+status,0+pclath+cstack]
	line	15
	
l9165:	
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
	
l9167:	
	movf	(UART_BASE_Init@baud),w
	movwf	(??_UART_BASE_Init+0)+0
	movf	(UART_BASE_Init@baud+1),w
	movwf	((??_UART_BASE_Init+0)+0+1)
	movf	(UART_BASE_Init@baud+2),w
	movwf	((??_UART_BASE_Init+0)+0+2)
	movf	(UART_BASE_Init@baud+3),w
	movwf	((??_UART_BASE_Init+0)+0+3)
	movlw	04h
u4815:
	clrc
	rlf	(??_UART_BASE_Init+0)+0,f
	rlf	(??_UART_BASE_Init+0)+1,f
	rlf	(??_UART_BASE_Init+0)+2,f
	rlf	(??_UART_BASE_Init+0)+3,f
u4810:
	addlw	-1
	skipz
	goto	u4815
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
	
l5559:	
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
psect	text3,local,class=CODE,delta=2,merge=1,group=2
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\aldiv.c"
	line	5
global __ptext3
__ptext3:	;psect for function ___aldiv
psect	text3
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\aldiv.c"
	line	5
	
___aldiv:	
;incstack = 0
	callstack 4
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	13
	
l9095:	
	clrf	(___aldiv@sign)
	line	14
	
l9097:	
	btfss	(___aldiv@divisor+3),7
	goto	u4641
	goto	u4640
u4641:
	goto	l6367
u4640:
	line	15
	
l9099:	
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
	
l6367:	
	line	18
	btfss	(___aldiv@dividend+3),7
	goto	u4651
	goto	u4650
u4651:
	goto	l9105
u4650:
	line	19
	
l9101:	
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
	
l9103:	
	movlw	low(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	xorwf	(___aldiv@sign),f
	line	22
	
l9105:	
	movlw	high highword(0)
	movwf	(___aldiv@quotient+3)
	movlw	low highword(0)
	movwf	(___aldiv@quotient+2)
	movlw	high(0)
	movwf	(___aldiv@quotient+1)
	movlw	low(0)
	movwf	(___aldiv@quotient)

	line	23
	
l9107:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u4661
	goto	u4660
u4661:
	goto	l9127
u4660:
	line	24
	
l9109:	
	clrf	(___aldiv@counter)
	incf	(___aldiv@counter),f
	line	25
	goto	l9113
	line	26
	
l9111:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u4675:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u4675
	line	27
	movlw	low(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	addwf	(___aldiv@counter),f
	line	25
	
l9113:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u4681
	goto	u4680
u4681:
	goto	l9111
u4680:
	line	30
	
l9115:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u4695:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0)+0
	goto	u4695
	line	31
	
l9117:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u4705
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u4705
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u4705
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u4705:
	skipc
	goto	u4701
	goto	u4700
u4701:
	goto	l9123
u4700:
	line	32
	
l9119:	
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
	
l9121:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	line	35
	
l9123:	
	movlw	01h
u4715:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u4715

	line	36
	
l9125:	
	movlw	01h
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u4721
	goto	u4720
u4721:
	goto	l9115
u4720:
	line	38
	
l9127:	
	movf	((___aldiv@sign)),w
	btfsc	status,2
	goto	u4731
	goto	u4730
u4731:
	goto	l9131
u4730:
	line	39
	
l9129:	
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
	
l9131:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	line	41
	
l6377:	
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
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Timer.c"
	line	220
global __ptext4
__ptext4:	;psect for function _Timer2_Interrupt_Init
psect	text4
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Timer.c"
	line	220
	
_Timer2_Interrupt_Init:	
;incstack = 0
	callstack 5
; Regs used in _Timer2_Interrupt_Init: [status,2]
	line	222
	
l8359:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(18)	;volatile
	line	228
	
l8361:	
	bsf	(146/8),(146)&7	;volatile
	line	235
	
l8363:	
	bsf	(145/8),(145)&7	;volatile
	line	243
	
l8365:	
	bsf	(11)+(7/8),(7)&7	;volatile
	line	249
	
l8367:	
	bsf	(11)+(6/8),(6)&7	;volatile
	line	255
	
l8369:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	261
	
l8371:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	line	262
	
l4943:	
	return
	callstack 0
GLOBAL	__end_of_Timer2_Interrupt_Init
	__end_of_Timer2_Interrupt_Init:
	signat	_Timer2_Interrupt_Init,89
	global	_Startup_Infor

;; *************** function _Startup_Infor *****************
;; Defined at:
;;		line 16 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
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
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
	line	16
global __ptext5
__ptext5:	;psect for function _Startup_Infor
psect	text5
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
	line	16
	
_Startup_Infor:	
;incstack = 0
	callstack 4
; Regs used in _Startup_Infor: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(Startup_Infor@GPIO)
	line	18
	
l9155:	
	goto	l9163
	line	20
	
l9157:	
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
	line	21
	
l9159:	
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
	u5117:
decfsz	((??_Startup_Infor+0)+0),f
	goto	u5117
	decfsz	((??_Startup_Infor+0)+0+1),f
	goto	u5117
	decfsz	((??_Startup_Infor+0)+0+2),f
	goto	u5117
asmopt pop

	line	22
	
l9161:	
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
	line	23
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
	u5127:
decfsz	((??_Startup_Infor+0)+0),f
	goto	u5127
	decfsz	((??_Startup_Infor+0)+0+1),f
	goto	u5127
	decfsz	((??_Startup_Infor+0)+0+2),f
	goto	u5127
asmopt pop

	line	18
	
l9163:	
	movlw	01h
	subwf	(Startup_Infor@index),f
		incf	(((Startup_Infor@index))),w
	btfss	status,2
	goto	u4801
	goto	u4800
u4801:
	goto	l9157
u4800:
	line	25
	
l1801:	
	return
	callstack 0
GLOBAL	__end_of_Startup_Infor
	__end_of_Startup_Infor:
	signat	_Startup_Infor,8313
	global	_Reset_ADC_Register

;; *************** function _Reset_ADC_Register *****************
;; Defined at:
;;		line 27 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
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
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	27
global __ptext6
__ptext6:	;psect for function _Reset_ADC_Register
psect	text6
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
	line	27
	
_Reset_ADC_Register:	
;incstack = 0
	callstack 5
; Regs used in _Reset_ADC_Register: [wreg+status,2+status,0]
	line	30
	
l8355:	
	clrf	(31)	;volatile
	line	31
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	33
	
l8357:	
	movlw	low(07h)
	movwf	(??_Reset_ADC_Register+0)+0
	movf	(??_Reset_ADC_Register+0)+0,w
	iorwf	(159)^080h,f	;volatile
	line	34
	
l1804:	
	return
	callstack 0
GLOBAL	__end_of_Reset_ADC_Register
	__end_of_Reset_ADC_Register:
	signat	_Reset_ADC_Register,89
	global	_Loop

;; *************** function _Loop *****************
;; Defined at:
;;		line 427 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
;; Parameters:    Size  Location     Type
;;  ptimeSysTick    1    wreg     PTR volatile unsigned in
;;		 -> timeSysTick(2), 
;; Auto vars:     Size  Location     Type
;;  ptimeSysTick    1   49[BANK0 ] PTR volatile unsigned in
;;		 -> timeSysTick(2), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 200/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_Compression_Ctrl
;;		_Compression_Run
;;		_Disinfection_Ctrl
;;		_Disionfection_Run
;;		_TimeSysTickUpdate
;;		_TrashDoor_Ctrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	427
global __ptext7
__ptext7:	;psect for function _Loop
psect	text7
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	427
	
_Loop:	
;incstack = 0
	callstack 1
; Regs used in _Loop: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	movwf	(Loop@ptimeSysTick)
	line	430
	
l9307:	
		movlw	4
	xorwf	((_compressionState)),w
	btfsc	status,2
	goto	u5071
	goto	u5070
u5071:
	goto	l9313
u5070:
	
l9309:	
		decf	((_compressionState)),w
	btfsc	status,2
	goto	u5081
	goto	u5080
u5081:
	goto	l9313
u5080:
	line	432
	
l9311:	
	movf	(Loop@ptimeSysTick),w
	movwf	(??_Loop+0)+0
	movf	(??_Loop+0)+0,w
	movwf	(TrashDoor_Ctrl@timeSysTick)
	movlw	(low(_trashDoorState|((0x0)<<8)))&0ffh
	fcall	_TrashDoor_Ctrl
	line	435
	
l9313:	
	fcall	_Compression_Ctrl
	line	436
	
l9315:	
	movf	(Loop@ptimeSysTick),w
	fcall	_Compression_Run
	line	438
	
l9317:	
	fcall	_Disinfection_Ctrl
	line	439
	
l9319:	
	fcall	_Disionfection_Run
	line	441
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Loop@ptimeSysTick),w
	fcall	_TimeSysTickUpdate
	line	442
	
l4342:	
	return
	callstack 0
GLOBAL	__end_of_Loop
	__end_of_Loop:
	signat	_Loop,4217
	global	_TrashDoor_Ctrl

;; *************** function _TrashDoor_Ctrl *****************
;; Defined at:
;;		line 195 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
;; Parameters:    Size  Location     Type
;;  state           1    wreg     PTR enum E1105
;;		 -> trashDoorState(1), 
;;  timeSysTick     1   40[BANK0 ] PTR volatile unsigned in
;;		 -> timeSysTick(2), 
;; Auto vars:     Size  Location     Type
;;  state           1   47[BANK0 ] PTR enum E1105
;;		 -> trashDoorState(1), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_GPIO_Read
;;		_IRSensor_Read
;;		_TrashDoor_Close
;;		_TrashDoor_Open
;;		___ftge
;;		___lwmod
;; This function is called by:
;;		_Loop
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	195
global __ptext8
__ptext8:	;psect for function _TrashDoor_Ctrl
psect	text8
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	195
	
_TrashDoor_Ctrl:	
;incstack = 0
	callstack 1
; Regs used in _TrashDoor_Ctrl: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(TrashDoor_Ctrl@state)
	line	198
	
l9169:	
	movf	0+(_SW1)+01h,w
	movwf	(??_TrashDoor_Ctrl+0)+0
	movf	(??_TrashDoor_Ctrl+0)+0,w
	movwf	(GPIO_Read@Pin)
	movf	(_SW1),w
	fcall	_GPIO_Read
	xorlw	0
	skipnz
	goto	u4821
	goto	u4820
u4821:
	goto	l9189
u4820:
	goto	l9175
	line	202
	
l9173:	
	asmopt push
asmopt off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_TrashDoor_Ctrl+0)+0+2)
movlw	8
movwf	((??_TrashDoor_Ctrl+0)+0+1)
	movlw	118
movwf	((??_TrashDoor_Ctrl+0)+0)
	u5137:
decfsz	((??_TrashDoor_Ctrl+0)+0),f
	goto	u5137
	decfsz	((??_TrashDoor_Ctrl+0)+0+1),f
	goto	u5137
	decfsz	((??_TrashDoor_Ctrl+0)+0+2),f
	goto	u5137
	nop
asmopt pop

	line	200
	
l9175:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_SW1)+01h,w
	movwf	(??_TrashDoor_Ctrl+0)+0
	movf	(??_TrashDoor_Ctrl+0)+0,w
	movwf	(GPIO_Read@Pin)
	movf	(_SW1),w
	fcall	_GPIO_Read
	xorlw	0
	skipz
	goto	u4831
	goto	u4830
u4831:
	goto	l9173
u4830:
	line	204
	
l9177:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
	movf	(indf),w
	btfsc	status,2
	goto	u4841
	goto	u4840
u4841:
	goto	l9185
u4840:
	
l9179:	
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
		movlw	2
	xorwf	(indf),w
	btfsc	status,2
	goto	u4851
	goto	u4850
u4851:
	goto	l9185
u4850:
	line	206
	
l9181:	
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
	clrf	indf
	incf	indf,f
	line	207
	
l9183:	
	movlw	high highword(0)
	movwf	(_timeBuffer+3)
	movlw	low highword(0)
	movwf	(_timeBuffer+2)
	movlw	high(0)
	movwf	(_timeBuffer+1)
	movlw	low(0)
	movwf	(_timeBuffer)

	line	209
	goto	l9211
	line	212
	
l9185:	
	movlw	low(03h)
	movwf	(??_TrashDoor_Ctrl+0)+0
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
	movf	(??_TrashDoor_Ctrl+0)+0,w
	movwf	indf
	goto	l9183
	line	219
	
l9189:	
	movlw	0B8h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lwmod@divisor)
	movlw	0Bh
	movwf	((___lwmod@divisor))+1
	movf	(TrashDoor_Ctrl@timeSysTick),w
	movwf	fsr0
	movf	indf,w
	movwf	(___lwmod@dividend)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lwmod@dividend+1)
	fcall	___lwmod
	movf	((0+(?___lwmod))),w
iorwf	((1+(?___lwmod))),w
	btfss	status,2
	goto	u4861
	goto	u4860
u4861:
	goto	l9211
u4860:
	line	221
	
l9191:	
	fcall	_IRSensor_Read
	movf	(0+(?_IRSensor_Read)),w
	movwf	(_TrashDoor_Ctrl$3860)
	movf	(1+(?_IRSensor_Read)),w
	movwf	(_TrashDoor_Ctrl$3860+1)
	movf	(2+(?_IRSensor_Read)),w
	movwf	(_TrashDoor_Ctrl$3860+2)
	movf	(_TrashDoor_Ctrl$3860),w
	movwf	(___ftge@ff1)
	movf	(_TrashDoor_Ctrl$3860+1),w
	movwf	(___ftge@ff1+1)
	movf	(_TrashDoor_Ctrl$3860+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x9a
	movwf	(___ftge@ff2)
	movlw	0x99
	movwf	(___ftge@ff2+1)
	movlw	0x3f
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u4871
	goto	u4870
u4871:
	goto	l9205
u4870:
	line	223
	
l9193:	
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
		movlw	5
	bcf	status, 7	;select IRP bank0
	xorwf	(indf),w
	btfsc	status,2
	goto	u4881
	goto	u4880
u4881:
	goto	l9211
u4880:
	
l9195:	
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
		movlw	6
	xorwf	(indf),w
	btfsc	status,2
	goto	u4891
	goto	u4890
u4891:
	goto	l9211
u4890:
	line	225
	
l9197:	
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
		movlw	2
	xorwf	(indf),w
	btfss	status,2
	goto	u4901
	goto	u4900
u4901:
	goto	l9201
u4900:
	line	227
	
l9199:	
	movlw	low(06h)
	movwf	(??_TrashDoor_Ctrl+0)+0
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
	movf	(??_TrashDoor_Ctrl+0)+0,w
	movwf	indf
	line	228
	goto	l9183
	line	231
	
l9201:	
	movlw	low(05h)
	movwf	(??_TrashDoor_Ctrl+0)+0
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
	movf	(??_TrashDoor_Ctrl+0)+0,w
	movwf	indf
	goto	l9183
	line	239
	
l9205:	
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
		movlw	6
	bcf	status, 7	;select IRP bank0
	xorwf	(indf),w
	btfss	status,2
	goto	u4911
	goto	u4910
u4911:
	goto	l9211
u4910:
	line	241
	
l9207:	
	movlw	low(02h)
	movwf	(??_TrashDoor_Ctrl+0)+0
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
	movf	(??_TrashDoor_Ctrl+0)+0,w
	movwf	indf
	goto	l9183
	line	248
	
l9211:	
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	(indf),w
	btfsc	status,2
	goto	u4921
	goto	u4920
u4921:
	goto	l9217
u4920:
	
l9213:	
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
		decf	(indf),w
	btfsc	status,2
	goto	u4931
	goto	u4930
u4931:
	goto	l9217
u4930:
	
l9215:	
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
		movlw	2
	xorwf	(indf),w
	btfss	status,2
	goto	u4941
	goto	u4940
u4941:
	goto	l9219
u4940:
	line	250
	
l9217:	
	movf	(TrashDoor_Ctrl@state),w
	fcall	_TrashDoor_Close
	line	251
	goto	l4287
	line	254
	
l9219:	
	movf	(TrashDoor_Ctrl@state),w
	fcall	_TrashDoor_Open
	line	256
	
l4287:	
	return
	callstack 0
GLOBAL	__end_of_TrashDoor_Ctrl
	__end_of_TrashDoor_Ctrl:
	signat	_TrashDoor_Ctrl,8313
	global	_TrashDoor_Open

;; *************** function _TrashDoor_Open *****************
;; Defined at:
;;		line 55 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
;; Parameters:    Size  Location     Type
;;  state           1    wreg     PTR enum E1105
;;		 -> trashDoorState(1), 
;; Auto vars:     Size  Location     Type
;;  state           1    3[BANK0 ] PTR enum E1105
;;		 -> trashDoorState(1), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_GPIO_Write
;;		_Motor_Forward_Start
;;		_Motor_Stop
;; This function is called by:
;;		_TrashDoor_Ctrl
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	55
global __ptext9
__ptext9:	;psect for function _TrashDoor_Open
psect	text9
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	55
	
_TrashDoor_Open:	
;incstack = 0
	callstack 1
; Regs used in _TrashDoor_Open: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(TrashDoor_Open@state)
	line	57
	
l8935:	
	movf	(TrashDoor_Open@state),w
	movwf	fsr0
		movlw	5
	xorwf	(indf),w
	btfss	status,2
	goto	u4411
	goto	u4410
u4411:
	goto	l8949
u4410:
	line	59
	
l8937:	
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u4421
	movf	(_timeBuffer+2),w
	btfss	status,2
	goto	u4421
	movf	(_timeBuffer+1),w
	btfss	status,2
	goto	u4421
	movlw	11
	subwf	(_timeBuffer),w
	skipz
	goto	u4423
u4423:
	btfsc	status,0
	goto	u4421
	goto	u4420

u4421:
	goto	l8943
u4420:
	line	63
	
l8939:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_BUZZER)+01h,w
	movwf	(??_TrashDoor_Open+0)+0
	movf	(??_TrashDoor_Open+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(_BUZZER),w
	fcall	_GPIO_Write
	line	66
	movlw	(low(_Door_Motor|((0x0)<<8)))&0ffh
	fcall	_Motor_Forward_Start
	line	67
	
l8941:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_timeBuffer+3)
	movlw	0
	movwf	(_timeBuffer+2)
	movlw	0
	movwf	(_timeBuffer+1)
	movlw	0Bh
	movwf	(_timeBuffer)

	line	71
	goto	l4242
	line	72
	
l8943:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u4430
	movf	(_timeBuffer+2),w
	btfss	status,2
	goto	u4430
	movf	(_timeBuffer+1),w
	btfss	status,2
	goto	u4430
	movlw	101
	subwf	(_timeBuffer),w
	skipz
	goto	u4433
u4433:
	btfss	status,0
	goto	u4431
	goto	u4430

u4431:
	goto	l4242
u4430:
	line	76
	
l8945:	
	movlw	(low(_Door_Motor|((0x0)<<8)))&0ffh
	fcall	_Motor_Stop
	line	80
	
l8947:	
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_TrashDoor_Open+0)+0
	movf	(TrashDoor_Open@state),w
	movwf	fsr0
	movf	(??_TrashDoor_Open+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l4242
	line	84
	
l8949:	
	movf	(TrashDoor_Open@state),w
	movwf	fsr0
		movlw	3
	xorwf	(indf),w
	btfss	status,2
	goto	u4441
	goto	u4440
u4441:
	goto	l4242
u4440:
	line	86
	
l8951:	
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u4451
	movf	(_timeBuffer+2),w
	btfss	status,2
	goto	u4451
	movf	(_timeBuffer+1),w
	btfss	status,2
	goto	u4451
	movlw	11
	subwf	(_timeBuffer),w
	skipz
	goto	u4453
u4453:
	btfsc	status,0
	goto	u4451
	goto	u4450

u4451:
	goto	l8957
u4450:
	line	90
	
l8953:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_BUZZER)+01h,w
	movwf	(??_TrashDoor_Open+0)+0
	movf	(??_TrashDoor_Open+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(_BUZZER),w
	fcall	_GPIO_Write
	line	93
	movlw	(low(_Door_Motor|((0x0)<<8)))&0ffh
	fcall	_Motor_Forward_Start
	goto	l8941
	line	98
	
l8957:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u4460
	movf	(_timeBuffer+2),w
	btfss	status,2
	goto	u4460
	movf	(_timeBuffer+1),w
	btfss	status,2
	goto	u4460
	movlw	101
	subwf	(_timeBuffer),w
	skipz
	goto	u4463
u4463:
	btfss	status,0
	goto	u4461
	goto	u4460

u4461:
	goto	l4242
u4460:
	line	102
	
l8959:	
	movlw	(low(_Door_Motor|((0x0)<<8)))&0ffh
	fcall	_Motor_Stop
	line	106
	
l8961:	
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_TrashDoor_Open+0)+0
	movf	(TrashDoor_Open@state),w
	movwf	fsr0
	movf	(??_TrashDoor_Open+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	110
	
l4242:	
	return
	callstack 0
GLOBAL	__end_of_TrashDoor_Open
	__end_of_TrashDoor_Open:
	signat	_TrashDoor_Open,4217
	global	_TrashDoor_Close

;; *************** function _TrashDoor_Close *****************
;; Defined at:
;;		line 112 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
;; Parameters:    Size  Location     Type
;;  state           1    wreg     PTR enum E1105
;;		 -> trashDoorState(1), 
;; Auto vars:     Size  Location     Type
;;  state           1    3[BANK0 ] PTR enum E1105
;;		 -> trashDoorState(1), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_GPIO_Write
;;		_Motor_Reverse_Start
;;		_Motor_Stop
;; This function is called by:
;;		_TrashDoor_Ctrl
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	112
global __ptext10
__ptext10:	;psect for function _TrashDoor_Close
psect	text10
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	112
	
_TrashDoor_Close:	
;incstack = 0
	callstack 1
; Regs used in _TrashDoor_Close: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(TrashDoor_Close@state)
	line	114
	
l8963:	
	movf	(TrashDoor_Close@state),w
	movwf	fsr0
		movlw	2
	xorwf	(indf),w
	btfss	status,2
	goto	u4471
	goto	u4470
u4471:
	goto	l8971
u4470:
	line	116
	
l8965:	
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u4480
	movf	(_timeBuffer+2),w
	btfss	status,2
	goto	u4480
	movlw	234
	subwf	(_timeBuffer+1),w
	skipz
	goto	u4483
	movlw	97
	subwf	(_timeBuffer),w
	skipz
	goto	u4483
u4483:
	btfss	status,0
	goto	u4481
	goto	u4480

u4481:
	goto	l4252
u4480:
	line	118
	
l8967:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(TrashDoor_Close@state),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	indf,f
	line	119
	
l8969:	
	movlw	high highword(0)
	movwf	(_timeBuffer+3)
	movlw	low highword(0)
	movwf	(_timeBuffer+2)
	movlw	high(0)
	movwf	(_timeBuffer+1)
	movlw	low(0)
	movwf	(_timeBuffer)

	goto	l4252
	line	122
	
l8971:	
	movf	(TrashDoor_Close@state),w
	movwf	fsr0
		decf	(indf),w
	btfss	status,2
	goto	u4491
	goto	u4490
u4491:
	goto	l4252
u4490:
	line	125
	
l8973:	
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u4501
	movf	(_timeBuffer+2),w
	btfss	status,2
	goto	u4501
	movf	(_timeBuffer+1),w
	btfss	status,2
	goto	u4501
	movlw	11
	subwf	(_timeBuffer),w
	skipz
	goto	u4503
u4503:
	btfsc	status,0
	goto	u4501
	goto	u4500

u4501:
	goto	l8979
u4500:
	line	130
	
l8975:	
	movlw	(low(_Door_Motor|((0x0)<<8)))&0ffh
	fcall	_Motor_Reverse_Start
	line	131
	
l8977:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_timeBuffer+3)
	movlw	0
	movwf	(_timeBuffer+2)
	movlw	0
	movwf	(_timeBuffer+1)
	movlw	0Bh
	movwf	(_timeBuffer)

	line	134
	goto	l4252
	line	135
	
l8979:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u4510
	movf	(_timeBuffer+2),w
	btfss	status,2
	goto	u4510
	movf	(_timeBuffer+1),w
	btfss	status,2
	goto	u4510
	movlw	101
	subwf	(_timeBuffer),w
	skipz
	goto	u4513
u4513:
	btfss	status,0
	goto	u4511
	goto	u4510

u4511:
	goto	l4252
u4510:
	line	139
	
l8981:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_BUZZER)+01h,w
	movwf	(??_TrashDoor_Close+0)+0
	movf	(??_TrashDoor_Close+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(_BUZZER),w
	fcall	_GPIO_Write
	line	141
	movlw	(low(_Door_Motor|((0x0)<<8)))&0ffh
	fcall	_Motor_Stop
	line	145
	
l8983:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(TrashDoor_Close@state),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	148
	
l4252:	
	return
	callstack 0
GLOBAL	__end_of_TrashDoor_Close
	__end_of_TrashDoor_Close:
	signat	_TrashDoor_Close,4217
	global	_IRSensor_Read

;; *************** function _IRSensor_Read *****************
;; Defined at:
;;		line 150 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  adc_value       3   37[BANK0 ] void 
;;  index           1   36[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_ADC_Read
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___lbtoft
;;		___lwtoft
;; This function is called by:
;;		_TrashDoor_Ctrl
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	150
global __ptext11
__ptext11:	;psect for function _IRSensor_Read
psect	text11
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	150
	
_IRSensor_Read:	
;incstack = 0
	callstack 2
; Regs used in _IRSensor_Read: [wreg+status,2+status,0+pclath+cstack]
	line	152
	
l8985:	
	movlw	0x0
	movwf	(IRSensor_Read@adc_value)
	movlw	0x0
	movwf	(IRSensor_Read@adc_value+1)
	movlw	0x0
	movwf	(IRSensor_Read@adc_value+2)
	line	153
	
l8987:	
	line	154
	
l8989:	
	clrf	(IRSensor_Read@index)
	line	156
	
l8993:	
	movlw	low(0)
	fcall	_ADC_Read
	movf	(1+(?_ADC_Read)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lwtoft@c+1)
	movf	(0+(?_ADC_Read)),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftadd@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftadd@f1+2)
	movf	(IRSensor_Read@adc_value),w
	movwf	(___ftadd@f2)
	movf	(IRSensor_Read@adc_value+1),w
	movwf	(___ftadd@f2+1)
	movf	(IRSensor_Read@adc_value+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(IRSensor_Read@adc_value)
	movf	(1+(?___ftadd)),w
	movwf	(IRSensor_Read@adc_value+1)
	movf	(2+(?___ftadd)),w
	movwf	(IRSensor_Read@adc_value+2)
	line	157
	movf	(IRSensor_Read@adc_value),w
	movwf	(___ftge@ff1)
	movf	(IRSensor_Read@adc_value+1),w
	movwf	(___ftge@ff1+1)
	movf	(IRSensor_Read@adc_value+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xc8
	movwf	(___ftge@ff2+1)
	movlw	0x42
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u4521
	goto	u4520
u4521:
	goto	l8997
u4520:
	goto	l9001
	line	154
	
l8997:	
	movlw	low(01h)
	movwf	(??_IRSensor_Read+0)+0
	movf	(??_IRSensor_Read+0)+0,w
	addwf	(IRSensor_Read@index),f
	
l8999:	
	movlw	low(0Bh)
	subwf	(IRSensor_Read@index),w
	skipc
	goto	u4531
	goto	u4530
u4531:
	goto	l8993
u4530:
	line	163
	
l9001:	
	movf	(IRSensor_Read@index),w
	fcall	___lbtoft
	movf	(0+(?___lbtoft)),w
	movwf	(___ftdiv@f2)
	movf	(1+(?___lbtoft)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___lbtoft)),w
	movwf	(___ftdiv@f2+2)
	movf	(IRSensor_Read@adc_value),w
	movwf	(___ftdiv@f1)
	movf	(IRSensor_Read@adc_value+1),w
	movwf	(___ftdiv@f1+1)
	movf	(IRSensor_Read@adc_value+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(IRSensor_Read@adc_value)
	movf	(1+(?___ftdiv)),w
	movwf	(IRSensor_Read@adc_value+1)
	movf	(2+(?___ftdiv)),w
	movwf	(IRSensor_Read@adc_value+2)
	line	166
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x80
	movwf	(___ftdiv@f2+1)
	movlw	0x44
	movwf	(___ftdiv@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xa0
	movwf	(___ftmul@f1+1)
	movlw	0x40
	movwf	(___ftmul@f1+2)
	movf	(IRSensor_Read@adc_value),w
	movwf	(___ftmul@f2)
	movf	(IRSensor_Read@adc_value+1),w
	movwf	(___ftmul@f2+1)
	movf	(IRSensor_Read@adc_value+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(IRSensor_Read@adc_value)
	movf	(1+(?___ftdiv)),w
	movwf	(IRSensor_Read@adc_value+1)
	movf	(2+(?___ftdiv)),w
	movwf	(IRSensor_Read@adc_value+2)
	line	167
	
l9003:	
	movf	(IRSensor_Read@adc_value),w
	movwf	(?_IRSensor_Read)
	movf	(IRSensor_Read@adc_value+1),w
	movwf	(?_IRSensor_Read+1)
	movf	(IRSensor_Read@adc_value+2),w
	movwf	(?_IRSensor_Read+2)
	line	168
	
l4258:	
	return
	callstack 0
GLOBAL	__end_of_IRSensor_Read
	__end_of_IRSensor_Read:
	signat	_IRSensor_Read,91
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_IRSensor_Read
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=2
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\lwtoft.c"
	line	28
global __ptext12
__ptext12:	;psect for function ___lwtoft
psect	text12
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\lwtoft.c"
	line	28
	
___lwtoft:	
;incstack = 0
	callstack 2
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l8931:	
	movf	(___lwtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lwtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	low(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	line	31
	
l6719:	
	return
	callstack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___lbtoft

;; *************** function ___lbtoft *****************
;; Defined at:
;;		line 27 in file "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\lbtoft.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_IRSensor_Read
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=2
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\lbtoft.c"
	line	27
global __ptext13
__ptext13:	;psect for function ___lbtoft
psect	text13
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\lbtoft.c"
	line	27
	
___lbtoft:	
;incstack = 0
	callstack 2
; Regs used in ___lbtoft: [wreg+status,2+status,0+pclath+cstack]
	movwf	(___lbtoft@c)
	line	29
	
l8905:	
	movf	(___lbtoft@c),w
	movwf	((??___lbtoft+0)+0)
	clrf	((??___lbtoft+0)+0+1)
	clrf	((??___lbtoft+0)+0+2)
	movf	0+(??___lbtoft+0)+0,w
	movwf	(___ftpack@arg)
	movf	1+(??___lbtoft+0)+0,w
	movwf	(___ftpack@arg+1)
	movf	2+(??___lbtoft+0)+0,w
	movwf	(___ftpack@arg+2)
	movlw	low(08Eh)
	movwf	(??___lbtoft+3)+0
	movf	(??___lbtoft+3)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lbtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lbtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lbtoft+2)
	line	30
	
l6623:	
	return
	callstack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
	signat	___lbtoft,4219
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;;  f2              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   11[BANK0 ] unsigned um
;;  sign            1   15[BANK0 ] unsigned char 
;;  cntr            1   14[BANK0 ] unsigned char 
;;  exp             1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_IRSensor_Read
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=2
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\ftmul.c"
	line	62
global __ptext14
__ptext14:	;psect for function ___ftmul
psect	text14
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\ftmul.c"
	line	62
	
___ftmul:	
;incstack = 0
	callstack 2
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l8849:	
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	(((___ftmul@exp))),w
	btfss	status,2
	goto	u4231
	goto	u4230
u4231:
	goto	l8855
u4230:
	line	68
	
l8851:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l6571
	line	69
	
l8855:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	(((___ftmul@sign))),w
	btfss	status,2
	goto	u4241
	goto	u4240
u4241:
	goto	l8861
u4240:
	line	70
	
l8857:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l6571
	line	71
	
l8861:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	72
	
l8863:	
	movf	0+(___ftmul@f1)+02h,w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@sign)
	line	73
	
l8865:	
	movf	0+(___ftmul@f2)+02h,w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	xorwf	(___ftmul@sign),f
	line	74
	
l8867:	
	movlw	low(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	75
	
l8869:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l8871:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l8873:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l8875:	
	movlw	low(0)
	movwf	(___ftmul@f3_as_product)
	movlw	high(0)
	movwf	(___ftmul@f3_as_product+1)
	movlw	low highword(0)
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l8877:	
	movlw	low(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	line	136
	
l8879:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4251
	goto	u4250
u4251:
	goto	l8883
u4250:
	line	137
	
l8881:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u4261
	addwf	(___ftmul@f3_as_product+1),f
u4261:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u4262
	addwf	(___ftmul@f3_as_product+2),f
u4262:

	line	138
	
l8883:	
	movlw	01h
u4275:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u4275

	line	139
	
l8885:	
	movlw	01h
u4285:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u4285
	line	140
	
l8887:	
	movlw	01h
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u4291
	goto	u4290
u4291:
	goto	l8879
u4290:
	line	143
	
l8889:	
	movlw	low(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	line	145
	
l8891:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4301
	goto	u4300
u4301:
	goto	l8895
u4300:
	line	146
	
l8893:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u4311
	addwf	(___ftmul@f3_as_product+1),f
u4311:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u4312
	addwf	(___ftmul@f3_as_product+2),f
u4312:

	line	147
	
l8895:	
	movlw	01h
u4325:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u4325

	line	148
	
l8897:	
	movlw	01h
u4335:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u4335

	line	149
	
l8899:	
	movlw	01h
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u4341
	goto	u4340
u4341:
	goto	l8891
u4340:
	line	156
	
l8901:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	line	157
	
l6571:	
	return
	callstack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    2[COMMON] float 
;;  ff2             3    5[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_IRSensor_Read
;;		_TrashDoor_Ctrl
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=2
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\ftge.c"
	line	4
global __ptext15
__ptext15:	;psect for function ___ftge
psect	text15
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\ftge.c"
	line	4
	
___ftge:	
;incstack = 0
	callstack 4
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l7981:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2491
	goto	u2490
u2491:
	goto	l7985
u2490:
	line	7
	
l7983:	
	movf	(___ftge@ff1),w
	sublw	0
	movwf	(___ftge@ff1)
	movf	(___ftge@ff1+1),w
	skipc
	incfsz	(___ftge@ff1+1),w
	sublw	0
	movwf	1+(___ftge@ff1)
	
	movf	(___ftge@ff1+2),w
	skipc
	incfsz	(___ftge@ff1+2),w
	sublw	080h
	movwf	2+(___ftge@ff1)
	line	8
	
l7985:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l7989
u2500:
	line	9
	
l7987:	
	movf	(___ftge@ff2),w
	sublw	0
	movwf	(___ftge@ff2)
	movf	(___ftge@ff2+1),w
	skipc
	incfsz	(___ftge@ff2+1),w
	sublw	0
	movwf	1+(___ftge@ff2)
	
	movf	(___ftge@ff2+2),w
	skipc
	incfsz	(___ftge@ff2+2),w
	sublw	080h
	movwf	2+(___ftge@ff2)
	line	10
	
l7989:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l7991:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l7993:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u2515
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u2515
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u2515:
	skipnc
	goto	u2511
	goto	u2510
u2511:
	goto	l7997
u2510:
	
l7995:	
	clrc
	
	goto	l6565
	
l7997:	
	setc
	
	line	13
	
l6565:	
	return
	callstack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 56 in file "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   16[BANK0 ] float 
;;  f1              3   19[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   27[BANK0 ] float 
;;  sign            1   31[BANK0 ] unsigned char 
;;  exp             1   30[BANK0 ] unsigned char 
;;  cntr            1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   16[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_IRSensor_Read
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=2
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\ftdiv.c"
	line	56
global __ptext16
__ptext16:	;psect for function ___ftdiv
psect	text16
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\ftdiv.c"
	line	56
	
___ftdiv:	
;incstack = 0
	callstack 2
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l8807:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	(((___ftdiv@exp))),w
	btfss	status,2
	goto	u4171
	goto	u4170
u4171:
	goto	l8813
u4170:
	line	64
	
l8809:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l6556
	line	65
	
l8813:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	(((___ftdiv@sign))),w
	btfss	status,2
	goto	u4181
	goto	u4180
u4181:
	goto	l8819
u4180:
	line	66
	
l8815:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l6556
	line	67
	
l8819:	
	movlw	low(0)
	movwf	(___ftdiv@f3)
	movlw	high(0)
	movwf	(___ftdiv@f3+1)
	movlw	low highword(0)
	movwf	(___ftdiv@f3+2)
	line	68
	
l8821:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l8823:	
	movf	0+(___ftdiv@f1)+02h,w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@sign)
	line	70
	movf	0+(___ftdiv@f2)+02h,w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	xorwf	(___ftdiv@sign),f
	line	71
	movlw	low(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	72
	
l8825:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	
l8827:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l8829:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	
l8831:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	
l8833:	
	movlw	low(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	line	78
	
l8835:	
	movlw	01h
u4195:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u4195
	line	79
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u4205
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u4205
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u4205:
	skipc
	goto	u4201
	goto	u4200
u4201:
	goto	l8841
u4200:
	line	80
	
l8837:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	81
	
l8839:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	83
	
l8841:	
	movlw	01h
u4215:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u4215
	line	84
	
l8843:	
	movlw	01h
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u4221
	goto	u4220
u4221:
	goto	l8835
u4220:
	line	85
	
l8845:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	line	86
	
l6556:	
	return
	callstack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3    4[BANK0 ] float 
;;  f2              3    7[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   16[BANK0 ] unsigned char 
;;  exp2            1   15[BANK0 ] unsigned char 
;;  sign            1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    4[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_IRSensor_Read
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=2
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\ftadd.c"
	line	86
global __ptext17
__ptext17:	;psect for function ___ftadd
psect	text17
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\ftadd.c"
	line	86
	
___ftadd:	
;incstack = 0
	callstack 2
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l8737:	
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	movf	((___ftadd@exp1)),w
	btfsc	status,2
	goto	u3931
	goto	u3930
u3931:
	goto	l8743
u3930:
	
l8739:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3941
	goto	u3940
u3941:
	goto	l8747
u3940:
	
l8741:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	low(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3951
	goto	u3950
u3951:
	goto	l8747
u3950:
	line	93
	
l8743:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l6525
	line	94
	
l8747:	
	movf	((___ftadd@exp2)),w
	btfsc	status,2
	goto	u3961
	goto	u3960
u3961:
	goto	l6528
u3960:
	
l8749:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3971
	goto	u3970
u3971:
	goto	l8753
u3970:
	
l8751:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	low(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3981
	goto	u3980
u3981:
	goto	l8753
u3980:
	
l6528:	
	line	95
	goto	l6525
	line	96
	
l8753:	
	movlw	low(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l8755:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u3991
	goto	u3990
u3991:
	goto	l6529
u3990:
	line	98
	
l8757:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l6529:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4001
	goto	u4000
u4001:
	goto	l6530
u4000:
	line	100
	
l8759:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l6530:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l8761:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l8763:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u4011
	goto	u4010
u4011:
	goto	l8775
u4010:
	line	110
	
l8765:	
	movlw	01h
u4025:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u4025
	line	111
	movlw	01h
	subwf	(___ftadd@exp2),f
	line	112
	
l8767:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4031
	goto	u4030
u4031:
	goto	l8773
u4030:
	
l8769:	
	movlw	01h
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u4041
	goto	u4040
u4041:
	goto	l8765
u4040:
	goto	l8773
	line	114
	
l8771:	
	movlw	01h
u4055:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u4055

	line	115
	movlw	low(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	line	113
	
l8773:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4061
	goto	u4060
u4061:
	goto	l8771
u4060:
	goto	l6539
	line	117
	
l8775:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4071
	goto	u4070
u4071:
	goto	l6539
u4070:
	line	121
	
l8777:	
	movlw	01h
u4085:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u4085
	line	122
	movlw	01h
	subwf	(___ftadd@exp1),f
	line	123
	
l8779:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4091
	goto	u4090
u4091:
	goto	l8785
u4090:
	
l8781:	
	movlw	01h
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u4101
	goto	u4100
u4101:
	goto	l8777
u4100:
	goto	l8785
	line	125
	
l8783:	
	movlw	01h
u4115:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u4115

	line	126
	movlw	low(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	line	124
	
l8785:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4121
	goto	u4120
u4121:
	goto	l8783
u4120:
	line	129
	
l6539:	
	btfss	(___ftadd@sign),(7)&7
	goto	u4131
	goto	u4130
u4131:
	goto	l8789
u4130:
	line	131
	
l8787:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	line	134
	
l8789:	
	btfss	(___ftadd@sign),(6)&7
	goto	u4141
	goto	u4140
u4141:
	goto	l8793
u4140:
	line	136
	
l8791:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	139
	
l8793:	
	clrf	(___ftadd@sign)
	line	140
	
l8795:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u4151
	addwf	(___ftadd@f2+1),f
u4151:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u4152
	addwf	(___ftadd@f2+2),f
u4152:

	line	141
	
l8797:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4161
	goto	u4160
u4161:
	goto	l8803
u4160:
	line	142
	
l8799:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l8801:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l8803:	
	movf	(___ftadd@f2),w
	movwf	(___ftpack@arg)
	movf	(___ftadd@f2+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftadd@f2+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	line	148
	
l6525:	
	return
	callstack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    2[COMMON] unsigned um
;;  exp             1    5[COMMON] unsigned char 
;;  sign            1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    2[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lbtoft
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=2
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\float.c"
	line	62
global __ptext18
__ptext18:	;psect for function ___ftpack
psect	text18
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\float.c"
	line	62
	
___ftpack:	
;incstack = 0
	callstack 2
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l8669:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u3741
	goto	u3740
u3741:
	goto	l8673
u3740:
	
l8671:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u3751
	goto	u3750
u3751:
	goto	l8679
u3750:
	line	65
	
l8673:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l6504
	line	67
	
l8677:	
	movlw	low(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u3765:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3765

	line	66
	
l8679:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3771
	goto	u3770
u3771:
	goto	l8677
u3770:
	goto	l6508
	line	71
	
l8681:	
	movlw	low(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l8683:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l8685:	
	movlw	01h
u3785:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3785

	line	74
	
l6508:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3791
	goto	u3790
u3791:
	goto	l8681
u3790:
	goto	l8689
	line	76
	
l8687:	
	movlw	01h
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u3805:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u3805
	line	75
	
l8689:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u3811
	goto	u3810
u3811:
	goto	l6515
u3810:
	
l8691:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u3821
	goto	u3820
u3821:
	goto	l8687
u3820:
	
l6515:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u3831
	goto	u3830
u3831:
	goto	l6516
u3830:
	line	80
	
l8693:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l6516:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l8695:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u3845:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u3840:
	addlw	-1
	skipz
	goto	u3845
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l8697:	
	movf	((___ftpack@sign)),w
	btfsc	status,2
	goto	u3851
	goto	u3850
u3851:
	goto	l6517
u3850:
	line	84
	
l8699:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l6517:	
	line	85
	line	86
	
l6504:	
	return
	callstack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_ADC_Read

;; *************** function _ADC_Read *****************
;; Defined at:
;;		line 96 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\ADC.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_ADC_BASE_Init
;; This function is called by:
;;		_IRSensor_Read
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\ADC.c"
	line	96
global __ptext19
__ptext19:	;psect for function _ADC_Read
psect	text19
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\ADC.c"
	line	96
	
_ADC_Read:	
;incstack = 0
	callstack 2
; Regs used in _ADC_Read: [wreg+status,2+status,0+pclath+cstack]
	movwf	(ADC_Read@channel)
	line	98
	
l7799:	
	fcall	_ADC_BASE_Init
	line	99
	
l7801:	
	asmopt push
asmopt off
movlw	7
movwf	((??_ADC_Read+0)+0+1)
	movlw	125
movwf	((??_ADC_Read+0)+0)
	u5147:
decfsz	((??_ADC_Read+0)+0),f
	goto	u5147
	decfsz	((??_ADC_Read+0)+0+1),f
	goto	u5147
asmopt pop

	line	101
	
l7803:	
	movf	(ADC_Read@channel),w
	movwf	(??_ADC_Read+0)+0
	movlw	(03h)-1
u2075:
	clrc
	rlf	(??_ADC_Read+0)+0,f
	addlw	-1
	skipz
	goto	u2075
	clrc
	rlf	(??_ADC_Read+0)+0,w
	movwf	(??_ADC_Read+1)+0
	movf	(??_ADC_Read+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(31),f	;volatile
	line	102
	
l7805:	
	bsf	(248/8),(248)&7	;volatile
	line	103
	
l7807:	
	asmopt push
asmopt off
movlw	7
movwf	((??_ADC_Read+0)+0+1)
	movlw	125
movwf	((??_ADC_Read+0)+0)
	u5157:
decfsz	((??_ADC_Read+0)+0),f
	goto	u5157
	decfsz	((??_ADC_Read+0)+0+1),f
	goto	u5157
asmopt pop

	line	108
	
l7809:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	114
	
l1198:	
	btfsc	(250/8),(250)&7	;volatile
	goto	u2081
	goto	u2080
u2081:
	goto	l1198
u2080:
	line	117
	
l7811:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	119
	
l7813:	
	movlw	low(07h)
	movwf	(??_ADC_Read+0)+0
	movf	(??_ADC_Read+0)+0,w
	iorwf	(159)^080h,f	;volatile
	line	120
	
l7815:	
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop
	asmopt pop

	line	123
	
l7817:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(?_ADC_Read+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(?_ADC_Read)
	line	124
	
l1201:	
	return
	callstack 0
GLOBAL	__end_of_ADC_Read
	__end_of_ADC_Read:
	signat	_ADC_Read,4218
	global	_ADC_BASE_Init

;; *************** function _ADC_BASE_Init *****************
;; Defined at:
;;		line 5 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\ADC.c"
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
;;		_ADC_Read
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	5
global __ptext20
__ptext20:	;psect for function _ADC_BASE_Init
psect	text20
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\ADC.c"
	line	5
	
_ADC_BASE_Init:	
;incstack = 0
	callstack 2
; Regs used in _ADC_BASE_Init: [wreg+status,2+status,0]
	line	8
	
l7711:	
	clrf	(31)	;volatile
	line	9
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	34
	
l7713:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(31),w	;volatile
	line	88
	
l7715:	
	movlw	low(08Eh)
	movwf	(??_ADC_BASE_Init+0)+0
	movf	(??_ADC_BASE_Init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(159)^080h,f	;volatile
	line	89
	
l1192:	
	return
	callstack 0
GLOBAL	__end_of_ADC_BASE_Init
	__end_of_ADC_BASE_Init:
	signat	_ADC_BASE_Init,89
	global	_TimeSysTickUpdate

;; *************** function _TimeSysTickUpdate *****************
;; Defined at:
;;		line 411 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
;; Parameters:    Size  Location     Type
;;  ptimeSysTick    1    wreg     PTR volatile unsigned in
;;		 -> timeSysTick(2), 
;; Auto vars:     Size  Location     Type
;;  ptimeSysTick    1   33[BANK0 ] PTR volatile unsigned in
;;		 -> timeSysTick(2), 
;;  TX             10   23[BANK0 ] unsigned char [10]
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      11       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_UART_WriteStr
;;		___lwmod
;;		_sprintf
;; This function is called by:
;;		_Loop
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	411
global __ptext21
__ptext21:	;psect for function _TimeSysTickUpdate
psect	text21
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	411
	
_TimeSysTickUpdate:	
;incstack = 0
	callstack 2
; Regs used in _TimeSysTickUpdate: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(TimeSysTickUpdate@ptimeSysTick)
	line	413
	
l9281:	
	movlw	(TimeSysTickUpdate@TX)&0ffh
	movwf	fsr0
	movlw	10
	movwf	btemp+1
u5040:
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	decfsz	btemp+1,f
	goto	u5040
	line	414
	
l9283:	
	movf	(TimeSysTickUpdate@ptimeSysTick),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_TimeSysTickUpdate+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_TimeSysTickUpdate+0)+0+1
	movf	(_timeSysTickBuffer+1),w
	xorwf	1+(??_TimeSysTickUpdate+0)+0,w
	skipz
	goto	u5055
	movf	(_timeSysTickBuffer),w
	xorwf	0+(??_TimeSysTickUpdate+0)+0,w
u5055:

	skipnz
	goto	u5051
	goto	u5050
u5051:
	goto	l9289
u5050:
	line	416
	
l9285:	
	movf	(TimeSysTickUpdate@ptimeSysTick),w
	movwf	fsr0
	movf	indf,w
	movwf	(_timeSysTickBuffer)
	incf	fsr0,f
	movf	indf,w
	movwf	(_timeSysTickBuffer+1)
	line	417
	
l9287:	
	movlw	01h
	addwf	(_timeBuffer),f
	movlw	0
	skipnc
movlw 1
	addwf	(_timeBuffer+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(_timeBuffer+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(_timeBuffer+3),f
	line	419
	
l9289:	
	movlw	010h
	movwf	(___lwmod@divisor)
	movlw	027h
	movwf	((___lwmod@divisor))+1
	movf	(TimeSysTickUpdate@ptimeSysTick),w
	movwf	fsr0
	movf	indf,w
	movwf	(___lwmod@dividend)
	incf	fsr0,f
	movf	indf,w
	movwf	(___lwmod@dividend+1)
	fcall	___lwmod
	movf	((0+(?___lwmod))),w
iorwf	((1+(?___lwmod))),w
	btfss	status,2
	goto	u5061
	goto	u5060
u5061:
	goto	l4338
u5060:
	line	421
	
l9291:	
	movlw	(low((((STR_3)-__stringbase)|8000h)))&0ffh
	movwf	(??_TimeSysTickUpdate+0)+0
	movf	(??_TimeSysTickUpdate+0)+0,w
	movwf	(sprintf@f)
	movf	(_timeBuffer+3),w
	movwf	3+(?_sprintf)+01h
	movf	(_timeBuffer+2),w
	movwf	2+(?_sprintf)+01h
	movf	(_timeBuffer+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_timeBuffer),w
	movwf	0+(?_sprintf)+01h

	movlw	(low(TimeSysTickUpdate@TX|((0x0)<<8)))&0ffh
	fcall	_sprintf
	line	422
	movlw	(low(TimeSysTickUpdate@TX|((0x0)<<8))&0ffh)
	movwf	(UART_WriteStr@data)
	movlw	(0x0)
	movwf	(UART_WriteStr@data+1)
	fcall	_UART_WriteStr
	line	425
	
l4338:	
	return
	callstack 0
GLOBAL	__end_of_TimeSysTickUpdate
	__end_of_TimeSysTickUpdate:
	signat	_TimeSysTickUpdate,4217
	global	_Disionfection_Run

;; *************** function _Disionfection_Run *****************
;; Defined at:
;;		line 392 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_GPIO_Write
;; This function is called by:
;;		_Loop
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	392
global __ptext22
__ptext22:	;psect for function _Disionfection_Run
psect	text22
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	392
	
_Disionfection_Run:	
;incstack = 0
	callstack 4
; Regs used in _Disionfection_Run: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	394
	
l9267:	
		decf	((_disinfectionState)),w
	btfss	status,2
	goto	u5011
	goto	u5010
u5011:
	goto	l4329
u5010:
	line	396
	
l9269:	
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u5021
	movf	(_timeBuffer+2),w
	btfss	status,2
	goto	u5021
	movf	(_timeBuffer+1),w
	btfss	status,2
	goto	u5021
	movlw	6
	subwf	(_timeBuffer),w
	skipz
	goto	u5023
u5023:
	btfsc	status,0
	goto	u5021
	goto	u5020

u5021:
	goto	l9275
u5020:
	line	398
	
l9271:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_Motor_0)+01h,w
	movwf	(??_Disionfection_Run+0)+0
	movf	(??_Disionfection_Run+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(_Motor_0),w
	fcall	_GPIO_Write
	line	399
	
l9273:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_timeBuffer+3)
	movlw	0
	movwf	(_timeBuffer+2)
	movlw	0
	movwf	(_timeBuffer+1)
	movlw	06h
	movwf	(_timeBuffer)

	line	400
	goto	l4329
	line	401
	
l9275:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u5030
	movf	(_timeBuffer+2),w
	btfss	status,2
	goto	u5030
	movlw	78
	subwf	(_timeBuffer+1),w
	skipz
	goto	u5033
	movlw	32
	subwf	(_timeBuffer),w
	skipz
	goto	u5033
u5033:
	btfss	status,0
	goto	u5031
	goto	u5030

u5031:
	goto	l4329
u5030:
	line	403
	
l9277:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_Motor_0)+01h,w
	movwf	(??_Disionfection_Run+0)+0
	movf	(??_Disionfection_Run+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(_Motor_0),w
	fcall	_GPIO_Write
	line	404
	
l9279:	
	movlw	low(02h)
	movwf	(??_Disionfection_Run+0)+0
	movf	(??_Disionfection_Run+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_disinfectionState)
	line	408
	
l4329:	
	return
	callstack 0
GLOBAL	__end_of_Disionfection_Run
	__end_of_Disionfection_Run:
	signat	_Disionfection_Run,89
	global	_Disinfection_Ctrl

;; *************** function _Disinfection_Ctrl *****************
;; Defined at:
;;		line 376 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
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
;;		_Loop
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	line	376
global __ptext23
__ptext23:	;psect for function _Disinfection_Ctrl
psect	text23
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	376
	
_Disinfection_Ctrl:	
;incstack = 0
	callstack 5
; Regs used in _Disinfection_Ctrl: [wreg+status,2+status,0]
	line	378
	
l8493:	
		movlw	2
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((_compressionState)),w
	btfsc	status,2
	goto	u3441
	goto	u3440
u3441:
	goto	l8497
u3440:
	line	380
	
l8495:	
	clrf	(_disinfectionState)
	line	381
	goto	l4322
	line	384
	
l8497:	
	movf	((_disinfectionState)),w
	btfss	status,2
	goto	u3451
	goto	u3450
u3451:
	goto	l4322
u3450:
	line	386
	
l8499:	
	clrf	(_disinfectionState)
	incf	(_disinfectionState),f
	line	387
	
l8501:	
	movlw	high highword(0)
	movwf	(_timeBuffer+3)
	movlw	low highword(0)
	movwf	(_timeBuffer+2)
	movlw	high(0)
	movwf	(_timeBuffer+1)
	movlw	low(0)
	movwf	(_timeBuffer)

	line	390
	
l4322:	
	return
	callstack 0
GLOBAL	__end_of_Disinfection_Ctrl
	__end_of_Disinfection_Ctrl:
	signat	_Disinfection_Ctrl,89
	global	_Compression_Run

;; *************** function _Compression_Run *****************
;; Defined at:
;;		line 281 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
;; Parameters:    Size  Location     Type
;;  ptimeSysTick    1    wreg     PTR volatile unsigned in
;;		 -> timeSysTick(2), 
;; Auto vars:     Size  Location     Type
;;  ptimeSysTick    1   34[BANK0 ] PTR volatile unsigned in
;;		 -> timeSysTick(2), 
;;  TX             10   24[BANK0 ] unsigned char [10]
;;  distance        1   35[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      12       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_GPIO_Write
;;		_Motor_Forward_Start
;;		_Motor_Reverse_Start
;;		_Motor_Stop
;;		_UART_WriteStr
;;		_UltraSensor_Read
;;		___llmod
;;		_sprintf
;; This function is called by:
;;		_Loop
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	281
global __ptext24
__ptext24:	;psect for function _Compression_Run
psect	text24
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	281
	
_Compression_Run:	
;incstack = 0
	callstack 2
; Regs used in _Compression_Run: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(Compression_Run@ptimeSysTick)
	line	283
	
l9221:	
	line	284
	
l9223:	
	movlw	(Compression_Run@TX)&0ffh
	movwf	fsr0
	movlw	10
	movwf	btemp+1
u4950:
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	decfsz	btemp+1,f
	goto	u4950
	line	285
	goto	l9265
	line	288
	
l9225:	
	movf	0+(_LED1)+01h,w
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(_LED1),w
	fcall	_GPIO_Write
	line	290
	movf	0+(_LED2)+01h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(_LED2),w
	fcall	_GPIO_Write
	line	291
	goto	l4316
	line	293
	
l9227:	
	movf	0+(_LED1)+01h,w
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(_LED1),w
	fcall	_GPIO_Write
	line	295
	movf	0+(_LED2)+01h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(_LED2),w
	fcall	_GPIO_Write
	line	297
	bcf	status, 5	;RP0=0, select bank0
	movf	(Compression_Run@ptimeSysTick),w
	fcall	_UltraSensor_Read
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(Compression_Run@distance)
	line	298
	
l9229:	
	movlw	low(050h)
	subwf	(Compression_Run@distance),w
	skipc
	goto	u4961
	goto	u4960
u4961:
	goto	l9233
u4960:
	line	300
	
l9231:	
	movlw	low(02h)
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(_compressionState)
	line	303
	goto	l4316
	line	306
	
l9233:	
	movlw	low(04h)
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(_compressionState)
	line	309
	movlw	high highword(0)
	movwf	(_timeBuffer+3)
	movlw	low highword(0)
	movwf	(_timeBuffer+2)
	movlw	high(0)
	movwf	(_timeBuffer+1)
	movlw	low(0)
	movwf	(_timeBuffer)

	goto	l4316
	line	313
	
l9235:	
	movf	0+(_LED1)+01h,w
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(_LED1),w
	fcall	_GPIO_Write
	line	314
	movf	0+(_LED2)+01h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(_LED2),w
	fcall	_GPIO_Write
	line	316
	
l9237:	
	movlw	0
	movwf	(___llmod@divisor+3)
	movlw	0
	movwf	(___llmod@divisor+2)
	movlw	027h
	movwf	(___llmod@divisor+1)
	movlw	010h
	movwf	(___llmod@divisor)

	bcf	status, 5	;RP0=0, select bank0
	movf	(_timeBuffer+3),w
	movwf	(___llmod@dividend+3)
	movf	(_timeBuffer+2),w
	movwf	(___llmod@dividend+2)
	movf	(_timeBuffer+1),w
	movwf	(___llmod@dividend+1)
	movf	(_timeBuffer),w
	movwf	(___llmod@dividend)

	fcall	___llmod
	movf	(3+(?___llmod)),w
	iorwf	(2+(?___llmod)),w
	iorwf	(1+(?___llmod)),w
	iorwf	(0+(?___llmod)),w
	skipz
	goto	u4971
	goto	u4970
u4971:
	goto	l9245
u4970:
	line	318
	
l9239:	
	movf	(Compression_Run@ptimeSysTick),w
	fcall	_UltraSensor_Read
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(Compression_Run@distance)
	line	319
	
l9241:	
	movlw	(low((((STR_2)-__stringbase)|8000h)))&0ffh
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(sprintf@f)
	movf	(Compression_Run@distance),w
	movwf	(??_Compression_Run+1)+0
	clrf	(??_Compression_Run+1)+0+1
	movf	0+(??_Compression_Run+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_Compression_Run+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(low(Compression_Run@TX|((0x0)<<8)))&0ffh
	fcall	_sprintf
	line	320
	
l9243:	
	movlw	(low(Compression_Run@TX|((0x0)<<8))&0ffh)
	movwf	(UART_WriteStr@data)
	movlw	(0x0)
	movwf	(UART_WriteStr@data+1)
	fcall	_UART_WriteStr
	line	350
	
l9245:	
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u4981
	movf	(_timeBuffer+2),w
	btfss	status,2
	goto	u4981
	movf	(_timeBuffer+1),w
	btfss	status,2
	goto	u4981
	movlw	11
	subwf	(_timeBuffer),w
	skipz
	goto	u4983
u4983:
	btfsc	status,0
	goto	u4981
	goto	u4980

u4981:
	goto	l9251
u4980:
	line	352
	
l9247:	
	movlw	(low(_Compress_Motor|((0x0)<<8)))&0ffh
	fcall	_Motor_Reverse_Start
	line	353
	
l9249:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_timeBuffer+3)
	movlw	0
	movwf	(_timeBuffer+2)
	movlw	0
	movwf	(_timeBuffer+1)
	movlw	0Bh
	movwf	(_timeBuffer)

	line	354
	goto	l4316
	line	355
	
l9251:	
		movlw	112
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((_timeBuffer)),w
	movlw	17
	skipnz
	xorwf	((_timeBuffer+1)),w
	skipz
	goto	u4991
	decf	((_timeBuffer+2)),w
iorwf	((_timeBuffer+3)),w
	btfss	status,2
	goto	u4991
	goto	u4990
u4991:
	goto	l9255
u4990:
	line	357
	
l9253:	
	movlw	(low(_Compress_Motor|((0x0)<<8)))&0ffh
	fcall	_Motor_Forward_Start
	line	358
	goto	l4316
	line	359
	
l9255:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u5000
	movlw	2
	subwf	(_timeBuffer+2),w
	skipz
	goto	u5003
	movlw	34
	subwf	(_timeBuffer+1),w
	skipz
	goto	u5003
	movlw	224
	subwf	(_timeBuffer),w
	skipz
	goto	u5003
u5003:
	btfss	status,0
	goto	u5001
	goto	u5000

u5001:
	goto	l4316
u5000:
	line	361
	
l9257:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(_compressionState)
	line	362
	
l9259:	
	movlw	(low(_Compress_Motor|((0x0)<<8)))&0ffh
	fcall	_Motor_Stop
	goto	l4316
	line	366
	
l9261:	
	movf	0+(_LED1)+01h,w
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(_LED1),w
	fcall	_GPIO_Write
	line	368
	movf	0+(_LED2)+01h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(_LED2),w
	fcall	_GPIO_Write
	line	369
	goto	l4316
	line	285
	
l9265:	
	movf	(_compressionState),w
	; Switch size 1, requested type "simple"
; Number of cases is 4, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           23     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l9225
	xorlw	1^0	; case 1
	skipnz
	goto	l9227
	xorlw	2^1	; case 2
	skipnz
	goto	l9261
	xorlw	4^2	; case 4
	skipnz
	goto	l9235
	goto	l4316
	asmopt pop

	line	373
	
l4316:	
	return
	callstack 0
GLOBAL	__end_of_Compression_Run
	__end_of_Compression_Run:
	signat	_Compression_Run,4217
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 505 in file "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> TimeSysTickUpdate@TX(10), Compression_Run@TX(10), 
;;  f               1    6[BANK0 ] PTR const unsigned char 
;;		 -> STR_3(7), STR_2(9), 
;; Auto vars:     Size  Location     Type
;;  sp              1   19[BANK0 ] PTR unsigned char 
;;		 -> TimeSysTickUpdate@TX(10), Compression_Run@TX(10), 
;;  tmpval          4    0        struct .
;;  val             2   17[BANK0 ] unsigned int 
;;  cp              2    0        PTR const unsigned char 
;;  len             2    0        unsigned int 
;;  c               1   20[BANK0 ] unsigned char 
;;  prec            1   16[BANK0 ] char 
;;  flag            1   15[BANK0 ] unsigned char 
;;  ap              1   14[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2    6[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_Compression_Run
;;		_TimeSysTickUpdate
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\doprnt.c"
	line	505
global __ptext25
__ptext25:	;psect for function _sprintf
psect	text25
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\doprnt.c"
	line	505
	
_sprintf:	
;incstack = 0
	callstack 3
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(sprintf@sp)
	line	550
	
l9037:	
	movlw	(low(?_sprintf|((0x0)<<8)+01h))&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	553
	goto	l9089
	line	555
	
l9039:	
		movlw	37
	xorwf	((sprintf@c)),w
	btfsc	status,2
	goto	u4571
	goto	u4570
u4571:
	goto	l9045
u4570:
	line	558
	
l9041:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l9043:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	559
	goto	l9089
	line	565
	
l9045:	
	clrf	(sprintf@flag)
	line	661
	
l9049:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l9091
	xorlw	100^0	; case 100
	skipnz
	goto	l9051
	xorlw	105^100	; case 105
	skipnz
	goto	l9051
	goto	l9089
	asmopt pop

	line	1285
	
l9051:	
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@val+1)
	
l9053:	
	movlw	low(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1287
	
l9055:	
	btfss	(sprintf@val+1),7
	goto	u4581
	goto	u4580
u4581:
	goto	l9061
u4580:
	line	1288
	
l9057:	
	movlw	low(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1289
	
l9059:	
	comf	(sprintf@val),f
	comf	(sprintf@val+1),f
	incf	(sprintf@val),f
	skipnz
	incf	(sprintf@val+1),f
	line	1331
	
l9061:	
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	line	1332
	
l9067:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((((_dpowers)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)+0
	fcall	stringdir
	movwf	(??_sprintf+1)+0+1
	movf	1+(??_sprintf+1)+0,w
	subwf	(sprintf@val+1),w
	skipz
	goto	u4595
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@val),w
u4595:
	skipnc
	goto	u4591
	goto	u4590
u4591:
	goto	l9071
u4590:
	goto	l9073
	line	1331
	
l9071:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
		movlw	5
	xorwf	((sprintf@c)),w
	btfss	status,2
	goto	u4601
	goto	u4600
u4601:
	goto	l9067
u4600:
	line	1464
	
l9073:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u4611
	goto	u4610
u4611:
	goto	l9079
u4610:
	line	1465
	
l9075:	
	movlw	low(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l9077:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	1498
	
l9079:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1500
	goto	l9087
	line	1515
	
l9081:	
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((((_dpowers)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(___lwdiv@divisor)
	fcall	stringdir
	movwf	(___lwdiv@divisor+1)
	movf	(sprintf@val+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(sprintf@val),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(___lwmod@dividend+1)
	movf	(0+(?___lwdiv)),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_sprintf+1)+0
	movf	(??_sprintf+1)+0,w
	movwf	(sprintf@c)
	line	1550
	
l9083:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l9085:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	1500
	
l9087:	
	movlw	low(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
		incf	(((sprintf@prec))),w
	btfss	status,2
	goto	u4621
	goto	u4620
u4621:
	goto	l9081
u4620:
	line	553
	
l9089:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@c)
	movf	(((sprintf@c))),w
	btfss	status,2
	goto	u4631
	goto	u4630
u4631:
	goto	l9039
u4630:
	line	1564
	
l9091:	
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	1567
	
l6292:	
	return
	callstack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TrashDoor_Ctrl
;;		_TimeSysTickUpdate
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=2
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\lwmod.c"
	line	5
global __ptext26
__ptext26:	;psect for function ___lwmod
psect	text26
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\lwmod.c"
	line	5
	
___lwmod:	
;incstack = 0
	callstack 4
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	12
	
l8909:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u4351
	goto	u4350
u4351:
	goto	l8927
u4350:
	line	13
	
l8911:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	14
	goto	l8917
	line	15
	
l8913:	
	movlw	01h
	
u4365:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u4365
	line	16
	
l8915:	
	movlw	low(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	line	14
	
l8917:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u4371
	goto	u4370
u4371:
	goto	l8913
u4370:
	line	19
	
l8919:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u4385
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u4385:
	skipc
	goto	u4381
	goto	u4380
u4381:
	goto	l8923
u4380:
	line	20
	
l8921:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	21
	
l8923:	
	movlw	01h
	
u4395:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u4395
	line	22
	
l8925:	
	movlw	01h
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u4401
	goto	u4400
u4401:
	goto	l8919
u4400:
	line	24
	
l8927:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	25
	
l6714:	
	return
	callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___llmod

;; *************** function ___llmod *****************
;; Defined at:
;;		line 5 in file "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    2[COMMON] unsigned long 
;;  dividend        4    6[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    2[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         8       2       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Compression_Run
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=2
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\llmod.c"
	line	5
global __ptext27
__ptext27:	;psect for function ___llmod
psect	text27
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\llmod.c"
	line	5
	
___llmod:	
;incstack = 0
	callstack 4
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	12
	
l9135:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u4741
	goto	u4740
u4741:
	goto	l9151
u4740:
	line	13
	
l9137:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	14
	goto	l9141
	line	15
	
l9139:	
	movlw	01h
	movwf	(??___llmod+0)+0
u4755:
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	decfsz	(??___llmod+0)+0
	goto	u4755
	line	16
	movlw	low(01h)
	movwf	(??___llmod+0)+0
	movf	(??___llmod+0)+0,w
	addwf	(___llmod@counter),f
	line	14
	
l9141:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u4761
	goto	u4760
u4761:
	goto	l9139
u4760:
	line	19
	
l9143:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u4775
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u4775
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u4775
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u4775:
	skipc
	goto	u4771
	goto	u4770
u4771:
	goto	l9147
u4770:
	line	20
	
l9145:	
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),f
	movf	(___llmod@divisor+1),w
	skipc
	incfsz	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),f
	movf	(___llmod@divisor+2),w
	skipc
	incfsz	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),f
	movf	(___llmod@divisor+3),w
	skipc
	incfsz	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),f
	line	21
	
l9147:	
	movlw	01h
u4785:
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	addlw	-1
	skipz
	goto	u4785

	line	22
	
l9149:	
	movlw	01h
	subwf	(___llmod@counter),f
	btfss	status,2
	goto	u4791
	goto	u4790
u4791:
	goto	l9143
u4790:
	line	24
	
l9151:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	line	25
	
l6633:	
	return
	callstack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
	signat	___llmod,8316
	global	_UltraSensor_Read

;; *************** function _UltraSensor_Read *****************
;; Defined at:
;;		line 170 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
;; Parameters:    Size  Location     Type
;;  ptimeSysTick    1    wreg     PTR volatile unsigned in
;;		 -> timeSysTick(2), 
;; Auto vars:     Size  Location     Type
;;  ptimeSysTick    1   14[BANK0 ] PTR volatile unsigned in
;;		 -> timeSysTick(2), 
;;  distance        2   18[BANK0 ] unsigned int 
;;  distance_buf    2   15[BANK0 ] unsigned int 
;;  index           1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_UltraSonicSensor_Read
;;		___lwdiv
;; This function is called by:
;;		_Compression_Run
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	170
global __ptext28
__ptext28:	;psect for function _UltraSensor_Read
psect	text28
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	170
	
_UltraSensor_Read:	
;incstack = 0
	callstack 2
; Regs used in _UltraSensor_Read: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(UltraSensor_Read@ptimeSysTick)
	line	172
	
l9007:	
	clrf	(UltraSensor_Read@distance)
	clrf	(UltraSensor_Read@distance+1)
	line	174
	clrf	(UltraSensor_Read@index)
	line	175
	clrf	(UltraSensor_Read@index)
	line	177
	
l9013:	
	movf	(UltraSensor_Read@ptimeSysTick),w
	movwf	(??_UltraSensor_Read+0)+0
	movf	(??_UltraSensor_Read+0)+0,w
	movwf	(UltraSonicSensor_Read@system_tick)
	movlw	(low(_UltraSonic_2|((0x0)<<8)))&0ffh
	fcall	_UltraSonicSensor_Read
	movwf	(??_UltraSensor_Read+1)+0
	clrf	(??_UltraSensor_Read+1)+0+1
	clrc
	rlf	0+(??_UltraSensor_Read+1)+0,w
	movwf	(UltraSensor_Read@distance_buff)
	rlf	1+(??_UltraSensor_Read+1)+0,w
	movwf	1+(UltraSensor_Read@distance_buff)
	line	178
	
l9015:	
	movlw	0
	subwf	(UltraSensor_Read@distance_buff+1),w
	movlw	08Dh
	skipnz
	subwf	(UltraSensor_Read@distance_buff),w
	skipc
	goto	u4541
	goto	u4540
u4541:
	goto	l9023
u4540:
	line	180
	
l9017:	
	movf	(UltraSensor_Read@distance_buff),w
	goto	l4264
	line	184
	
l9023:	
	movf	(UltraSensor_Read@distance_buff),w
	addwf	(UltraSensor_Read@distance),f
	skipnc
	incf	(UltraSensor_Read@distance+1),f
	movf	(UltraSensor_Read@distance_buff+1),w
	addwf	(UltraSensor_Read@distance+1),f
	line	175
	
l9025:	
	movlw	low(01h)
	movwf	(??_UltraSensor_Read+0)+0
	movf	(??_UltraSensor_Read+0)+0,w
	addwf	(UltraSensor_Read@index),f
	
l9027:	
	movlw	low(0Bh)
	subwf	(UltraSensor_Read@index),w
	skipc
	goto	u4551
	goto	u4550
u4551:
	goto	l9013
u4550:
	line	187
	
l9029:	
	movf	(UltraSensor_Read@index),w
	movwf	(??_UltraSensor_Read+0)+0
	clrf	(??_UltraSensor_Read+0)+0+1
	movf	0+(??_UltraSensor_Read+0)+0,w
	movwf	(___lwdiv@divisor)
	movf	1+(??_UltraSensor_Read+0)+0,w
	movwf	(___lwdiv@divisor+1)
	movf	(UltraSensor_Read@distance+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(UltraSensor_Read@distance),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(UltraSensor_Read@distance+1)
	movf	(0+(?___lwdiv)),w
	movwf	(UltraSensor_Read@distance)
	line	188
	
l9031:	
	movf	((UltraSensor_Read@distance)),w
iorwf	((UltraSensor_Read@distance+1)),w
	btfss	status,2
	goto	u4561
	goto	u4560
u4561:
	goto	l4266
u4560:
	line	190
	
l9033:	
	movlw	096h
	movwf	(UltraSensor_Read@distance)
	movlw	0
	movwf	((UltraSensor_Read@distance))+1
	line	191
	
l4266:	
	line	192
	movf	(UltraSensor_Read@distance),w
	line	193
	
l4264:	
	return
	callstack 0
GLOBAL	__end_of_UltraSensor_Read
	__end_of_UltraSensor_Read:
	signat	_UltraSensor_Read,4217
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] unsigned int 
;;  counter         1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UltraSensor_Read
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=2
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\lwdiv.c"
	line	5
global __ptext29
__ptext29:	;psect for function ___lwdiv
psect	text29
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\lwdiv.c"
	line	5
	
___lwdiv:	
;incstack = 0
	callstack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	13
	
l8061:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	14
	
l8063:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l8083
u2640:
	line	15
	
l8065:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	16
	goto	l8071
	line	17
	
l8067:	
	movlw	01h
	
u2655:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2655
	line	18
	
l8069:	
	movlw	low(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	line	16
	
l8071:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l8067
u2660:
	line	21
	
l8073:	
	movlw	01h
	
u2675:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2675
	line	22
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2685
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2685:
	skipc
	goto	u2681
	goto	u2680
u2681:
	goto	l8079
u2680:
	line	23
	
l8075:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	24
	
l8077:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	26
	
l8079:	
	movlw	01h
	
u2695:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2695
	line	27
	
l8081:	
	movlw	01h
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l8073
u2700:
	line	29
	
l8083:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	30
	
l6704:	
	return
	callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_UltraSonicSensor_Read

;; *************** function _UltraSonicSensor_Read *****************
;; Defined at:
;;		line 12 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UltraSonicSensor.c"
;; Parameters:    Size  Location     Type
;;  sensor          1    wreg     PTR struct .
;;		 -> UltraSonic_2(4), 
;;  system_tick     1    7[COMMON] PTR volatile unsigned in
;;		 -> timeSysTick(2), 
;; Auto vars:     Size  Location     Type
;;  sensor          1   10[BANK0 ] PTR struct .
;;		 -> UltraSonic_2(4), 
;;  buff_time       4    6[BANK0 ] unsigned long 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         1      11       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_GPIO_Read
;;		_GPIO_Write
;; This function is called by:
;;		_UltraSensor_Read
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UltraSonicSensor.c"
	line	12
global __ptext30
__ptext30:	;psect for function _UltraSonicSensor_Read
psect	text30
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UltraSonicSensor.c"
	line	12
	
_UltraSonicSensor_Read:	
;incstack = 0
	callstack 2
; Regs used in _UltraSonicSensor_Read: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(UltraSonicSensor_Read@sensor)
	line	14
	
l8705:	
	line	15
	
l8707:	
	incf	(UltraSonicSensor_Read@sensor),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_UltraSonicSensor_Read+0)+0
	movf	(??_UltraSonicSensor_Read+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(UltraSonicSensor_Read@sensor),w
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	16
	
l8709:	
	asmopt push
asmopt off
	movlw	2
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_UltraSonicSensor_Read+0)+0)
	u5167:
decfsz	(??_UltraSonicSensor_Read+0)+0,f
	goto	u5167
	nop
asmopt pop

	line	17
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(UltraSonicSensor_Read@sensor),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_UltraSonicSensor_Read+0)+0
	movf	(??_UltraSonicSensor_Read+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(UltraSonicSensor_Read@sensor),w
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	18
	
l8711:	
	asmopt push
asmopt off
	movlw	7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_UltraSonicSensor_Read+0)+0)
	u5177:
decfsz	(??_UltraSonicSensor_Read+0)+0,f
	goto	u5177
	nop
asmopt pop

	line	19
	
l8713:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(UltraSonicSensor_Read@sensor),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_UltraSonicSensor_Read+0)+0
	movf	(??_UltraSonicSensor_Read+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(UltraSonicSensor_Read@sensor),w
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	20
	
l8715:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(UltraSonicSensor_Read@sensor),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	movwf	(??_UltraSonicSensor_Read+0)+0
	movf	(??_UltraSonicSensor_Read+0)+0,w
	movwf	(GPIO_Read@Pin)
	movf	(UltraSonicSensor_Read@sensor),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Read
	xorlw	0
	skipz
	goto	u3861
	goto	u3860
u3861:
	goto	l8721
u3860:
	line	22
	
l8719:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(UltraSonicSensor_Read@sensor),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	movwf	(??_UltraSonicSensor_Read+0)+0
	movf	(??_UltraSonicSensor_Read+0)+0,w
	movwf	(GPIO_Read@Pin)
	movf	(UltraSonicSensor_Read@sensor),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Read
	xorlw	0
	skipnz
	goto	u3871
	goto	u3870
u3871:
	goto	l8719
u3870:
	line	24
	
l8721:	
	movf	(UltraSonicSensor_Read@system_tick),w
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_UltraSonicSensor_Read+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_UltraSonicSensor_Read+0)+0+1
	movf	0+(??_UltraSonicSensor_Read+0)+0,w
	movwf	(UltraSonicSensor_Read@buff_time)
	movf	1+(??_UltraSonicSensor_Read+0)+0,w
	movwf	((UltraSonicSensor_Read@buff_time))+1
	clrf	2+((UltraSonicSensor_Read@buff_time))
	clrf	3+((UltraSonicSensor_Read@buff_time))
	line	25
	goto	l8727
	line	27
	
l8723:	
	movf	(UltraSonicSensor_Read@system_tick),w
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_UltraSonicSensor_Read+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_UltraSonicSensor_Read+0)+0+1
	movf	0+(??_UltraSonicSensor_Read+0)+0,w
	movwf	((??_UltraSonicSensor_Read+2)+0)
	movf	1+(??_UltraSonicSensor_Read+0)+0,w
	movwf	((??_UltraSonicSensor_Read+2)+0+1)
	clrf	((??_UltraSonicSensor_Read+2)+0+2)
	clrf	((??_UltraSonicSensor_Read+2)+0+3)
	movf	(UltraSonicSensor_Read@buff_time),w
	subwf	(??_UltraSonicSensor_Read+2)+0,f
	movf	(UltraSonicSensor_Read@buff_time+1),w
	skipc
	incfsz	(UltraSonicSensor_Read@buff_time+1),w
	goto	u3881
	goto	u3882
u3881:
	subwf	(??_UltraSonicSensor_Read+2)+1,f
u3882:
	movf	(UltraSonicSensor_Read@buff_time+2),w
	skipc
	incfsz	(UltraSonicSensor_Read@buff_time+2),w
	goto	u3883
	goto	u3884
u3883:
	subwf	(??_UltraSonicSensor_Read+2)+2,f
u3884:
	movf	(UltraSonicSensor_Read@buff_time+3),w
	skipc
	incfsz	(UltraSonicSensor_Read@buff_time+3),w
	goto	u3885
	goto	u3886
u3885:
	subwf	(??_UltraSonicSensor_Read+2)+3,f
u3886:

		movf	(??_UltraSonicSensor_Read+2)+3,w
	btfss	status,2
	goto	u3890
	movf	(??_UltraSonicSensor_Read+2)+2,w
	btfss	status,2
	goto	u3890
	movlw	1
	subwf	(??_UltraSonicSensor_Read+2)+1,w
	skipz
	goto	u3893
	movlw	45
	subwf	(??_UltraSonicSensor_Read+2)+0,w
	skipz
	goto	u3893
u3893:
	btfss	status,0
	goto	u3891
	goto	u3890

u3891:
	goto	l8727
u3890:
	goto	l8729
	line	25
	
l8727:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(UltraSonicSensor_Read@sensor),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_UltraSonicSensor_Read+0)+0
	movf	(??_UltraSonicSensor_Read+0)+0,w
	movwf	(GPIO_Read@Pin)
	movf	(UltraSonicSensor_Read@sensor),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Read
	xorlw	0
	skipz
	goto	u3901
	goto	u3900
u3901:
	goto	l8723
u3900:
	line	32
	
l8729:	
	movf	(UltraSonicSensor_Read@system_tick),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_UltraSonicSensor_Read+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_UltraSonicSensor_Read+0)+0+1
	movf	0+(??_UltraSonicSensor_Read+0)+0,w
	movwf	((??_UltraSonicSensor_Read+2)+0)
	movf	1+(??_UltraSonicSensor_Read+0)+0,w
	movwf	((??_UltraSonicSensor_Read+2)+0+1)
	clrf	((??_UltraSonicSensor_Read+2)+0+2)
	clrf	((??_UltraSonicSensor_Read+2)+0+3)
	movf	(UltraSonicSensor_Read@buff_time),w
	subwf	(??_UltraSonicSensor_Read+2)+0,f
	movf	(UltraSonicSensor_Read@buff_time+1),w
	skipc
	incfsz	(UltraSonicSensor_Read@buff_time+1),w
	goto	u3911
	goto	u3912
u3911:
	subwf	(??_UltraSonicSensor_Read+2)+1,f
u3912:
	movf	(UltraSonicSensor_Read@buff_time+2),w
	skipc
	incfsz	(UltraSonicSensor_Read@buff_time+2),w
	goto	u3913
	goto	u3914
u3913:
	subwf	(??_UltraSonicSensor_Read+2)+2,f
u3914:
	movf	(UltraSonicSensor_Read@buff_time+3),w
	skipc
	incfsz	(UltraSonicSensor_Read@buff_time+3),w
	goto	u3915
	goto	u3916
u3915:
	subwf	(??_UltraSonicSensor_Read+2)+3,f
u3916:

	movf	3+(??_UltraSonicSensor_Read+2)+0,w
	movwf	(UltraSonicSensor_Read@buff_time+3)
	movf	2+(??_UltraSonicSensor_Read+2)+0,w
	movwf	(UltraSonicSensor_Read@buff_time+2)
	movf	1+(??_UltraSonicSensor_Read+2)+0,w
	movwf	(UltraSonicSensor_Read@buff_time+1)
	movf	0+(??_UltraSonicSensor_Read+2)+0,w
	movwf	(UltraSonicSensor_Read@buff_time)

	line	34
	
l8731:	
		movf	(UltraSonicSensor_Read@buff_time+3),w
	btfss	status,2
	goto	u3920
	movf	(UltraSonicSensor_Read@buff_time+2),w
	btfss	status,2
	goto	u3920
	movf	(UltraSonicSensor_Read@buff_time+1),w
	btfss	status,2
	goto	u3920
	movlw	151
	subwf	(UltraSonicSensor_Read@buff_time),w
	skipz
	goto	u3923
u3923:
	btfss	status,0
	goto	u3921
	goto	u3920

u3921:
	goto	l6181
u3920:
	line	36
	
l8733:	
	movlw	high highword(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(UltraSonicSensor_Read@buff_time+3)
	movlw	low highword(0)
	movwf	(UltraSonicSensor_Read@buff_time+2)
	movlw	high(0)
	movwf	(UltraSonicSensor_Read@buff_time+1)
	movlw	low(0)
	movwf	(UltraSonicSensor_Read@buff_time)

	line	37
	
l6181:	
	line	38
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(UltraSonicSensor_Read@buff_time),w
	line	39
	
l6182:	
	return
	callstack 0
GLOBAL	__end_of_UltraSonicSensor_Read
	__end_of_UltraSonicSensor_Read:
	signat	_UltraSonicSensor_Read,8313
	global	_UART_WriteStr

;; *************** function _UART_WriteStr *****************
;; Defined at:
;;		line 37 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UART.c"
;; Parameters:    Size  Location     Type
;;  data            2    6[COMMON] PTR const unsigned char 
;;		 -> TimeSysTickUpdate@TX(10), Compression_Run@TX(10), STR_1(11), 
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
;;		_TimeSysTickUpdate
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UART.c"
	line	37
global __ptext31
__ptext31:	;psect for function _UART_WriteStr
psect	text31
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UART.c"
	line	37
	
_UART_WriteStr:	
;incstack = 0
	callstack 3
; Regs used in _UART_WriteStr: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	39
	
l8113:	
	line	40
	
l8115:	
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
	
l8117:	
	clrf	(UART_WriteStr@i)
	goto	l8123
	line	43
	
l8119:	
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
	
l8121:	
	movlw	low(01h)
	movwf	(??_UART_WriteStr+0)+0
	movf	(??_UART_WriteStr+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	(UART_WriteStr@i),f
	
l8123:	
	movf	(UART_WriteStr@i),w
	movwf	(??_UART_WriteStr+0)+0
	clrf	(??_UART_WriteStr+0)+0+1
	movf	1+(??_UART_WriteStr+0)+0,w
	subwf	(UART_WriteStr@len+1),w
	skipz
	goto	u2775
	movf	0+(??_UART_WriteStr+0)+0,w
	subwf	(UART_WriteStr@len),w
u2775:
	skipnc
	goto	u2771
	goto	u2770
u2771:
	goto	l8119
u2770:
	line	45
	
l5580:	
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
;;		 -> TimeSysTickUpdate@TX(10), Compression_Run@TX(10), STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  cp              2    4[COMMON] PTR const unsigned char 
;;		 -> TimeSysTickUpdate@TX(10), Compression_Run@TX(10), STR_1(11), 
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
psect	text32,local,class=CODE,delta=2,merge=1,group=3
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\strlen.c"
	line	4
global __ptext32
__ptext32:	;psect for function _strlen
psect	text32
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\strlen.c"
	line	4
	
_strlen:	
;incstack = 0
	callstack 3
; Regs used in _strlen: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	line	8
	
l7859:	
		movf	(strlen@s),w
	movwf	(strlen@cp)
movf	(strlen@s+1),w
movwf	(strlen@cp+1)

	line	9
	goto	l7863
	line	10
	
l7861:	
	movlw	01h
	addwf	(strlen@cp),f
	skipnc
	incf	(strlen@cp+1),f
	movlw	0
	addwf	(strlen@cp+1),f
	line	9
	
l7863:	
	movf	(strlen@cp+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(strlen@cp),w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipz
	goto	u2181
	goto	u2180
u2181:
	goto	l7861
u2180:
	line	12
	
l7865:	
	movf	(strlen@s),w
	subwf	(strlen@cp),w
	movwf	(?_strlen)
	movf	(strlen@s+1),w
	skipc
	incf	(strlen@s+1),w
	subwf	(strlen@cp+1),w
	movwf	1+(?_strlen)
	line	13
	
l6725:	
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
psect	text33,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UART.c"
	line	21
global __ptext33
__ptext33:	;psect for function _UART_WriteChar
psect	text33
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UART.c"
	line	21
	
_UART_WriteChar:	
;incstack = 0
	callstack 4
; Regs used in _UART_WriteChar: [wreg]
	movwf	(UART_WriteChar@data)
	line	23
	
l7857:	
	movf	(UART_WriteChar@data),w
	movwf	(25)	;volatile
	line	24
	
l5562:	
	btfss	(100/8),(100)&7	;volatile
	goto	u2161
	goto	u2160
u2161:
	goto	l5562
u2160:
	
l5564:	
	line	25
	bcf	(100/8),(100)&7	;volatile
	line	26
	
l5565:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u2171
	goto	u2170
u2171:
	goto	l5565
u2170:
	line	27
	
l5568:	
	return
	callstack 0
GLOBAL	__end_of_UART_WriteChar
	__end_of_UART_WriteChar:
	signat	_UART_WriteChar,4217
	global	_Motor_Reverse_Start

;; *************** function _Motor_Reverse_Start *****************
;; Defined at:
;;		line 63 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
;; Parameters:    Size  Location     Type
;;  motor_handle    1    wreg     PTR struct .
;;		 -> Door_Motor(8), Compress_Motor(8), 
;; Auto vars:     Size  Location     Type
;;  motor_handle    1    1[BANK0 ] PTR struct .
;;		 -> Door_Motor(8), Compress_Motor(8), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : B00/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_GPIO_Write
;;		_Motor_Stop
;; This function is called by:
;;		_TrashDoor_Close
;;		_Compression_Run
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
	line	63
global __ptext34
__ptext34:	;psect for function _Motor_Reverse_Start
psect	text34
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
	line	63
	
_Motor_Reverse_Start:	
;incstack = 0
	callstack 1
; Regs used in _Motor_Reverse_Start: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Motor_Reverse_Start@motor_handle)
	line	66
	
l8703:	
	movf	(Motor_Reverse_Start@motor_handle),w
	fcall	_Motor_Stop
	line	69
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Motor_Reverse_Start@motor_handle),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_Motor_Reverse_Start+0)+0
	movf	(??_Motor_Reverse_Start+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(Motor_Reverse_Start@motor_handle),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	70
	bcf	status, 5	;RP0=0, select bank0
	movf	(Motor_Reverse_Start@motor_handle),w
	addlw	07h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Motor_Reverse_Start+0)+0
	movf	(??_Motor_Reverse_Start+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(Motor_Reverse_Start@motor_handle),w
	addlw	06h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	71
	
l3020:	
	return
	callstack 0
GLOBAL	__end_of_Motor_Reverse_Start
	__end_of_Motor_Reverse_Start:
	signat	_Motor_Reverse_Start,4217
	global	_Motor_Forward_Start

;; *************** function _Motor_Forward_Start *****************
;; Defined at:
;;		line 55 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
;; Parameters:    Size  Location     Type
;;  motor_handle    1    wreg     PTR struct .
;;		 -> Door_Motor(8), Compress_Motor(8), 
;; Auto vars:     Size  Location     Type
;;  motor_handle    1    1[BANK0 ] PTR struct .
;;		 -> Door_Motor(8), Compress_Motor(8), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : B00/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_GPIO_Write
;;		_Motor_Stop
;; This function is called by:
;;		_TrashDoor_Open
;;		_Compression_Run
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1,group=0
	line	55
global __ptext35
__ptext35:	;psect for function _Motor_Forward_Start
psect	text35
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
	line	55
	
_Motor_Forward_Start:	
;incstack = 0
	callstack 1
; Regs used in _Motor_Forward_Start: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Motor_Forward_Start@motor_handle)
	line	58
	
l8701:	
	movf	(Motor_Forward_Start@motor_handle),w
	fcall	_Motor_Stop
	line	60
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(Motor_Forward_Start@motor_handle),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_Motor_Forward_Start+0)+0
	movf	(??_Motor_Forward_Start+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(Motor_Forward_Start@motor_handle),w
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	61
	bcf	status, 5	;RP0=0, select bank0
	movf	(Motor_Forward_Start@motor_handle),w
	addlw	05h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Motor_Forward_Start+0)+0
	movf	(??_Motor_Forward_Start+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(Motor_Forward_Start@motor_handle),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	62
	
l3017:	
	return
	callstack 0
GLOBAL	__end_of_Motor_Forward_Start
	__end_of_Motor_Forward_Start:
	signat	_Motor_Forward_Start,4217
	global	_Motor_Stop

;; *************** function _Motor_Stop *****************
;; Defined at:
;;		line 11 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
;; Parameters:    Size  Location     Type
;;  motor_handle    1    wreg     PTR struct .
;;		 -> Door_Motor(8), Compress_Motor(8), 
;; Auto vars:     Size  Location     Type
;;  motor_handle    1    9[COMMON] PTR struct .
;;		 -> Door_Motor(8), Compress_Motor(8), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_GPIO_Read
;;		_GPIO_Write
;; This function is called by:
;;		_Motor_Forward_Start
;;		_Motor_Reverse_Start
;;		_TrashDoor_Open
;;		_TrashDoor_Close
;;		_Compression_Run
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=0
	line	11
global __ptext36
__ptext36:	;psect for function _Motor_Stop
psect	text36
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
	line	11
	
_Motor_Stop:	
;incstack = 0
	callstack 2
; Regs used in _Motor_Stop: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(Motor_Stop@motor_handle)
	line	13
	
l8619:	
	movf	(Motor_Stop@motor_handle),w
	addlw	05h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Read@Pin)
	movf	(Motor_Stop@motor_handle),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Read
	xorlw	0
	skipz
	goto	u3721
	goto	u3720
u3721:
	goto	l8623
u3720:
	
l8621:	
	incf	(Motor_Stop@motor_handle),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Read@Pin)
	movf	(Motor_Stop@motor_handle),w
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Read
	xorlw	0
	skipnz
	goto	u3731
	goto	u3730
u3731:
	goto	l8645
u3730:
	line	15
	
l8623:	
	movf	(Motor_Stop@motor_handle),w
	addlw	05h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(Motor_Stop@motor_handle),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	16
	movf	(Motor_Stop@motor_handle),w
	addlw	07h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(Motor_Stop@motor_handle),w
	addlw	06h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	17
	
l8625:	
	asmopt push
asmopt off
	movlw	16
movwf	((??_Motor_Stop+0)+0)
	u5187:
decfsz	(??_Motor_Stop+0)+0,f
	goto	u5187
	nop
asmopt pop

	line	18
	
l8627:	
	incf	(Motor_Stop@motor_handle),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(Motor_Stop@motor_handle),w
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	19
	
l8629:	
	movf	(Motor_Stop@motor_handle),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(Motor_Stop@motor_handle),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	20
	
l8631:	
	asmopt push
asmopt off
	movlw	8
movwf	((??_Motor_Stop+0)+0)
	u5197:
decfsz	(??_Motor_Stop+0)+0,f
	goto	u5197
asmopt pop

	line	21
	incf	(Motor_Stop@motor_handle),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(Motor_Stop@motor_handle),w
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	22
	
l8633:	
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop
	asmopt pop

	line	23
	movf	(Motor_Stop@motor_handle),w
	addlw	07h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(Motor_Stop@motor_handle),w
	addlw	06h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	24
	
l8635:	
	asmopt push
asmopt off
	movlw	166
movwf	((??_Motor_Stop+0)+0)
	u5207:
decfsz	(??_Motor_Stop+0)+0,f
	goto	u5207
	nop
asmopt pop

	line	25
	
l8637:	
	movf	(Motor_Stop@motor_handle),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(Motor_Stop@motor_handle),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	26
	
l8639:	
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop
	asmopt pop

	line	27
	
l8641:	
	movf	(Motor_Stop@motor_handle),w
	addlw	05h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(Motor_Stop@motor_handle),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	28
	
l8643:	
	asmopt push
asmopt off
	movlw	8
movwf	((??_Motor_Stop+0)+0)
	u5217:
decfsz	(??_Motor_Stop+0)+0,f
	goto	u5217
asmopt pop

	line	29
	movf	(Motor_Stop@motor_handle),w
	addlw	05h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(Motor_Stop@motor_handle),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	30
	movf	(Motor_Stop@motor_handle),w
	addlw	07h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(Motor_Stop@motor_handle),w
	addlw	06h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	32
	goto	l8667
	line	35
	
l8645:	
	movf	(Motor_Stop@motor_handle),w
	addlw	05h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(Motor_Stop@motor_handle),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	36
	movf	(Motor_Stop@motor_handle),w
	addlw	07h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(Motor_Stop@motor_handle),w
	addlw	06h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	37
	
l8647:	
	asmopt push
asmopt off
	movlw	16
movwf	((??_Motor_Stop+0)+0)
	u5227:
decfsz	(??_Motor_Stop+0)+0,f
	goto	u5227
	nop
asmopt pop

	line	38
	
l8649:	
	incf	(Motor_Stop@motor_handle),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(Motor_Stop@motor_handle),w
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	39
	
l8651:	
	movf	(Motor_Stop@motor_handle),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(Motor_Stop@motor_handle),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	40
	
l8653:	
	asmopt push
asmopt off
	movlw	8
movwf	((??_Motor_Stop+0)+0)
	u5237:
decfsz	(??_Motor_Stop+0)+0,f
	goto	u5237
asmopt pop

	line	41
	movf	(Motor_Stop@motor_handle),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(Motor_Stop@motor_handle),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	42
	
l8655:	
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop
	asmopt pop

	line	43
	movf	(Motor_Stop@motor_handle),w
	addlw	05h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(Motor_Stop@motor_handle),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	44
	
l8657:	
	asmopt push
asmopt off
	movlw	8
movwf	((??_Motor_Stop+0)+0)
	u5247:
decfsz	(??_Motor_Stop+0)+0,f
	goto	u5247
asmopt pop

	line	45
	
l8659:	
	incf	(Motor_Stop@motor_handle),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(Motor_Stop@motor_handle),w
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	46
	
l8661:	
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop
	asmopt pop

	line	47
	
l8663:	
	movf	(Motor_Stop@motor_handle),w
	addlw	07h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(Motor_Stop@motor_handle),w
	addlw	06h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	48
	
l8665:	
	asmopt push
asmopt off
	movlw	8
movwf	((??_Motor_Stop+0)+0)
	u5257:
decfsz	(??_Motor_Stop+0)+0,f
	goto	u5257
asmopt pop

	line	49
	movf	(Motor_Stop@motor_handle),w
	addlw	05h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(Motor_Stop@motor_handle),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	50
	movf	(Motor_Stop@motor_handle),w
	addlw	07h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(Motor_Stop@motor_handle),w
	addlw	06h
	movwf	fsr0
	movf	indf,w
	fcall	_GPIO_Write
	line	52
	
l8667:	
	asmopt push
asmopt off
movlw	98
movwf	((??_Motor_Stop+0)+0+1)
	movlw	101
movwf	((??_Motor_Stop+0)+0)
	u5267:
decfsz	((??_Motor_Stop+0)+0),f
	goto	u5267
	decfsz	((??_Motor_Stop+0)+0+1),f
	goto	u5267
	nop2
asmopt pop

	line	54
	
l3014:	
	return
	callstack 0
GLOBAL	__end_of_Motor_Stop
	__end_of_Motor_Stop:
	signat	_Motor_Stop,4217
	global	_GPIO_Write

;; *************** function _GPIO_Write *****************
;; Defined at:
;;		line 4 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\GPIO.c"
;; Parameters:    Size  Location     Type
;;  GPIO_Port       1    wreg     PTR volatile unsigned ch
;;		 -> PORTA(1), PORTE(1), PORTD(1), PORTC(1), 
;;		 -> PORTB(1), 
;;  Pin             1    2[COMMON] unsigned char 
;;  GPIO_State      1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  GPIO_Port       1    6[COMMON] PTR volatile unsigned ch
;;		 -> PORTA(1), PORTE(1), PORTD(1), PORTC(1), 
;;		 -> PORTB(1), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
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
;;		_Motor_Stop
;;		_Motor_Forward_Start
;;		_Motor_Reverse_Start
;;		_TrashDoor_Open
;;		_TrashDoor_Close
;;		_Compression_Run
;;		_Disionfection_Run
;;		_UltraSonicSensor_Read
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\GPIO.c"
	line	4
global __ptext37
__ptext37:	;psect for function _GPIO_Write
psect	text37
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\GPIO.c"
	line	4
	
_GPIO_Write:	
;incstack = 0
	callstack 4
; Regs used in _GPIO_Write: [wreg-fsr0h+status,2+status,0]
	movwf	(GPIO_Write@GPIO_Port)
	line	6
	
l8579:	
	movf	(GPIO_Write@GPIO_Port),w
	xorlw	low(5|((0x0)<<8))&0ffh
	skipz
	goto	u3591
	goto	u3590
u3591:
	goto	l8583
u3590:
	line	8
	
l8581:	
	movlw	low(01h)
	movwf	(??_GPIO_Write+0)+0
	incf	(GPIO_Write@Pin),w
	goto	u3604
u3605:
	clrc
	rlf	(??_GPIO_Write+0)+0,f
u3604:
	addlw	-1
	skipz
	goto	u3605
	movf	0+(??_GPIO_Write+0)+0,w
	xorlw	0ffh
	movwf	(??_GPIO_Write+1)+0
	movf	(??_GPIO_Write+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(133)^080h,f	;volatile
	line	9
	goto	l8605
	line	10
	
l8583:	
	movf	(GPIO_Write@GPIO_Port),w
	xorlw	low(6|((0x0)<<8))&0ffh
	skipz
	goto	u3611
	goto	u3610
u3611:
	goto	l8587
u3610:
	line	12
	
l8585:	
	movlw	low(01h)
	movwf	(??_GPIO_Write+0)+0
	incf	(GPIO_Write@Pin),w
	goto	u3624
u3625:
	clrc
	rlf	(??_GPIO_Write+0)+0,f
u3624:
	addlw	-1
	skipz
	goto	u3625
	movf	0+(??_GPIO_Write+0)+0,w
	xorlw	0ffh
	movwf	(??_GPIO_Write+1)+0
	movf	(??_GPIO_Write+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(134)^080h,f	;volatile
	line	13
	goto	l8605
	line	14
	
l8587:	
	movf	(GPIO_Write@GPIO_Port),w
	xorlw	low(7|((0x0)<<8))&0ffh
	skipz
	goto	u3631
	goto	u3630
u3631:
	goto	l8591
u3630:
	line	16
	
l8589:	
	movlw	low(01h)
	movwf	(??_GPIO_Write+0)+0
	incf	(GPIO_Write@Pin),w
	goto	u3644
u3645:
	clrc
	rlf	(??_GPIO_Write+0)+0,f
u3644:
	addlw	-1
	skipz
	goto	u3645
	movf	0+(??_GPIO_Write+0)+0,w
	xorlw	0ffh
	movwf	(??_GPIO_Write+1)+0
	movf	(??_GPIO_Write+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	line	17
	goto	l8605
	line	18
	
l8591:	
	movf	(GPIO_Write@GPIO_Port),w
	xorlw	low(8|((0x0)<<8))&0ffh
	skipz
	goto	u3651
	goto	u3650
u3651:
	goto	l8595
u3650:
	line	20
	
l8593:	
	movlw	low(01h)
	movwf	(??_GPIO_Write+0)+0
	incf	(GPIO_Write@Pin),w
	goto	u3664
u3665:
	clrc
	rlf	(??_GPIO_Write+0)+0,f
u3664:
	addlw	-1
	skipz
	goto	u3665
	movf	0+(??_GPIO_Write+0)+0,w
	xorlw	0ffh
	movwf	(??_GPIO_Write+1)+0
	movf	(??_GPIO_Write+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(136)^080h,f	;volatile
	line	21
	goto	l8605
	line	24
	
l8595:	
	movlw	low(01h)
	movwf	(??_GPIO_Write+0)+0
	incf	(GPIO_Write@Pin),w
	goto	u3674
u3675:
	clrc
	rlf	(??_GPIO_Write+0)+0,f
u3674:
	addlw	-1
	skipz
	goto	u3675
	movf	0+(??_GPIO_Write+0)+0,w
	xorlw	0ffh
	movwf	(??_GPIO_Write+1)+0
	movf	(??_GPIO_Write+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(137)^080h,f	;volatile
	goto	l8605
	line	29
	
l8597:	
	movlw	low(01h)
	movwf	(??_GPIO_Write+0)+0
	incf	(GPIO_Write@Pin),w
	goto	u3684
u3685:
	clrc
	rlf	(??_GPIO_Write+0)+0,f
u3684:
	addlw	-1
	skipz
	goto	u3685
	movf	0+(??_GPIO_Write+0)+0,w
	movwf	(??_GPIO_Write+1)+0
	movf	(GPIO_Write@GPIO_Port),w
	movwf	fsr0
	movf	(??_GPIO_Write+1)+0,w
	bcf	status, 7	;select IRP bank0
	iorwf	indf,f
	line	30
	goto	l2407
	line	32
	
l8599:	
	movlw	low(01h)
	movwf	(??_GPIO_Write+0)+0
	incf	(GPIO_Write@Pin),w
	goto	u3694
u3695:
	clrc
	rlf	(??_GPIO_Write+0)+0,f
u3694:
	addlw	-1
	skipz
	goto	u3695
	movf	0+(??_GPIO_Write+0)+0,w
	xorlw	0ffh
	movwf	(??_GPIO_Write+1)+0
	movf	(GPIO_Write@GPIO_Port),w
	movwf	fsr0
	movf	(??_GPIO_Write+1)+0,w
	bcf	status, 7	;select IRP bank0
	andwf	indf,f
	line	33
	goto	l2407
	line	26
	
l8605:	
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
	goto	l8599
	xorlw	1^0	; case 1
	skipnz
	goto	l8597
	goto	l8599
	asmopt pop

	line	38
	
l2407:	
	return
	callstack 0
GLOBAL	__end_of_GPIO_Write
	__end_of_GPIO_Write:
	signat	_GPIO_Write,12409
	global	_GPIO_Read

;; *************** function _GPIO_Read *****************
;; Defined at:
;;		line 40 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\GPIO.c"
;; Parameters:    Size  Location     Type
;;  GPIO_Port       1    wreg     PTR volatile unsigned ch
;;		 -> PORTA(1), PORTE(1), PORTD(1), PORTC(1), 
;;		 -> PORTB(1), 
;;  Pin             1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  GPIO_Port       1    4[COMMON] PTR volatile unsigned ch
;;		 -> PORTA(1), PORTE(1), PORTD(1), PORTC(1), 
;;		 -> PORTB(1), 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 800/0
;;		Unchanged: 0/0
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
;;		_Motor_Stop
;;		_TrashDoor_Ctrl
;;		_UltraSonicSensor_Read
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1,group=0
	line	40
global __ptext38
__ptext38:	;psect for function _GPIO_Read
psect	text38
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\GPIO.c"
	line	40
	
_GPIO_Read:	
;incstack = 0
	callstack 2
; Regs used in _GPIO_Read: [wreg-fsr0h+status,2+status,0]
	movwf	(GPIO_Read@GPIO_Port)
	line	42
	
l8607:	
	movf	(GPIO_Read@GPIO_Port),w
	movwf	fsr0
	movlw	low(01h)
	movwf	(??_GPIO_Read+0)+0
	incf	(GPIO_Read@Pin),w
	goto	u3704
u3705:
	clrc
	rlf	(??_GPIO_Read+0)+0,f
u3704:
	addlw	-1
	skipz
	goto	u3705
	movf	0+(??_GPIO_Read+0)+0,w
	bcf	status, 7	;select IRP bank0
	andwf	indf,w
	btfsc	status,2
	goto	u3711
	goto	u3710
u3711:
	goto	l8615
u3710:
	line	44
	
l8609:	
	movlw	low(01h)
	goto	l2411
	line	48
	
l8615:	
	movlw	low(0)
	line	51
	
l2411:	
	return
	callstack 0
GLOBAL	__end_of_GPIO_Read
	__end_of_GPIO_Read:
	signat	_GPIO_Read,8313
	global	_Compression_Ctrl

;; *************** function _Compression_Ctrl *****************
;; Defined at:
;;		line 259 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
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
;;		_Loop
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	259
global __ptext39
__ptext39:	;psect for function _Compression_Ctrl
psect	text39
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	259
	
_Compression_Ctrl:	
;incstack = 0
	callstack 5
; Regs used in _Compression_Ctrl: [wreg+status,2+status,0]
	line	261
	
l8429:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_trashDoorState)),w
	btfsc	status,2
	goto	u3321
	goto	u3320
u3321:
	goto	l8435
u3320:
	
l8431:	
		decf	((_trashDoorState)),w
	btfsc	status,2
	goto	u3331
	goto	u3330
u3331:
	goto	l8435
u3330:
	line	263
	
l8433:	
	movlw	low(03h)
	movwf	(??_Compression_Ctrl+0)+0
	movf	(??_Compression_Ctrl+0)+0,w
	movwf	(_compressionState)
	line	264
	goto	l4296
	line	265
	
l8435:	
		movlw	2
	xorwf	((_compressionState)),w
	btfsc	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l4296
u3340:
	line	267
	
l8437:	
		decf	((_trashDoorState)),w
	btfss	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l8441
u3350:
	line	269
	
l8439:	
	clrf	(_compressionState)
	line	270
	goto	l4296
	line	273
	
l8441:	
		decf	((_compressionState)),w
	btfsc	status,2
	goto	u3361
	goto	u3360
u3361:
	goto	l4292
u3360:
	
l8443:	
		movlw	4
	xorwf	((_compressionState)),w
	btfsc	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l4292
u3370:
	line	275
	
l8445:	
	clrf	(_compressionState)
	incf	(_compressionState),f
	goto	l4296
	line	278
	
l4292:	
	line	279
	
l4296:	
	return
	callstack 0
GLOBAL	__end_of_Compression_Ctrl
	__end_of_Compression_Ctrl:
	signat	_Compression_Ctrl,89
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
psect	text40,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Interrupts.c"
	line	3
global __ptext40
__ptext40:	;psect for function _Interrupts_Function
psect	text40
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Interrupts.c"
	line	3
	
_Interrupts_Function:	
;incstack = 0
	callstack 1
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
psect	text40
	line	14
	
i1l8567:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(140)^080h,(1)&7	;volatile
	goto	u355_21
	goto	u355_20
u355_21:
	goto	i1l3613
u355_20:
	
i1l8569:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(12),(1)&7	;volatile
	goto	u356_21
	goto	u356_20
u356_21:
	goto	i1l3613
u356_20:
	line	16
	
i1l8571:	
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
	goto	u357_21
	goto	u357_20
u357_21:
	goto	i1l3614
u357_20:
	line	20
	
i1l8573:	
	movlw	01h
	movwf	(_timeSysTick)	;volatile
	movlw	0
	movwf	((_timeSysTick))+1	;volatile
	line	21
	
i1l3614:	
	line	22
	movlw	low(0DDh)
	movwf	(17)	;volatile
	line	23
	
i1l8575:	
	bcf	(97/8),(97)&7	;volatile
	line	25
	
i1l3613:	
	line	26
	movlw	013h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_timeReset_flag+1),w
	movlw	088h
	skipnz
	subwf	(_timeReset_flag),w
	skipnc
	goto	u358_21
	goto	u358_20
u358_21:
	goto	i1l3616
u358_20:
	line	28
	
i1l8577:	
# 28 "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Interrupts.c"
clrwdt ;# 
psect	text40
	line	30
	
i1l3616:	
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
