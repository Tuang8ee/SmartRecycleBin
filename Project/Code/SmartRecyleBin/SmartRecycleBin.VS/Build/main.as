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
	FNCALL	_main,_Loop
	FNCALL	_main,_MCU_Config
	FNCALL	_main,_Step_Set
	FNCALL	_main,_Step_Start
	FNCALL	_main,_Step_Stop
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
	FNCALL	_Startup_Infor,_GPIO_Write
	FNCALL	_Loop,_Compression_Ctrl
	FNCALL	_Loop,_Compression_Run
	FNCALL	_Loop,_Disinfection_Ctrl
	FNCALL	_Loop,_Disionfection_Run
	FNCALL	_Loop,_Step_Start
	FNCALL	_Loop,_TimeSysTickUpdate
	FNCALL	_Loop,_TrashDoor_Ctrl
	FNCALL	_TrashDoor_Ctrl,_GPIO_Read
	FNCALL	_TrashDoor_Ctrl,_IRSensor_Read
	FNCALL	_TrashDoor_Ctrl,_TrashDoor_Close
	FNCALL	_TrashDoor_Ctrl,_TrashDoor_Open
	FNCALL	_TrashDoor_Ctrl,___ftge
	FNCALL	_TrashDoor_Ctrl,___lwmod
	FNCALL	_TrashDoor_Open,_GPIO_Write
	FNCALL	_TrashDoor_Open,_Step_Set
	FNCALL	_TrashDoor_Open,_Step_Stop
	FNCALL	_TrashDoor_Close,_GPIO_Write
	FNCALL	_TrashDoor_Close,_Step_Set
	FNCALL	_TrashDoor_Close,_Step_Stop
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
	FNCALL	_Step_Start,_Delay_us
	FNCALL	_Step_Start,_GPIO_Read
	FNCALL	_Step_Start,_GPIO_Write
	FNCALL	_Disionfection_Run,_GPIO_Write
	FNCALL	_Compression_Run,_GPIO_Write
	FNCALL	_Compression_Run,_Step_Set
	FNCALL	_Compression_Run,_Step_Stop
	FNCALL	_Compression_Run,_UltraSensor_Read
	FNCALL	_Compression_Run,___llmod
	FNCALL	_UltraSensor_Read,_UltraSonicSensor_Read
	FNCALL	_UltraSensor_Read,___lwdiv
	FNCALL	_UltraSonicSensor_Read,_GPIO_Read
	FNCALL	_UltraSonicSensor_Read,_GPIO_Write
	FNCALL	_Step_Stop,_GPIO_Write
	FNCALL	_Step_Set,_GPIO_Write
	FNCALL	_Step_Set,___wmul
	FNROOT	_main
	FNCALL	intlevel1,_Interrupts_Function
	global	intlevel1
	FNROOT	intlevel1
	global	_disinfectionState
	global	_SW2
	global	_SW1
	global	_Motor_0
	global	_LED2
	global	_LED1
	global	_BUZZER
	global	_winchStepHandle
	global	_doorStepHandle
	global	_compressStepHandle
	global	_UltraSonic_2
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	69

;initializer for _disinfectionState
	retlw	02h
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	161

;initializer for _SW2
	retlw	low(5|((0x0)<<8))
	retlw	05h
	line	160

;initializer for _SW1
	retlw	low(5|((0x0)<<8))
	retlw	04h
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
	retlw	04Bh
	retlw	0

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
	retlw	05Ah
	retlw	0

	retlw	low(7|((0x0)<<8))
	retlw	03h
	retlw	low(8|((0x0)<<8))
	retlw	low(0)
	retlw	low(7|((0x0)<<8))
	retlw	02h
	line	62

;initializer for _compressStepHandle
	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)
	retlw	low highword(0)
	retlw	high highword(0)

	retlw	01h
	retlw	05Ah
	retlw	0

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
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
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

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	69
_disinfectionState:
       ds      1

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

_timeSysTick:
       ds      2

_trashDoorState:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
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
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	58
_BUZZER:
       ds      2

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
Compression_Run@F1168:
       ds      10

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

psect	dataBANK1
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	62
_compressStepHandle:
       ds      15

psect	dataBANK1
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
	line	142
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
	movlw low(__pdataBANK1+49)
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
	movlw low(__pdataBANK0+14)
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
	line	#
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
	clrf	((__pbssBANK1)+2)&07Fh
	clrf	((__pbssBANK1)+3)&07Fh
	clrf	((__pbssBANK1)+4)&07Fh
	clrf	((__pbssBANK1)+5)&07Fh
	clrf	((__pbssBANK1)+6)&07Fh
	clrf	((__pbssBANK1)+7)&07Fh
	clrf	((__pbssBANK1)+8)&07Fh
	clrf	((__pbssBANK1)+9)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
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
?_Step_Set:	; 1 bytes @ 0x0
?_Step_Start:	; 1 bytes @ 0x0
?_Step_Stop:	; 1 bytes @ 0x0
?_Timer2_Interrupt_Init:	; 1 bytes @ 0x0
?_UART_WriteStr:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_ADC_BASE_Init:	; 1 bytes @ 0x0
?_Reset_ADC_Register:	; 1 bytes @ 0x0
?_Interrupts_Function:	; 1 bytes @ 0x0
??_Interrupts_Function:	; 1 bytes @ 0x0
?_UltraSensor_Read:	; 1 bytes @ 0x0
?_TrashDoor_Open:	; 1 bytes @ 0x0
?_TrashDoor_Close:	; 1 bytes @ 0x0
?_Compression_Ctrl:	; 1 bytes @ 0x0
?_Compression_Run:	; 1 bytes @ 0x0
?_Disinfection_Ctrl:	; 1 bytes @ 0x0
?_Disionfection_Run:	; 1 bytes @ 0x0
?_TimeSysTickUpdate:	; 1 bytes @ 0x0
?_UART_WriteChar:	; 1 bytes @ 0x0
	ds	2
?___ftge:	; 1 bit 
?_GPIO_Write:	; 1 bytes @ 0x2
?_GPIO_Read:	; 1 bytes @ 0x2
??_Timer2_Interrupt_Init:	; 1 bytes @ 0x2
??_ADC_BASE_Init:	; 1 bytes @ 0x2
??_Reset_ADC_Register:	; 1 bytes @ 0x2
?_Delay_us:	; 1 bytes @ 0x2
??_Compression_Ctrl:	; 1 bytes @ 0x2
??_Disinfection_Ctrl:	; 1 bytes @ 0x2
??_TimeSysTickUpdate:	; 1 bytes @ 0x2
??_UART_WriteChar:	; 1 bytes @ 0x2
	global	?_strlen
?_strlen:	; 2 bytes @ 0x2
	global	?___wmul
?___wmul:	; 2 bytes @ 0x2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x2
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x2
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
	global	Delay_us@time
Delay_us@time:	; 2 bytes @ 0x2
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
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
??_Delay_us:	; 1 bytes @ 0x4
	global	GPIO_Read@GPIO_Port
GPIO_Read@GPIO_Port:	; 1 bytes @ 0x4
	global	TimeSysTickUpdate@ptimeSysTick
TimeSysTickUpdate@ptimeSysTick:	; 1 bytes @ 0x4
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x4
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x4
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x4
	ds	1
??_ADC_Read:	; 1 bytes @ 0x5
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x5
	global	strlen@s
strlen@s:	; 1 bytes @ 0x5
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x5
	ds	1
??___wmul:	; 1 bytes @ 0x6
??___lwdiv:	; 1 bytes @ 0x6
??___lwmod:	; 1 bytes @ 0x6
	global	GPIO_Write@GPIO_Port
GPIO_Write@GPIO_Port:	; 1 bytes @ 0x6
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x6
	global	strlen@cp
strlen@cp:	; 1 bytes @ 0x6
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x6
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x6
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x6
	ds	1
??_Step_Stop:	; 1 bytes @ 0x7
??_UART_WriteStr:	; 1 bytes @ 0x7
?_UltraSonicSensor_Read:	; 1 bytes @ 0x7
??___ftpack:	; 1 bytes @ 0x7
?_Startup_Infor:	; 1 bytes @ 0x7
??_Disionfection_Run:	; 1 bytes @ 0x7
	global	ADC_Read@channel
ADC_Read@channel:	; 1 bytes @ 0x7
	global	Startup_Infor@index
Startup_Infor@index:	; 1 bytes @ 0x7
	global	Step_Start@stepHandle
Step_Start@stepHandle:	; 1 bytes @ 0x7
	global	UltraSonicSensor_Read@system_tick
UltraSonicSensor_Read@system_tick:	; 1 bytes @ 0x7
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x7
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x7
	ds	1
??___ftge:	; 1 bytes @ 0x8
	global	Startup_Infor@GPIO
Startup_Infor@GPIO:	; 1 bytes @ 0x8
	global	Step_Set@stepHandle
Step_Set@stepHandle:	; 1 bytes @ 0x8
	global	Step_Stop@stepHandle
Step_Stop@stepHandle:	; 1 bytes @ 0x8
	ds	1
??_TrashDoor_Open:	; 1 bytes @ 0x9
??_TrashDoor_Close:	; 1 bytes @ 0x9
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x9
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_Step_Set:	; 1 bytes @ 0x0
??_Step_Start:	; 1 bytes @ 0x0
??_UltraSonicSensor_Read:	; 1 bytes @ 0x0
??_Startup_Infor:	; 1 bytes @ 0x0
??___aldiv:	; 1 bytes @ 0x0
??___llmod:	; 1 bytes @ 0x0
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x0
	global	?___lbtoft
?___lbtoft:	; 3 bytes @ 0x0
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x0
	global	UART_WriteStr@len
UART_WriteStr@len:	; 2 bytes @ 0x0
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x0
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x0
	ds	1
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x1
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x1
	ds	1
	global	UART_WriteStr@data
UART_WriteStr@data:	; 1 bytes @ 0x2
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x2
	ds	1
??___lbtoft:	; 1 bytes @ 0x3
??___lwtoft:	; 1 bytes @ 0x3
	global	UART_WriteStr@i
UART_WriteStr@i:	; 1 bytes @ 0x3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x3
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x3
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x4
	global	TrashDoor_Open@state
TrashDoor_Open@state:	; 1 bytes @ 0x4
	global	TrashDoor_Close@state
TrashDoor_Close@state:	; 1 bytes @ 0x4
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x4
	ds	2
??___ftmul:	; 1 bytes @ 0x6
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
??_UltraSensor_Read:	; 1 bytes @ 0xB
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0xB
	ds	3
	global	UltraSensor_Read@ptimeSysTick
UltraSensor_Read@ptimeSysTick:	; 1 bytes @ 0xE
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0xE
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0xE
	ds	1
??_MCU_Config:	; 1 bytes @ 0xF
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0xF
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0xF
	global	UltraSensor_Read@distance_buff
UltraSensor_Read@distance_buff:	; 2 bytes @ 0xF
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x10
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x10
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x10
	ds	1
	global	UltraSensor_Read@index
UltraSensor_Read@index:	; 1 bytes @ 0x11
	ds	1
	global	UltraSensor_Read@distance
UltraSensor_Read@distance:	; 2 bytes @ 0x12
	ds	1
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x13
	ds	1
??_Compression_Run:	; 1 bytes @ 0x14
	ds	1
	global	Compression_Run@TX
Compression_Run@TX:	; 10 bytes @ 0x15
	ds	1
??___ftdiv:	; 1 bytes @ 0x16
	ds	4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x1A
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x1B
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x1E
	ds	1
	global	Compression_Run@distance
Compression_Run@distance:	; 1 bytes @ 0x1F
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x1F
	ds	1
	global	?_IRSensor_Read
?_IRSensor_Read:	; 3 bytes @ 0x20
	global	Compression_Run@ptimeSysTick
Compression_Run@ptimeSysTick:	; 1 bytes @ 0x20
	ds	3
??_IRSensor_Read:	; 1 bytes @ 0x23
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
	global	_TrashDoor_Ctrl$3970
_TrashDoor_Ctrl$3970:	; 3 bytes @ 0x2C
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
	global	main@test
main@test:	; 1 bytes @ 0x33
	ds	1
;!
;!Data Sizes:
;!    Strings     11
;!    Constant    0
;!    Data        64
;!    BSS         23
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      12
;!    BANK0            80     52      78
;!    BANK1            80      0      59
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    Step_Start@stepHandle.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Step_Stop@stepHandle.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    Step_Set@stepHandle.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    strlen@s	PTR const unsigned char  size(1) Largest target is 11
;!		 -> STR_1(CODE[11]), 
;!
;!    strlen@cp	PTR const unsigned char  size(1) Largest target is 11
;!		 -> STR_1(CODE[11]), 
;!
;!    UltraSonicSensor_Read@system_tick	PTR volatile unsigned int  size(1) Largest target is 2
;!		 -> timeSysTick(BANK0[2]), 
;!
;!    UltraSonicSensor_Read@sensor.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    UltraSonicSensor_Read@sensor	PTR struct . size(1) Largest target is 6
;!		 -> UltraSonic_2(BANK1[4]), 
;!
;!    UART_WriteStr@data	PTR const unsigned char  size(1) Largest target is 11
;!		 -> STR_1(CODE[11]), 
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
;!    TrashDoor_Ctrl@state	PTR enum E1118 size(1) Largest target is 1
;!		 -> trashDoorState(BANK0[1]), 
;!
;!    TrashDoor_Close@state	PTR enum E1118 size(1) Largest target is 1
;!		 -> trashDoorState(BANK0[1]), 
;!
;!    TrashDoor_Open@state	PTR enum E1118 size(1) Largest target is 1
;!		 -> trashDoorState(BANK0[1]), 
;!
;!    UltraSensor_Read@ptimeSysTick	PTR volatile unsigned int  size(1) Largest target is 2
;!		 -> timeSysTick(BANK0[2]), 
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
;!		 -> winchStepHandle(BANK1[15]), doorStepHandle(BANK1[15]), compressStepHandle(BANK1[15]), 
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
;!		 -> winchStepHandle(BANK1[15]), doorStepHandle(BANK1[15]), compressStepHandle(BANK1[15]), 
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
;!		 -> winchStepHandle(BANK1[15]), doorStepHandle(BANK1[15]), compressStepHandle(BANK1[15]), 
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
;!    IR_Sensor_1.Port	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTE(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), 
;!
;!    UltraSonic_2.Port	PTR volatile unsigned char  size(1) Largest target is 1
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
;!    _UART_WriteStr->_strlen
;!    _UART_BASE_Init->___aldiv
;!    _Startup_Infor->_GPIO_Write
;!    _TrashDoor_Ctrl->_TrashDoor_Close
;!    _TrashDoor_Ctrl->_TrashDoor_Open
;!    _TrashDoor_Open->_Step_Set
;!    _TrashDoor_Open->_Step_Stop
;!    _TrashDoor_Close->_Step_Set
;!    _TrashDoor_Close->_Step_Stop
;!    ___lwtoft->___ftpack
;!    ___lbtoft->___ftpack
;!    ___ftmul->___ftpack
;!    ___ftdiv->___ftpack
;!    ___ftadd->___ftpack
;!    _ADC_Read->_ADC_BASE_Init
;!    _Step_Start->_GPIO_Write
;!    _Disionfection_Run->_GPIO_Write
;!    _Compression_Run->___llmod
;!    _UltraSensor_Read->___lwdiv
;!    _UltraSonicSensor_Read->_GPIO_Write
;!    _Step_Stop->_GPIO_Write
;!    _Step_Set->___wmul
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
;!    _TrashDoor_Open->_Step_Set
;!    _TrashDoor_Close->_Step_Set
;!    _IRSensor_Read->___ftdiv
;!    ___ftdiv->___ftmul
;!    ___ftadd->___lwtoft
;!    _Compression_Run->_UltraSensor_Read
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
;! (0) _main                                                 2     2      0  206828
;!                                             50 BANK0      2     2      0
;!                          _GPIO_Read
;!                         _GPIO_Write
;!                               _Loop
;!                         _MCU_Config
;!                           _Step_Set
;!                         _Step_Start
;!                          _Step_Stop
;! ---------------------------------------------------------------------------------
;! (1) _MCU_Config                                           3     3      0   28726
;!                                             15 BANK0      3     3      0
;!                         _GPIO_Write
;!                 _Reset_ADC_Register
;!                      _Startup_Infor
;!                          _Step_Stop
;!              _Timer2_Interrupt_Init
;!                     _UART_BASE_Init
;!                      _UART_WriteStr
;! ---------------------------------------------------------------------------------
;! (2) _UART_WriteStr                                        6     6      0     286
;!                                              7 COMMON     2     2      0
;!                                              0 BANK0      4     4      0
;!                     _UART_WriteChar
;!                             _strlen
;! ---------------------------------------------------------------------------------
;! (4) _strlen                                               5     3      2     120
;!                                              2 COMMON     5     3      2
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
;! (2) _Startup_Infor                                        5     4      1    9258
;!                                              7 COMMON     2     1      1
;!                                              0 BANK0      3     3      0
;!                         _GPIO_Write
;! ---------------------------------------------------------------------------------
;! (2) _Reset_ADC_Register                                   1     1      0       0
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Loop                                                 2     2      0  137776
;!                                             48 BANK0      2     2      0
;!                   _Compression_Ctrl
;!                    _Compression_Run
;!                  _Disinfection_Ctrl
;!                  _Disionfection_Run
;!                         _Step_Start
;!                  _TimeSysTickUpdate
;!                     _TrashDoor_Ctrl
;! ---------------------------------------------------------------------------------
;! (2) _TrashDoor_Ctrl                                       8     7      1   77376
;!                                             40 BANK0      8     7      1
;!                          _GPIO_Read
;!                      _IRSensor_Read
;!                    _TrashDoor_Close
;!                     _TrashDoor_Open
;!                             ___ftge
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              6     2      4     287
;!                                              2 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (3) _TrashDoor_Open                                       2     2      0   28433
;!                                              9 COMMON     1     1      0
;!                                              4 BANK0      1     1      0
;!                         _GPIO_Write
;!                           _Step_Set
;!                          _Step_Stop
;! ---------------------------------------------------------------------------------
;! (3) _TrashDoor_Close                                      2     2      0   28433
;!                                              9 COMMON     1     1      0
;!                                              4 BANK0      1     1      0
;!                         _GPIO_Write
;!                           _Step_Set
;!                          _Step_Stop
;! ---------------------------------------------------------------------------------
;! (3) _IRSensor_Read                                        8     5      3   18027
;!                                             32 BANK0      8     5      3
;!                           _ADC_Read
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                           ___lbtoft
;!                           ___lwtoft
;! ---------------------------------------------------------------------------------
;! (4) ___lwtoft                                             4     1      3    2974
;!                                              0 BANK0      4     1      3
;!                           _ADC_Read (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (4) ___lbtoft                                             8     5      3    2897
;!                                              0 BANK0      8     5      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (4) ___ftmul                                             16    10      6    3514
;!                                              0 BANK0     16    10      6
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___ftge                                               6     0      6     392
;!                                              2 COMMON     6     0      6
;! ---------------------------------------------------------------------------------
;! (4) ___ftdiv                                             16    10      6    3600
;!                                             16 BANK0     16    10      6
;!                            ___ftmul (ARG)
;!                           ___ftpack
;!                           ___lbtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___ftadd                                             13     7      6    4359
;!                                              4 BANK0     13     7      6
;!                           _ADC_Read (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___ftpack                                             8     3      5    2866
;!                                              2 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! (4) _ADC_Read                                             5     3      2      22
;!                                              3 COMMON     5     3      2
;!                      _ADC_BASE_Init
;! ---------------------------------------------------------------------------------
;! (5) _ADC_BASE_Init                                        1     1      0       0
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _TimeSysTickUpdate                                    3     3      0      74
;!                                              2 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _Step_Start                                           5     5      0   10880
;!                                              7 COMMON     1     1      0
;!                                              0 BANK0      4     4      0
;!                           _Delay_us
;!                          _GPIO_Read
;!                         _GPIO_Write
;! ---------------------------------------------------------------------------------
;! (2) _Delay_us                                             2     0      2     151
;!                                              2 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! (2) _Disionfection_Run                                    1     1      0    8993
;!                                              7 COMMON     1     1      0
;!                         _GPIO_Write
;! ---------------------------------------------------------------------------------
;! (2) _Disinfection_Ctrl                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Compression_Run                                     13    13      0   40327
;!                                             20 BANK0     13    13      0
;!                         _GPIO_Write
;!                           _Step_Set
;!                          _Step_Stop
;!                   _UltraSensor_Read
;!                            ___llmod
;! ---------------------------------------------------------------------------------
;! (3) ___llmod                                             10     2      8     386
;!                                              2 COMMON     8     0      8
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) _UltraSensor_Read                                     9     9      0   11527
;!                                             11 BANK0      9     9      0
;!              _UltraSonicSensor_Read
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              8     4      4     290
;!                                              2 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (4) _UltraSonicSensor_Read                               12    11      1   10837
;!                                              7 COMMON     1     0      1
;!                                              0 BANK0     11    11      0
;!                          _GPIO_Read
;!                         _GPIO_Write
;! ---------------------------------------------------------------------------------
;! (2) _GPIO_Read                                            3     2      1    1133
;!                                              2 COMMON     3     2      1
;! ---------------------------------------------------------------------------------
;! (1) _Step_Stop                                            2     2      0    9482
;!                                              7 COMMON     2     2      0
;!                         _GPIO_Write
;! ---------------------------------------------------------------------------------
;! (1) _Step_Set                                             5     5      0    9801
;!                                              8 COMMON     1     1      0
;!                                              0 BANK0      4     4      0
;!                         _GPIO_Write
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     290
;!                                              2 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (2) _GPIO_Write                                           5     3      2    8993
;!                                              2 COMMON     5     3      2
;! ---------------------------------------------------------------------------------
;! (2) _Compression_Ctrl                                     1     1      0       0
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (6) _Interrupts_Function                                  2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _GPIO_Read
;!   _GPIO_Write
;!   _Loop
;!     _Compression_Ctrl
;!     _Compression_Run
;!       _GPIO_Write
;!       _Step_Set
;!         _GPIO_Write
;!         ___wmul
;!       _Step_Stop
;!         _GPIO_Write
;!       _UltraSensor_Read
;!         _UltraSonicSensor_Read
;!           _GPIO_Read
;!           _GPIO_Write
;!         ___lwdiv
;!       ___llmod
;!     _Disinfection_Ctrl
;!     _Disionfection_Run
;!       _GPIO_Write
;!     _Step_Start
;!       _Delay_us
;!       _GPIO_Read
;!       _GPIO_Write
;!     _TimeSysTickUpdate
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
;!         _Step_Set
;!         _Step_Stop
;!       _TrashDoor_Open
;!         _GPIO_Write
;!         _Step_Set
;!         _Step_Stop
;!       ___ftge
;!       ___lwmod
;!   _MCU_Config
;!     _GPIO_Write
;!     _Reset_ADC_Register
;!     _Startup_Infor
;!       _GPIO_Write
;!     _Step_Stop
;!     _Timer2_Interrupt_Init
;!     _UART_BASE_Init
;!       ___aldiv
;!     _UART_WriteStr
;!       _UART_WriteChar
;!       _strlen
;!   _Step_Set
;!   _Step_Start
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
;!BANK1               50      0      3B       7       73.8%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     34      4E       5       97.5%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      A       C       1       85.7%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      95      12        0.0%
;!ABS                  0      0      95       3        0.0%
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
;;  test            1   51[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_GPIO_Read
;;		_GPIO_Write
;;		_Loop
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
	callstack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	8
	
l9207:	
	clrf	(main@test)
	line	9
	
l9209:	
	fcall	_MCU_Config
	line	10
	
l9211:	
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
	
l9213:	
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_SW1)+01h,w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(GPIO_Read@Pin)
	movf	(_SW1),w
	fcall	_GPIO_Read
	xorlw	01h
	skipz
	goto	u5071
	goto	u5070
u5071:
	goto	l9217
u5070:
	line	14
	
l9215:	
	clrf	(main@test)
	incf	(main@test),f
	line	19
	
l9217:	
	movf	((main@test)),w
	btfss	status,2
	goto	u5081
	goto	u5080
u5081:
	goto	l9221
u5080:
	line	22
	
l9219:	
	movlw	(low(_timeSysTick|((0x0)<<8)))&0ffh
	fcall	_Loop
	line	23
	goto	l9255
	line	31
	
l9221:	
	movf	0+(_SW1)+01h,w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(GPIO_Read@Pin)
	movf	(_SW1),w
	fcall	_GPIO_Read
	xorlw	01h
	skipz
	goto	u5091
	goto	u5090
u5091:
	goto	l9237
u5090:
	line	33
	
l9223:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	0+(_compressStepHandle)^080h+06h
	incf	0+(_compressStepHandle)^080h+06h,f
	line	34
	
l9225:	
	movlw	090h
	movwf	(_compressStepHandle)^080h
	movlw	01h
	movwf	((_compressStepHandle)^080h)+1
	line	35
	
l9227:	
	movlw	(low(_compressStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Set
	line	36
	
l9229:	
	movlw	(low(_compressStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Start
	line	39
	
l9231:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_winchStepHandle)^080h+06h
	incf	0+(_winchStepHandle)^080h+06h,f
	line	40
	movlw	090h
	movwf	(_winchStepHandle)^080h
	movlw	01h
	movwf	((_winchStepHandle)^080h)+1
	line	41
	
l9233:	
	movlw	(low(_winchStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Set
	line	42
	
l9235:	
	movlw	(low(_winchStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Start
	line	49
	goto	l9255
	line	51
	
l9237:	
	movf	0+(_SW2)+01h,w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(GPIO_Read@Pin)
	movf	(_SW2),w
	fcall	_GPIO_Read
	xorlw	01h
	skipz
	goto	u5101
	goto	u5100
u5101:
	goto	l9253
u5100:
	line	53
	
l9239:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	0+(_compressStepHandle)^080h+06h
	line	54
	
l9241:	
	movlw	090h
	movwf	(_compressStepHandle)^080h
	movlw	01h
	movwf	((_compressStepHandle)^080h)+1
	line	55
	
l9243:	
	movlw	(low(_compressStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Set
	line	56
	
l9245:	
	movlw	(low(_compressStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Start
	line	59
	
l9247:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_winchStepHandle)^080h+06h
	line	60
	movlw	090h
	movwf	(_winchStepHandle)^080h
	movlw	01h
	movwf	((_winchStepHandle)^080h)+1
	line	61
	
l9249:	
	movlw	(low(_winchStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Set
	line	62
	
l9251:	
	movlw	(low(_winchStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Start
	line	69
	goto	l9255
	line	72
	
l9253:	
	movlw	(low(_compressStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Stop
	line	73
	movlw	(low(_doorStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Stop
	line	74
	movlw	(low(_winchStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Stop
	line	77
	
l9255:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_timeReset_flag)),w
iorwf	((_timeReset_flag+1)),w
	btfsc	status,2
	goto	u5111
	goto	u5110
u5111:
	goto	l9217
u5110:
	line	79
	
l9257:	
	clrf	(_timeReset_flag)
	clrf	(_timeReset_flag+1)
	goto	l9217
	global	start
	ljmp	start
	callstack 0
	line	83
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
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
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
	line	37
global __ptext1
__ptext1:	;psect for function _MCU_Config
psect	text1
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
	line	37
	
_MCU_Config:	
;incstack = 0
	callstack 3
; Regs used in _MCU_Config: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	43
	
l9165:	
	movlw	low(05h)
	movwf	(??_MCU_Config+0)+0
	movf	(??_MCU_Config+0)+0,w
	movwf	(Startup_Infor@index)
	movlw	(low(_BUZZER|((0x0)<<8)))&0ffh
	fcall	_Startup_Infor
	line	46
	
l9167:	
	fcall	_Timer2_Interrupt_Init
	line	49
	
l9169:	
	fcall	_Reset_ADC_Register
	line	52
	
l9171:	
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
	
l9173:	
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
	u5127:
decfsz	((??_MCU_Config+0)+0),f
	goto	u5127
	decfsz	((??_MCU_Config+0)+0+1),f
	goto	u5127
	decfsz	((??_MCU_Config+0)+0+2),f
	goto	u5127
	nop2
asmopt pop

	line	58
	
l9175:	
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	fcall	_UART_WriteStr
	line	59
	
l9177:	
	movf	0+(_LED2)+01h,w
	movwf	(??_MCU_Config+0)+0
	movf	(??_MCU_Config+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(_LED2),w
	fcall	_GPIO_Write
	line	61
	
l9179:	
	movlw	(low(_compressStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Stop
	line	62
	
l9181:	
	movlw	(low(_winchStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Stop
	line	63
	
l9183:	
	movlw	(low(_doorStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Stop
	line	64
	
l1806:	
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
;;  data            1    wreg     PTR const unsigned char 
;;		 -> STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  data            1    2[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(11), 
;;  len             2    0[BANK0 ] unsigned int 
;;  i               1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_UART_WriteChar
;;		_strlen
;; This function is called by:
;;		_MCU_Config
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UART.c"
	line	37
global __ptext2
__ptext2:	;psect for function _UART_WriteStr
psect	text2
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UART.c"
	line	37
	
_UART_WriteStr:	
;incstack = 0
	callstack 3
; Regs used in _UART_WriteStr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(UART_WriteStr@data)
	line	39
	
l8257:	
	line	40
	
l8259:	
	movf	(UART_WriteStr@data),w
	fcall	_strlen
	movf	(1+(?_strlen)),w
	movwf	(UART_WriteStr@len+1)
	movf	(0+(?_strlen)),w
	movwf	(UART_WriteStr@len)
	line	41
	
l8261:	
	clrf	(UART_WriteStr@i)
	goto	l8267
	line	43
	
l8263:	
	movf	(UART_WriteStr@i),w
	addwf	(UART_WriteStr@data),w
	movwf	fsr0
	fcall	stringdir
	fcall	_UART_WriteChar
	line	41
	
l8265:	
	movlw	low(01h)
	movwf	(??_UART_WriteStr+0)+0
	movf	(??_UART_WriteStr+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	(UART_WriteStr@i),f
	
l8267:	
	movf	(UART_WriteStr@i),w
	movwf	(??_UART_WriteStr+0)+0
	clrf	(??_UART_WriteStr+0)+0+1
	movf	1+(??_UART_WriteStr+0)+0,w
	subwf	(UART_WriteStr@len+1),w
	skipz
	goto	u3205
	movf	0+(??_UART_WriteStr+0)+0,w
	subwf	(UART_WriteStr@len),w
u3205:
	skipnc
	goto	u3201
	goto	u3200
u3201:
	goto	l8263
u3200:
	line	45
	
l5556:	
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
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  s               1    5[COMMON] PTR const unsigned char 
;;		 -> STR_1(11), 
;;  cp              1    6[COMMON] PTR const unsigned char 
;;		 -> STR_1(11), 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 2
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_WriteStr
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=2
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\strlen.c"
	line	4
global __ptext3
__ptext3:	;psect for function _strlen
psect	text3
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\strlen.c"
	line	4
	
_strlen:	
;incstack = 0
	callstack 3
; Regs used in _strlen: [wreg-fsr0h+status,2+status,0+pclath]
	movwf	(strlen@s)
	line	8
	
l8125:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	movwf	(strlen@cp)
	line	9
	goto	l8129
	line	10
	
l8127:	
	movlw	low(01h)
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	addwf	(strlen@cp),f
	line	9
	
l8129:	
	movf	(strlen@cp),w
	movwf	fsr0
	fcall	stringdir
	xorlw	0
	skipz
	goto	u2931
	goto	u2930
u2931:
	goto	l8127
u2930:
	line	12
	
l8131:	
	movf	(strlen@s),w
	subwf	(strlen@cp),w
	movwf	(?_strlen)
	clrf	(?_strlen+1)
	btfsc	(?_strlen),7
	decf	(?_strlen+1),f
	line	13
	
l6667:	
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
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UART.c"
	line	21
global __ptext4
__ptext4:	;psect for function _UART_WriteChar
psect	text4
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UART.c"
	line	21
	
_UART_WriteChar:	
;incstack = 0
	callstack 4
; Regs used in _UART_WriteChar: [wreg]
	movwf	(UART_WriteChar@data)
	line	23
	
l8123:	
	movf	(UART_WriteChar@data),w
	movwf	(25)	;volatile
	line	24
	
l5538:	
	btfss	(100/8),(100)&7	;volatile
	goto	u2911
	goto	u2910
u2911:
	goto	l5538
u2910:
	
l5540:	
	line	25
	bcf	(100/8),(100)&7	;volatile
	line	26
	
l5541:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u2921
	goto	u2920
u2921:
	goto	l5541
u2920:
	line	27
	
l5544:	
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
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext5
__ptext5:	;psect for function _UART_BASE_Init
psect	text5
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UART.c"
	line	13
	
_UART_BASE_Init:	
;incstack = 0
	callstack 4
; Regs used in _UART_BASE_Init: [wreg+status,2+status,0+pclath+cstack]
	line	15
	
l9025:	
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
	
l9027:	
	movf	(UART_BASE_Init@baud),w
	movwf	(??_UART_BASE_Init+0)+0
	movf	(UART_BASE_Init@baud+1),w
	movwf	((??_UART_BASE_Init+0)+0+1)
	movf	(UART_BASE_Init@baud+2),w
	movwf	((??_UART_BASE_Init+0)+0+2)
	movf	(UART_BASE_Init@baud+3),w
	movwf	((??_UART_BASE_Init+0)+0+3)
	movlw	04h
u4785:
	clrc
	rlf	(??_UART_BASE_Init+0)+0,f
	rlf	(??_UART_BASE_Init+0)+1,f
	rlf	(??_UART_BASE_Init+0)+2,f
	rlf	(??_UART_BASE_Init+0)+3,f
u4780:
	addlw	-1
	skipz
	goto	u4785
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
	
l5535:	
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
psect	text6,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\aldiv.c"
	line	5
global __ptext6
__ptext6:	;psect for function ___aldiv
psect	text6
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\aldiv.c"
	line	5
	
___aldiv:	
;incstack = 0
	callstack 4
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	13
	
l8947:	
	clrf	(___aldiv@sign)
	line	14
	
l8949:	
	btfss	(___aldiv@divisor+3),7
	goto	u4591
	goto	u4590
u4591:
	goto	l6309
u4590:
	line	15
	
l8951:	
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
	
l6309:	
	line	18
	btfss	(___aldiv@dividend+3),7
	goto	u4601
	goto	u4600
u4601:
	goto	l8957
u4600:
	line	19
	
l8953:	
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
	
l8955:	
	movlw	low(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	xorwf	(___aldiv@sign),f
	line	22
	
l8957:	
	movlw	high highword(0)
	movwf	(___aldiv@quotient+3)
	movlw	low highword(0)
	movwf	(___aldiv@quotient+2)
	movlw	high(0)
	movwf	(___aldiv@quotient+1)
	movlw	low(0)
	movwf	(___aldiv@quotient)

	line	23
	
l8959:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u4611
	goto	u4610
u4611:
	goto	l8979
u4610:
	line	24
	
l8961:	
	clrf	(___aldiv@counter)
	incf	(___aldiv@counter),f
	line	25
	goto	l8965
	line	26
	
l8963:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u4625:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u4625
	line	27
	movlw	low(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	addwf	(___aldiv@counter),f
	line	25
	
l8965:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u4631
	goto	u4630
u4631:
	goto	l8963
u4630:
	line	30
	
l8967:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u4645:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0)+0
	goto	u4645
	line	31
	
l8969:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u4655
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u4655
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u4655
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u4655:
	skipc
	goto	u4651
	goto	u4650
u4651:
	goto	l8975
u4650:
	line	32
	
l8971:	
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
	
l8973:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	line	35
	
l8975:	
	movlw	01h
u4665:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u4665

	line	36
	
l8977:	
	movlw	01h
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u4671
	goto	u4670
u4671:
	goto	l8967
u4670:
	line	38
	
l8979:	
	movf	((___aldiv@sign)),w
	btfsc	status,2
	goto	u4681
	goto	u4680
u4681:
	goto	l8983
u4680:
	line	39
	
l8981:	
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
	
l8983:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	line	41
	
l6319:	
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
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Timer.c"
	line	220
global __ptext7
__ptext7:	;psect for function _Timer2_Interrupt_Init
psect	text7
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Timer.c"
	line	220
	
_Timer2_Interrupt_Init:	
;incstack = 0
	callstack 5
; Regs used in _Timer2_Interrupt_Init: [status,2]
	line	222
	
l8239:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(18)	;volatile
	line	228
	
l8241:	
	bsf	(146/8),(146)&7	;volatile
	line	235
	
l8243:	
	bsf	(145/8),(145)&7	;volatile
	line	243
	
l8245:	
	bsf	(11)+(7/8),(7)&7	;volatile
	line	249
	
l8247:	
	bsf	(11)+(6/8),(6)&7	;volatile
	line	255
	
l8249:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	261
	
l8251:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	line	262
	
l4925:	
	return
	callstack 0
GLOBAL	__end_of_Timer2_Interrupt_Init
	__end_of_Timer2_Interrupt_Init:
	signat	_Timer2_Interrupt_Init,89
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
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
	line	17
global __ptext8
__ptext8:	;psect for function _Startup_Infor
psect	text8
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
	line	17
	
_Startup_Infor:	
;incstack = 0
	callstack 4
; Regs used in _Startup_Infor: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(Startup_Infor@GPIO)
	line	19
	
l9015:	
	goto	l9023
	line	21
	
l9017:	
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
	
l9019:	
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
	u5137:
decfsz	((??_Startup_Infor+0)+0),f
	goto	u5137
	decfsz	((??_Startup_Infor+0)+0+1),f
	goto	u5137
	decfsz	((??_Startup_Infor+0)+0+2),f
	goto	u5137
asmopt pop

	line	23
	
l9021:	
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
	u5147:
decfsz	((??_Startup_Infor+0)+0),f
	goto	u5147
	decfsz	((??_Startup_Infor+0)+0+1),f
	goto	u5147
	decfsz	((??_Startup_Infor+0)+0+2),f
	goto	u5147
asmopt pop

	line	19
	
l9023:	
	movlw	01h
	subwf	(Startup_Infor@index),f
		incf	(((Startup_Infor@index))),w
	btfss	status,2
	goto	u4771
	goto	u4770
u4771:
	goto	l9017
u4770:
	line	26
	
l1800:	
	return
	callstack 0
GLOBAL	__end_of_Startup_Infor
	__end_of_Startup_Infor:
	signat	_Startup_Infor,8313
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
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	28
global __ptext9
__ptext9:	;psect for function _Reset_ADC_Register
psect	text9
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Configuration.c"
	line	28
	
_Reset_ADC_Register:	
;incstack = 0
	callstack 5
; Regs used in _Reset_ADC_Register: [wreg+status,2+status,0]
	line	31
	
l8235:	
	clrf	(31)	;volatile
	line	32
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	34
	
l8237:	
	movlw	low(07h)
	movwf	(??_Reset_ADC_Register+0)+0
	movf	(??_Reset_ADC_Register+0)+0,w
	iorwf	(159)^080h,f	;volatile
	line	35
	
l1803:	
	return
	callstack 0
GLOBAL	__end_of_Reset_ADC_Register
	__end_of_Reset_ADC_Register:
	signat	_Reset_ADC_Register,89
	global	_Loop

;; *************** function _Loop *****************
;; Defined at:
;;		line 538 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
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
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_Compression_Ctrl
;;		_Compression_Run
;;		_Disinfection_Ctrl
;;		_Disionfection_Run
;;		_Step_Start
;;		_TimeSysTickUpdate
;;		_TrashDoor_Ctrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	538
global __ptext10
__ptext10:	;psect for function _Loop
psect	text10
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	538
	
_Loop:	
;incstack = 0
	callstack 2
; Regs used in _Loop: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(Loop@ptimeSysTick)
	line	541
	
l9185:	
		movlw	4
	xorwf	((_compressionState)),w
	btfsc	status,2
	goto	u5051
	goto	u5050
u5051:
	goto	l9191
u5050:
	
l9187:	
		decf	((_compressionState)),w
	btfsc	status,2
	goto	u5061
	goto	u5060
u5061:
	goto	l9191
u5060:
	line	543
	
l9189:	
	movf	(Loop@ptimeSysTick),w
	movwf	(??_Loop+0)+0
	movf	(??_Loop+0)+0,w
	movwf	(TrashDoor_Ctrl@timeSysTick)
	movlw	(low(_trashDoorState|((0x0)<<8)))&0ffh
	fcall	_TrashDoor_Ctrl
	line	546
	
l9191:	
	fcall	_Compression_Ctrl
	line	547
	
l9193:	
	movf	(Loop@ptimeSysTick),w
	fcall	_Compression_Run
	line	549
	
l9195:	
	fcall	_Disinfection_Ctrl
	line	550
	
l9197:	
	fcall	_Disionfection_Run
	line	553
	
l9199:	
	movlw	(low(_compressStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Start
	line	554
	
l9201:	
	movlw	(low(_winchStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Start
	line	555
	
l9203:	
	movlw	(low(_doorStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Start
	line	557
	
l9205:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Loop@ptimeSysTick),w
	fcall	_TimeSysTickUpdate
	line	558
	
l4330:	
	return
	callstack 0
GLOBAL	__end_of_Loop
	__end_of_Loop:
	signat	_Loop,4217
	global	_TrashDoor_Ctrl

;; *************** function _TrashDoor_Ctrl *****************
;; Defined at:
;;		line 243 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
;; Parameters:    Size  Location     Type
;;  state           1    wreg     PTR enum E1118
;;		 -> trashDoorState(1), 
;;  timeSysTick     1   40[BANK0 ] PTR volatile unsigned in
;;		 -> timeSysTick(2), 
;; Auto vars:     Size  Location     Type
;;  state           1   47[BANK0 ] PTR enum E1118
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
;;      Params:         0       1       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
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
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	243
global __ptext11
__ptext11:	;psect for function _TrashDoor_Ctrl
psect	text11
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	243
	
_TrashDoor_Ctrl:	
;incstack = 0
	callstack 2
; Regs used in _TrashDoor_Ctrl: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(TrashDoor_Ctrl@state)
	line	246
	
l9029:	
	movf	0+(_SW1)+01h,w
	movwf	(??_TrashDoor_Ctrl+0)+0
	movf	(??_TrashDoor_Ctrl+0)+0,w
	movwf	(GPIO_Read@Pin)
	movf	(_SW1),w
	fcall	_GPIO_Read
	xorlw	0
	skipnz
	goto	u4791
	goto	u4790
u4791:
	goto	l9049
u4790:
	goto	l9035
	line	250
	
l9033:	
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
	u5157:
decfsz	((??_TrashDoor_Ctrl+0)+0),f
	goto	u5157
	decfsz	((??_TrashDoor_Ctrl+0)+0+1),f
	goto	u5157
	decfsz	((??_TrashDoor_Ctrl+0)+0+2),f
	goto	u5157
	nop
asmopt pop

	line	248
	
l9035:	
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
	goto	u4801
	goto	u4800
u4801:
	goto	l9033
u4800:
	line	252
	
l9037:	
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
	movf	(indf),w
	btfsc	status,2
	goto	u4811
	goto	u4810
u4811:
	goto	l9045
u4810:
	
l9039:	
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
		movlw	2
	xorwf	(indf),w
	btfsc	status,2
	goto	u4821
	goto	u4820
u4821:
	goto	l9045
u4820:
	line	254
	
l9041:	
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
	clrf	indf
	incf	indf,f
	line	255
	
l9043:	
	movlw	high highword(0)
	movwf	(_timeBuffer+3)
	movlw	low highword(0)
	movwf	(_timeBuffer+2)
	movlw	high(0)
	movwf	(_timeBuffer+1)
	movlw	low(0)
	movwf	(_timeBuffer)

	line	257
	goto	l9071
	line	260
	
l9045:	
	movlw	low(03h)
	movwf	(??_TrashDoor_Ctrl+0)+0
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
	movf	(??_TrashDoor_Ctrl+0)+0,w
	movwf	indf
	goto	l9043
	line	267
	
l9049:	
	movlw	0B8h
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
	goto	u4831
	goto	u4830
u4831:
	goto	l9071
u4830:
	line	269
	
l9051:	
	fcall	_IRSensor_Read
	movf	(0+(?_IRSensor_Read)),w
	movwf	(_TrashDoor_Ctrl$3970)
	movf	(1+(?_IRSensor_Read)),w
	movwf	(_TrashDoor_Ctrl$3970+1)
	movf	(2+(?_IRSensor_Read)),w
	movwf	(_TrashDoor_Ctrl$3970+2)
	movf	(_TrashDoor_Ctrl$3970),w
	movwf	(___ftge@ff1)
	movf	(_TrashDoor_Ctrl$3970+1),w
	movwf	(___ftge@ff1+1)
	movf	(_TrashDoor_Ctrl$3970+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x9a
	movwf	(___ftge@ff2)
	movlw	0x99
	movwf	(___ftge@ff2+1)
	movlw	0x3f
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u4841
	goto	u4840
u4841:
	goto	l9065
u4840:
	line	271
	
l9053:	
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
		movlw	5
	bcf	status, 7	;select IRP bank0
	xorwf	(indf),w
	btfsc	status,2
	goto	u4851
	goto	u4850
u4851:
	goto	l9071
u4850:
	
l9055:	
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
		movlw	6
	xorwf	(indf),w
	btfsc	status,2
	goto	u4861
	goto	u4860
u4861:
	goto	l9071
u4860:
	line	273
	
l9057:	
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
		movlw	2
	xorwf	(indf),w
	btfss	status,2
	goto	u4871
	goto	u4870
u4871:
	goto	l9061
u4870:
	line	275
	
l9059:	
	movlw	low(06h)
	movwf	(??_TrashDoor_Ctrl+0)+0
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
	movf	(??_TrashDoor_Ctrl+0)+0,w
	movwf	indf
	line	276
	goto	l9043
	line	279
	
l9061:	
	movlw	low(05h)
	movwf	(??_TrashDoor_Ctrl+0)+0
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
	movf	(??_TrashDoor_Ctrl+0)+0,w
	movwf	indf
	goto	l9043
	line	287
	
l9065:	
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
		movlw	6
	bcf	status, 7	;select IRP bank0
	xorwf	(indf),w
	btfss	status,2
	goto	u4881
	goto	u4880
u4881:
	goto	l9071
u4880:
	line	289
	
l9067:	
	movlw	low(02h)
	movwf	(??_TrashDoor_Ctrl+0)+0
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
	movf	(??_TrashDoor_Ctrl+0)+0,w
	movwf	indf
	goto	l9043
	line	296
	
l9071:	
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
	movf	(indf),w
	btfsc	status,2
	goto	u4891
	goto	u4890
u4891:
	goto	l9077
u4890:
	
l9073:	
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
		decf	(indf),w
	btfsc	status,2
	goto	u4901
	goto	u4900
u4901:
	goto	l9077
u4900:
	
l9075:	
	movf	(TrashDoor_Ctrl@state),w
	movwf	fsr0
		movlw	2
	xorwf	(indf),w
	btfss	status,2
	goto	u4911
	goto	u4910
u4911:
	goto	l9079
u4910:
	line	298
	
l9077:	
	movf	(TrashDoor_Ctrl@state),w
	fcall	_TrashDoor_Close
	line	299
	goto	l4275
	line	302
	
l9079:	
	movf	(TrashDoor_Ctrl@state),w
	fcall	_TrashDoor_Open
	line	304
	
l4275:	
	return
	callstack 0
GLOBAL	__end_of_TrashDoor_Ctrl
	__end_of_TrashDoor_Ctrl:
	signat	_TrashDoor_Ctrl,8313
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: B00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TrashDoor_Ctrl
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\lwmod.c"
	line	5
global __ptext12
__ptext12:	;psect for function ___lwmod
psect	text12
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\lwmod.c"
	line	5
	
___lwmod:	
;incstack = 0
	callstack 4
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	12
	
l8195:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l8213
u3100:
	line	13
	
l8197:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	14
	goto	l8203
	line	15
	
l8199:	
	movlw	01h
	
u3115:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3115
	line	16
	
l8201:	
	movlw	low(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	line	14
	
l8203:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3121
	goto	u3120
u3121:
	goto	l8199
u3120:
	line	19
	
l8205:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3135
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3135:
	skipc
	goto	u3131
	goto	u3130
u3131:
	goto	l8209
u3130:
	line	20
	
l8207:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	21
	
l8209:	
	movlw	01h
	
u3145:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u3145
	line	22
	
l8211:	
	movlw	01h
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l8205
u3150:
	line	24
	
l8213:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	25
	
l6656:	
	return
	callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	_TrashDoor_Open

;; *************** function _TrashDoor_Open *****************
;; Defined at:
;;		line 126 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
;; Parameters:    Size  Location     Type
;;  state           1    wreg     PTR enum E1118
;;		 -> trashDoorState(1), 
;; Auto vars:     Size  Location     Type
;;  state           1    4[BANK0 ] PTR enum E1118
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       1       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_GPIO_Write
;;		_Step_Set
;;		_Step_Stop
;; This function is called by:
;;		_TrashDoor_Ctrl
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	126
global __ptext13
__ptext13:	;psect for function _TrashDoor_Open
psect	text13
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	126
	
_TrashDoor_Open:	
;incstack = 0
	callstack 2
; Regs used in _TrashDoor_Open: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(TrashDoor_Open@state)
	line	128
	
l8885:	
	movf	(TrashDoor_Open@state),w
	movwf	fsr0
		movlw	5
	xorwf	(indf),w
	btfss	status,2
	goto	u4481
	goto	u4480
u4481:
	goto	l8903
u4480:
	line	130
	
l8887:	
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u4491
	movf	(_timeBuffer+2),w
	btfss	status,2
	goto	u4491
	movf	(_timeBuffer+1),w
	btfss	status,2
	goto	u4491
	movlw	11
	subwf	(_timeBuffer),w
	skipz
	goto	u4493
u4493:
	btfsc	status,0
	goto	u4491
	goto	u4490

u4491:
	goto	l8897
u4490:
	line	134
	
l8889:	
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
	line	140
	
l8891:	
	clrf	0+(_doorStepHandle)^080h+06h
	incf	0+(_doorStepHandle)^080h+06h,f
	line	141
	
l8893:	
	movlw	05h
	movwf	(_doorStepHandle)^080h
	movlw	0
	movwf	((_doorStepHandle)^080h)+1
	line	142
	
l8895:	
	movlw	(low(_doorStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Set
	line	144
	movlw	0
	movwf	(_timeBuffer+3)
	movlw	0
	movwf	(_timeBuffer+2)
	movlw	0
	movwf	(_timeBuffer+1)
	movlw	0Bh
	movwf	(_timeBuffer)

	line	148
	goto	l4244
	line	149
	
l8897:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u4500
	movf	(_timeBuffer+2),w
	btfss	status,2
	goto	u4500
	movlw	11
	subwf	(_timeBuffer+1),w
	skipz
	goto	u4503
	movlw	185
	subwf	(_timeBuffer),w
	skipz
	goto	u4503
u4503:
	btfss	status,0
	goto	u4501
	goto	u4500

u4501:
	goto	l4244
u4500:
	line	155
	
l8899:	
	movlw	(low(_doorStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Stop
	line	159
	
l8901:	
	movlw	low(06h)
	movwf	(??_TrashDoor_Open+0)+0
	bcf	status, 5	;RP0=0, select bank0
	movf	(TrashDoor_Open@state),w
	movwf	fsr0
	movf	(??_TrashDoor_Open+0)+0,w
	movwf	indf
	goto	l4244
	line	163
	
l8903:	
	movf	(TrashDoor_Open@state),w
	movwf	fsr0
		movlw	3
	xorwf	(indf),w
	btfss	status,2
	goto	u4511
	goto	u4510
u4511:
	goto	l4244
u4510:
	line	165
	
l8905:	
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u4521
	movf	(_timeBuffer+2),w
	btfss	status,2
	goto	u4521
	movf	(_timeBuffer+1),w
	btfss	status,2
	goto	u4521
	movlw	11
	subwf	(_timeBuffer),w
	skipz
	goto	u4523
u4523:
	btfsc	status,0
	goto	u4521
	goto	u4520

u4521:
	goto	l8915
u4520:
	line	169
	
l8907:	
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
	line	174
	
l8909:	
	clrf	0+(_doorStepHandle)^080h+06h
	incf	0+(_doorStepHandle)^080h+06h,f
	line	175
	
l8911:	
	movlw	05h
	movwf	(_doorStepHandle)^080h
	movlw	0
	movwf	((_doorStepHandle)^080h)+1
	line	176
	
l8913:	
	movlw	(low(_doorStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Set
	line	178
	movlw	0
	movwf	(_timeBuffer+3)
	movlw	0
	movwf	(_timeBuffer+2)
	movlw	0
	movwf	(_timeBuffer+1)
	movlw	0Bh
	movwf	(_timeBuffer)

	line	181
	goto	l4244
	line	182
	
l8915:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u4530
	movf	(_timeBuffer+2),w
	btfss	status,2
	goto	u4530
	movlw	11
	subwf	(_timeBuffer+1),w
	skipz
	goto	u4533
	movlw	185
	subwf	(_timeBuffer),w
	skipz
	goto	u4533
u4533:
	btfss	status,0
	goto	u4531
	goto	u4530

u4531:
	goto	l4244
u4530:
	line	188
	
l8917:	
	movlw	(low(_doorStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Stop
	line	192
	
l8919:	
	movlw	low(04h)
	movwf	(??_TrashDoor_Open+0)+0
	bcf	status, 5	;RP0=0, select bank0
	movf	(TrashDoor_Open@state),w
	movwf	fsr0
	movf	(??_TrashDoor_Open+0)+0,w
	movwf	indf
	line	196
	
l4244:	
	return
	callstack 0
GLOBAL	__end_of_TrashDoor_Open
	__end_of_TrashDoor_Open:
	signat	_TrashDoor_Open,4217
	global	_TrashDoor_Close

;; *************** function _TrashDoor_Close *****************
;; Defined at:
;;		line 198 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
;; Parameters:    Size  Location     Type
;;  state           1    wreg     PTR enum E1118
;;		 -> trashDoorState(1), 
;; Auto vars:     Size  Location     Type
;;  state           1    4[BANK0 ] PTR enum E1118
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       1       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_GPIO_Write
;;		_Step_Set
;;		_Step_Stop
;; This function is called by:
;;		_TrashDoor_Ctrl
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	198
global __ptext14
__ptext14:	;psect for function _TrashDoor_Close
psect	text14
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	198
	
_TrashDoor_Close:	
;incstack = 0
	callstack 2
; Regs used in _TrashDoor_Close: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(TrashDoor_Close@state)
	line	200
	
l8921:	
	movf	(TrashDoor_Close@state),w
	movwf	fsr0
		movlw	2
	xorwf	(indf),w
	btfss	status,2
	goto	u4541
	goto	u4540
u4541:
	goto	l8929
u4540:
	line	202
	
l8923:	
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u4550
	movf	(_timeBuffer+2),w
	btfss	status,2
	goto	u4550
	movlw	234
	subwf	(_timeBuffer+1),w
	skipz
	goto	u4553
	movlw	97
	subwf	(_timeBuffer),w
	skipz
	goto	u4553
u4553:
	btfss	status,0
	goto	u4551
	goto	u4550

u4551:
	goto	l4254
u4550:
	line	204
	
l8925:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(TrashDoor_Close@state),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	indf,f
	line	205
	
l8927:	
	movlw	high highword(0)
	movwf	(_timeBuffer+3)
	movlw	low highword(0)
	movwf	(_timeBuffer+2)
	movlw	high(0)
	movwf	(_timeBuffer+1)
	movlw	low(0)
	movwf	(_timeBuffer)

	goto	l4254
	line	208
	
l8929:	
	movf	(TrashDoor_Close@state),w
	movwf	fsr0
		decf	(indf),w
	btfss	status,2
	goto	u4561
	goto	u4560
u4561:
	goto	l4254
u4560:
	line	211
	
l8931:	
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u4571
	movf	(_timeBuffer+2),w
	btfss	status,2
	goto	u4571
	movf	(_timeBuffer+1),w
	btfss	status,2
	goto	u4571
	movlw	11
	subwf	(_timeBuffer),w
	skipz
	goto	u4573
u4573:
	btfsc	status,0
	goto	u4571
	goto	u4570

u4571:
	goto	l8941
u4570:
	line	218
	
l8933:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_doorStepHandle)^080h+06h
	line	219
	
l8935:	
	movlw	05h
	movwf	(_doorStepHandle)^080h
	movlw	0
	movwf	((_doorStepHandle)^080h)+1
	line	220
	
l8937:	
	movlw	(low(_doorStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Set
	line	222
	
l8939:	
	movlw	0
	movwf	(_timeBuffer+3)
	movlw	0
	movwf	(_timeBuffer+2)
	movlw	0
	movwf	(_timeBuffer+1)
	movlw	0Bh
	movwf	(_timeBuffer)

	line	225
	goto	l4254
	line	226
	
l8941:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u4580
	movf	(_timeBuffer+2),w
	btfss	status,2
	goto	u4580
	movlw	11
	subwf	(_timeBuffer+1),w
	skipz
	goto	u4583
	movlw	185
	subwf	(_timeBuffer),w
	skipz
	goto	u4583
u4583:
	btfss	status,0
	goto	u4581
	goto	u4580

u4581:
	goto	l4254
u4580:
	line	230
	
l8943:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_BUZZER)+01h,w
	movwf	(??_TrashDoor_Close+0)+0
	movf	(??_TrashDoor_Close+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(_BUZZER),w
	fcall	_GPIO_Write
	line	234
	movlw	(low(_doorStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Stop
	line	238
	
l8945:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(TrashDoor_Close@state),w
	movwf	fsr0
	clrf	indf
	line	241
	
l4254:	
	return
	callstack 0
GLOBAL	__end_of_TrashDoor_Close
	__end_of_TrashDoor_Close:
	signat	_TrashDoor_Close,4217
	global	_IRSensor_Read

;; *************** function _IRSensor_Read *****************
;; Defined at:
;;		line 78 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
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
;;		On entry : B00/0
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
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	78
global __ptext15
__ptext15:	;psect for function _IRSensor_Read
psect	text15
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	78
	
_IRSensor_Read:	
;incstack = 0
	callstack 2
; Regs used in _IRSensor_Read: [wreg+status,2+status,0+pclath+cstack]
	line	80
	
l8833:	
	movlw	0x0
	movwf	(IRSensor_Read@adc_value)
	movlw	0x0
	movwf	(IRSensor_Read@adc_value+1)
	movlw	0x0
	movwf	(IRSensor_Read@adc_value+2)
	line	81
	
l8835:	
	line	82
	
l8837:	
	clrf	(IRSensor_Read@index)
	line	84
	
l8841:	
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
	line	85
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
	goto	u4431
	goto	u4430
u4431:
	goto	l8845
u4430:
	goto	l8849
	line	82
	
l8845:	
	movlw	low(01h)
	movwf	(??_IRSensor_Read+0)+0
	movf	(??_IRSensor_Read+0)+0,w
	addwf	(IRSensor_Read@index),f
	
l8847:	
	movlw	low(0Bh)
	subwf	(IRSensor_Read@index),w
	skipc
	goto	u4441
	goto	u4440
u4441:
	goto	l8841
u4440:
	line	91
	
l8849:	
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
	line	94
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
	line	95
	
l8851:	
	movf	(IRSensor_Read@adc_value),w
	movwf	(?_IRSensor_Read)
	movf	(IRSensor_Read@adc_value+1),w
	movwf	(?_IRSensor_Read+1)
	movf	(IRSensor_Read@adc_value+2),w
	movwf	(?_IRSensor_Read+2)
	line	96
	
l4224:	
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
psect	text16,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\lwtoft.c"
	line	28
global __ptext16
__ptext16:	;psect for function ___lwtoft
psect	text16
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\lwtoft.c"
	line	28
	
___lwtoft:	
;incstack = 0
	callstack 2
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l8829:	
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
	
l6661:	
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
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\lbtoft.c"
	line	27
global __ptext17
__ptext17:	;psect for function ___lbtoft
psect	text17
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\lbtoft.c"
	line	27
	
___lbtoft:	
;incstack = 0
	callstack 2
; Regs used in ___lbtoft: [wreg+status,2+status,0+pclath+cstack]
	movwf	(___lbtoft@c)
	line	29
	
l8825:	
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
	
l6565:	
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
psect	text18,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\ftmul.c"
	line	62
global __ptext18
__ptext18:	;psect for function ___ftmul
psect	text18
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\ftmul.c"
	line	62
	
___ftmul:	
;incstack = 0
	callstack 2
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l8769:	
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
	goto	u4311
	goto	u4310
u4311:
	goto	l8775
u4310:
	line	68
	
l8771:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l6513
	line	69
	
l8775:	
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
	goto	u4321
	goto	u4320
u4321:
	goto	l8781
u4320:
	line	70
	
l8777:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l6513
	line	71
	
l8781:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	72
	
l8783:	
	movf	0+(___ftmul@f1)+02h,w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@sign)
	line	73
	
l8785:	
	movf	0+(___ftmul@f2)+02h,w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	xorwf	(___ftmul@sign),f
	line	74
	
l8787:	
	movlw	low(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	75
	
l8789:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l8791:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l8793:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l8795:	
	movlw	low(0)
	movwf	(___ftmul@f3_as_product)
	movlw	high(0)
	movwf	(___ftmul@f3_as_product+1)
	movlw	low highword(0)
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l8797:	
	movlw	low(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	line	136
	
l8799:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4331
	goto	u4330
u4331:
	goto	l8803
u4330:
	line	137
	
l8801:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u4341
	addwf	(___ftmul@f3_as_product+1),f
u4341:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u4342
	addwf	(___ftmul@f3_as_product+2),f
u4342:

	line	138
	
l8803:	
	movlw	01h
u4355:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u4355

	line	139
	
l8805:	
	movlw	01h
u4365:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u4365
	line	140
	
l8807:	
	movlw	01h
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u4371
	goto	u4370
u4371:
	goto	l8799
u4370:
	line	143
	
l8809:	
	movlw	low(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	line	145
	
l8811:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4381
	goto	u4380
u4381:
	goto	l8815
u4380:
	line	146
	
l8813:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u4391
	addwf	(___ftmul@f3_as_product+1),f
u4391:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u4392
	addwf	(___ftmul@f3_as_product+2),f
u4392:

	line	147
	
l8815:	
	movlw	01h
u4405:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u4405

	line	148
	
l8817:	
	movlw	01h
u4415:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u4415

	line	149
	
l8819:	
	movlw	01h
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u4421
	goto	u4420
u4421:
	goto	l8811
u4420:
	line	156
	
l8821:	
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
	
l6513:	
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
psect	text19,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\ftge.c"
	line	4
global __ptext19
__ptext19:	;psect for function ___ftge
psect	text19
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\ftge.c"
	line	4
	
___ftge:	
;incstack = 0
	callstack 4
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l7891:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l7895
u2520:
	line	7
	
l7893:	
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
	
l7895:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l7899
u2530:
	line	9
	
l7897:	
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
	
l7899:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l7901:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l7903:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u2545
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u2545
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u2545:
	skipnc
	goto	u2541
	goto	u2540
u2541:
	goto	l7907
u2540:
	
l7905:	
	clrc
	
	goto	l6507
	
l7907:	
	setc
	
	line	13
	
l6507:	
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
psect	text20,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\ftdiv.c"
	line	56
global __ptext20
__ptext20:	;psect for function ___ftdiv
psect	text20
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\ftdiv.c"
	line	56
	
___ftdiv:	
;incstack = 0
	callstack 2
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l8727:	
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
	goto	u4251
	goto	u4250
u4251:
	goto	l8733
u4250:
	line	64
	
l8729:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l6498
	line	65
	
l8733:	
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
	goto	u4261
	goto	u4260
u4261:
	goto	l8739
u4260:
	line	66
	
l8735:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l6498
	line	67
	
l8739:	
	movlw	low(0)
	movwf	(___ftdiv@f3)
	movlw	high(0)
	movwf	(___ftdiv@f3+1)
	movlw	low highword(0)
	movwf	(___ftdiv@f3+2)
	line	68
	
l8741:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l8743:	
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
	
l8745:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	
l8747:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l8749:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	
l8751:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	
l8753:	
	movlw	low(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	line	78
	
l8755:	
	movlw	01h
u4275:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u4275
	line	79
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u4285
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u4285
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u4285:
	skipc
	goto	u4281
	goto	u4280
u4281:
	goto	l8761
u4280:
	line	80
	
l8757:	
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
	
l8759:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	83
	
l8761:	
	movlw	01h
u4295:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u4295
	line	84
	
l8763:	
	movlw	01h
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u4301
	goto	u4300
u4301:
	goto	l8755
u4300:
	line	85
	
l8765:	
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
	
l6498:	
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
psect	text21,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\ftadd.c"
	line	86
global __ptext21
__ptext21:	;psect for function ___ftadd
psect	text21
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\ftadd.c"
	line	86
	
___ftadd:	
;incstack = 0
	callstack 2
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l8657:	
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
	goto	u4011
	goto	u4010
u4011:
	goto	l8663
u4010:
	
l8659:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u4021
	goto	u4020
u4021:
	goto	l8667
u4020:
	
l8661:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	low(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u4031
	goto	u4030
u4031:
	goto	l8667
u4030:
	line	93
	
l8663:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l6467
	line	94
	
l8667:	
	movf	((___ftadd@exp2)),w
	btfsc	status,2
	goto	u4041
	goto	u4040
u4041:
	goto	l6470
u4040:
	
l8669:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4051
	goto	u4050
u4051:
	goto	l8673
u4050:
	
l8671:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	low(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u4061
	goto	u4060
u4061:
	goto	l8673
u4060:
	
l6470:	
	line	95
	goto	l6467
	line	96
	
l8673:	
	movlw	low(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l8675:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u4071
	goto	u4070
u4071:
	goto	l6471
u4070:
	line	98
	
l8677:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l6471:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4081
	goto	u4080
u4081:
	goto	l6472
u4080:
	line	100
	
l8679:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l6472:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l8681:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l8683:	
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
	goto	u4091
	goto	u4090
u4091:
	goto	l8695
u4090:
	line	110
	
l8685:	
	movlw	01h
u4105:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u4105
	line	111
	movlw	01h
	subwf	(___ftadd@exp2),f
	line	112
	
l8687:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4111
	goto	u4110
u4111:
	goto	l8693
u4110:
	
l8689:	
	movlw	01h
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u4121
	goto	u4120
u4121:
	goto	l8685
u4120:
	goto	l8693
	line	114
	
l8691:	
	movlw	01h
u4135:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u4135

	line	115
	movlw	low(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	line	113
	
l8693:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4141
	goto	u4140
u4141:
	goto	l8691
u4140:
	goto	l6481
	line	117
	
l8695:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4151
	goto	u4150
u4151:
	goto	l6481
u4150:
	line	121
	
l8697:	
	movlw	01h
u4165:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u4165
	line	122
	movlw	01h
	subwf	(___ftadd@exp1),f
	line	123
	
l8699:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4171
	goto	u4170
u4171:
	goto	l8705
u4170:
	
l8701:	
	movlw	01h
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u4181
	goto	u4180
u4181:
	goto	l8697
u4180:
	goto	l8705
	line	125
	
l8703:	
	movlw	01h
u4195:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u4195

	line	126
	movlw	low(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	line	124
	
l8705:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4201
	goto	u4200
u4201:
	goto	l8703
u4200:
	line	129
	
l6481:	
	btfss	(___ftadd@sign),(7)&7
	goto	u4211
	goto	u4210
u4211:
	goto	l8709
u4210:
	line	131
	
l8707:	
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
	
l8709:	
	btfss	(___ftadd@sign),(6)&7
	goto	u4221
	goto	u4220
u4221:
	goto	l8713
u4220:
	line	136
	
l8711:	
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
	
l8713:	
	clrf	(___ftadd@sign)
	line	140
	
l8715:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u4231
	addwf	(___ftadd@f2+1),f
u4231:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u4232
	addwf	(___ftadd@f2+2),f
u4232:

	line	141
	
l8717:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4241
	goto	u4240
u4241:
	goto	l8723
u4240:
	line	142
	
l8719:	
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
	
l8721:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l8723:	
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
	
l6467:	
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
psect	text22,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\float.c"
	line	62
global __ptext22
__ptext22:	;psect for function ___ftpack
psect	text22
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\float.c"
	line	62
	
___ftpack:	
;incstack = 0
	callstack 2
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l8587:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u3821
	goto	u3820
u3821:
	goto	l8591
u3820:
	
l8589:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u3831
	goto	u3830
u3831:
	goto	l8597
u3830:
	line	65
	
l8591:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l6446
	line	67
	
l8595:	
	movlw	low(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u3845:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3845

	line	66
	
l8597:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3851
	goto	u3850
u3851:
	goto	l8595
u3850:
	goto	l6450
	line	71
	
l8599:	
	movlw	low(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l8601:	
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
	
l8603:	
	movlw	01h
u3865:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3865

	line	74
	
l6450:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3871
	goto	u3870
u3871:
	goto	l8599
u3870:
	goto	l8607
	line	76
	
l8605:	
	movlw	01h
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u3885:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u3885
	line	75
	
l8607:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u3891
	goto	u3890
u3891:
	goto	l6457
u3890:
	
l8609:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u3901
	goto	u3900
u3901:
	goto	l8605
u3900:
	
l6457:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u3911
	goto	u3910
u3911:
	goto	l6458
u3910:
	line	80
	
l8611:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l6458:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l8613:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u3925:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u3920:
	addlw	-1
	skipz
	goto	u3925
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l8615:	
	movf	((___ftpack@sign)),w
	btfsc	status,2
	goto	u3931
	goto	u3930
u3931:
	goto	l6459
u3930:
	line	84
	
l8617:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l6459:	
	line	85
	line	86
	
l6446:	
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
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\ADC.c"
	line	96
global __ptext23
__ptext23:	;psect for function _ADC_Read
psect	text23
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\ADC.c"
	line	96
	
_ADC_Read:	
;incstack = 0
	callstack 2
; Regs used in _ADC_Read: [wreg+status,2+status,0+pclath+cstack]
	movwf	(ADC_Read@channel)
	line	98
	
l7725:	
	fcall	_ADC_BASE_Init
	line	99
	
l7727:	
	asmopt push
asmopt off
movlw	7
movwf	((??_ADC_Read+0)+0+1)
	movlw	125
movwf	((??_ADC_Read+0)+0)
	u5167:
decfsz	((??_ADC_Read+0)+0),f
	goto	u5167
	decfsz	((??_ADC_Read+0)+0+1),f
	goto	u5167
asmopt pop

	line	101
	
l7729:	
	movf	(ADC_Read@channel),w
	movwf	(??_ADC_Read+0)+0
	movlw	(03h)-1
u2135:
	clrc
	rlf	(??_ADC_Read+0)+0,f
	addlw	-1
	skipz
	goto	u2135
	clrc
	rlf	(??_ADC_Read+0)+0,w
	movwf	(??_ADC_Read+1)+0
	movf	(??_ADC_Read+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(31),f	;volatile
	line	102
	
l7731:	
	bsf	(248/8),(248)&7	;volatile
	line	103
	
l7733:	
	asmopt push
asmopt off
movlw	7
movwf	((??_ADC_Read+0)+0+1)
	movlw	125
movwf	((??_ADC_Read+0)+0)
	u5177:
decfsz	((??_ADC_Read+0)+0),f
	goto	u5177
	decfsz	((??_ADC_Read+0)+0+1),f
	goto	u5177
asmopt pop

	line	108
	
l7735:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	114
	
l1201:	
	btfsc	(250/8),(250)&7	;volatile
	goto	u2141
	goto	u2140
u2141:
	goto	l1201
u2140:
	line	117
	
l7737:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	119
	
l7739:	
	movlw	low(07h)
	movwf	(??_ADC_Read+0)+0
	movf	(??_ADC_Read+0)+0,w
	iorwf	(159)^080h,f	;volatile
	line	120
	
l7741:	
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop
	asmopt pop

	line	123
	
l7743:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(?_ADC_Read+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(?_ADC_Read)
	line	124
	
l1204:	
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
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	5
global __ptext24
__ptext24:	;psect for function _ADC_BASE_Init
psect	text24
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\ADC.c"
	line	5
	
_ADC_BASE_Init:	
;incstack = 0
	callstack 2
; Regs used in _ADC_BASE_Init: [wreg+status,2+status,0]
	line	8
	
l7667:	
	clrf	(31)	;volatile
	line	9
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	34
	
l7669:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(31),w	;volatile
	line	88
	
l7671:	
	movlw	low(08Eh)
	movwf	(??_ADC_BASE_Init+0)+0
	movf	(??_ADC_BASE_Init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(159)^080h,f	;volatile
	line	89
	
l1195:	
	return
	callstack 0
GLOBAL	__end_of_ADC_BASE_Init
	__end_of_ADC_BASE_Init:
	signat	_ADC_BASE_Init,89
	global	_TimeSysTickUpdate

;; *************** function _TimeSysTickUpdate *****************
;; Defined at:
;;		line 515 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
;; Parameters:    Size  Location     Type
;;  ptimeSysTick    1    wreg     PTR volatile unsigned in
;;		 -> timeSysTick(2), 
;; Auto vars:     Size  Location     Type
;;  ptimeSysTick    1    4[COMMON] PTR volatile unsigned in
;;		 -> timeSysTick(2), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Loop
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	515
global __ptext25
__ptext25:	;psect for function _TimeSysTickUpdate
psect	text25
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	515
	
_TimeSysTickUpdate:	
;incstack = 0
	callstack 5
; Regs used in _TimeSysTickUpdate: [wreg-fsr0h+status,2+status,0]
	movwf	(TimeSysTickUpdate@ptimeSysTick)
	line	518
	
l8433:	
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
	goto	u3555
	movf	(_timeSysTickBuffer),w
	xorwf	0+(??_TimeSysTickUpdate+0)+0,w
u3555:

	skipnz
	goto	u3551
	goto	u3550
u3551:
	goto	l4326
u3550:
	line	520
	
l8435:	
	movf	(TimeSysTickUpdate@ptimeSysTick),w
	movwf	fsr0
	movf	indf,w
	movwf	(_timeSysTickBuffer)
	incf	fsr0,f
	movf	indf,w
	movwf	(_timeSysTickBuffer+1)
	line	521
	
l8437:	
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
	line	528
	
l4326:	
	return
	callstack 0
GLOBAL	__end_of_TimeSysTickUpdate
	__end_of_TimeSysTickUpdate:
	signat	_TimeSysTickUpdate,4217
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
;;		On entry : 0/0
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
;;		_Loop
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
	line	103
global __ptext26
__ptext26:	;psect for function _Step_Start
psect	text26
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
	line	103
	
_Step_Start:	
;incstack = 0
	callstack 5
; Regs used in _Step_Start: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(Step_Start@stepHandle)
	line	105
	
l9007:	
	movf	(Step_Start@stepHandle),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u4751
	goto	u4750
u4751:
	goto	l3024
u4750:
	line	107
	
l9009:	
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
	goto	u4761
	goto	u4760
u4761:
	goto	l3023
u4760:
	line	109
	
l9011:	
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
	
l3023:	
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
	
l9013:	
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
	
l3024:	
	return
	callstack 0
GLOBAL	__end_of_Step_Start
	__end_of_Step_Start:
	signat	_Step_Start,4217
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
psect	text27,local,class=CODE,delta=2,merge=1,group=0
	line	10
global __ptext27
__ptext27:	;psect for function _Delay_us
psect	text27
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
	line	10
	
_Delay_us:	
;incstack = 0
	callstack 5
; Regs used in _Delay_us: [wreg+status,2+status,0]
	line	12
	
l8001:	
	goto	l8007
	line	14
	
l8003:	
	movlw	01h
	subwf	(Delay_us@time),f
	movlw	0
	skipc
	decf	(Delay_us@time+1),f
	subwf	(Delay_us@time+1),f
	line	15
	
l8005:	
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop
	asmopt pop

	line	12
	
l8007:	
	movf	((Delay_us@time)),w
iorwf	((Delay_us@time+1)),w
	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l8003
u2740:
	line	17
	
l3000:	
	return
	callstack 0
GLOBAL	__end_of_Delay_us
	__end_of_Delay_us:
	signat	_Delay_us,4217
	global	_Disionfection_Run

;; *************** function _Disionfection_Run *****************
;; Defined at:
;;		line 492 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
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
psect	text28,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	492
global __ptext28
__ptext28:	;psect for function _Disionfection_Run
psect	text28
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	492
	
_Disionfection_Run:	
;incstack = 0
	callstack 4
; Regs used in _Disionfection_Run: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	494
	
l9151:	
		decf	((_disinfectionState)),w
	btfss	status,2
	goto	u5021
	goto	u5020
u5021:
	goto	l4320
u5020:
	line	496
	
l9153:	
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u5031
	movf	(_timeBuffer+2),w
	btfss	status,2
	goto	u5031
	movf	(_timeBuffer+1),w
	btfss	status,2
	goto	u5031
	movlw	6
	subwf	(_timeBuffer),w
	skipz
	goto	u5033
u5033:
	btfsc	status,0
	goto	u5031
	goto	u5030

u5031:
	goto	l9159
u5030:
	line	498
	
l9155:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_Motor_0)+01h,w
	movwf	(??_Disionfection_Run+0)+0
	movf	(??_Disionfection_Run+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(_Motor_0),w
	fcall	_GPIO_Write
	line	499
	
l9157:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_timeBuffer+3)
	movlw	0
	movwf	(_timeBuffer+2)
	movlw	0
	movwf	(_timeBuffer+1)
	movlw	06h
	movwf	(_timeBuffer)

	line	500
	goto	l4320
	line	501
	
l9159:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u5040
	movf	(_timeBuffer+2),w
	btfss	status,2
	goto	u5040
	movlw	78
	subwf	(_timeBuffer+1),w
	skipz
	goto	u5043
	movlw	32
	subwf	(_timeBuffer),w
	skipz
	goto	u5043
u5043:
	btfss	status,0
	goto	u5041
	goto	u5040

u5041:
	goto	l4320
u5040:
	line	503
	
l9161:	
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
	line	504
	
l9163:	
	movlw	low(02h)
	movwf	(??_Disionfection_Run+0)+0
	movf	(??_Disionfection_Run+0)+0,w
	movwf	(_disinfectionState)
	line	508
	
l4320:	
	return
	callstack 0
GLOBAL	__end_of_Disionfection_Run
	__end_of_Disionfection_Run:
	signat	_Disionfection_Run,89
	global	_Disinfection_Ctrl

;; *************** function _Disinfection_Ctrl *****************
;; Defined at:
;;		line 476 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
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
psect	text29,local,class=CODE,delta=2,merge=1,group=0
	line	476
global __ptext29
__ptext29:	;psect for function _Disinfection_Ctrl
psect	text29
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	476
	
_Disinfection_Ctrl:	
;incstack = 0
	callstack 5
; Regs used in _Disinfection_Ctrl: [wreg+status,2+status,0]
	line	478
	
l8409:	
		movlw	2
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((_compressionState)),w
	btfsc	status,2
	goto	u3501
	goto	u3500
u3501:
	goto	l8413
u3500:
	line	480
	
l8411:	
	clrf	(_disinfectionState)
	line	481
	goto	l4313
	line	484
	
l8413:	
	movf	((_disinfectionState)),w
	btfss	status,2
	goto	u3511
	goto	u3510
u3511:
	goto	l4313
u3510:
	line	486
	
l8415:	
	clrf	(_disinfectionState)
	incf	(_disinfectionState),f
	line	487
	
l8417:	
	movlw	high highword(0)
	movwf	(_timeBuffer+3)
	movlw	low highword(0)
	movwf	(_timeBuffer+2)
	movlw	high(0)
	movwf	(_timeBuffer+1)
	movlw	low(0)
	movwf	(_timeBuffer)

	line	490
	
l4313:	
	return
	callstack 0
GLOBAL	__end_of_Disinfection_Ctrl
	__end_of_Disinfection_Ctrl:
	signat	_Disinfection_Ctrl,89
	global	_Compression_Run

;; *************** function _Compression_Run *****************
;; Defined at:
;;		line 331 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
;; Parameters:    Size  Location     Type
;;  ptimeSysTick    1    wreg     PTR volatile unsigned in
;;		 -> timeSysTick(2), 
;; Auto vars:     Size  Location     Type
;;  ptimeSysTick    1   32[BANK0 ] PTR volatile unsigned in
;;		 -> timeSysTick(2), 
;;  TX             10   21[BANK0 ] unsigned char [10]
;;  distance        1   31[BANK0 ] unsigned char 
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_GPIO_Write
;;		_Step_Set
;;		_Step_Stop
;;		_UltraSensor_Read
;;		___llmod
;; This function is called by:
;;		_Loop
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	line	331
global __ptext30
__ptext30:	;psect for function _Compression_Run
psect	text30
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	331
	
_Compression_Run:	
;incstack = 0
	callstack 2
; Regs used in _Compression_Run: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(Compression_Run@ptimeSysTick)
	line	333
	
l9081:	
	line	334
	
l9083:	
	movlw	(Compression_Run@TX)&0ffh
	movwf	fsr0
	movlw	10
	movwf	btemp+1
u4920:
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	decfsz	btemp+1,f
	goto	u4920
	line	335
	goto	l9149
	line	338
	
l9085:	
	movf	0+(_LED1)+01h,w
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(_LED1),w
	fcall	_GPIO_Write
	line	340
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_LED2)+01h,w
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(_LED2),w
	fcall	_GPIO_Write
	line	341
	goto	l4307
	line	343
	
l9087:	
	movf	0+(_LED1)+01h,w
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(_LED1),w
	fcall	_GPIO_Write
	line	345
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_LED2)+01h,w
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(_LED2),w
	fcall	_GPIO_Write
	line	347
	bcf	status, 5	;RP0=0, select bank0
	movf	(Compression_Run@ptimeSysTick),w
	fcall	_UltraSensor_Read
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(Compression_Run@distance)
	line	348
	
l9089:	
	movlw	low(050h)
	subwf	(Compression_Run@distance),w
	skipc
	goto	u4931
	goto	u4930
u4931:
	goto	l9093
u4930:
	line	350
	
l9091:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(_compressionState)
	line	353
	goto	l4307
	line	356
	
l9093:	
	movlw	low(04h)
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(_compressionState)
	line	359
	movlw	high highword(0)
	movwf	(_timeBuffer+3)
	movlw	low highword(0)
	movwf	(_timeBuffer+2)
	movlw	high(0)
	movwf	(_timeBuffer+1)
	movlw	low(0)
	movwf	(_timeBuffer)

	goto	l4307
	line	360
	
l4294:	
	line	361
	goto	l4307
	line	363
	
l9095:	
	movf	0+(_LED1)+01h,w
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(_LED1),w
	fcall	_GPIO_Write
	line	364
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_LED2)+01h,w
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(_LED2),w
	fcall	_GPIO_Write
	line	366
	
l9097:	
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
	goto	u4941
	goto	u4940
u4941:
	goto	l9101
u4940:
	line	368
	
l9099:	
	movf	(Compression_Run@ptimeSysTick),w
	fcall	_UltraSensor_Read
	line	400
	
l9101:	
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u4951
	movf	(_timeBuffer+2),w
	btfss	status,2
	goto	u4951
	movf	(_timeBuffer+1),w
	btfss	status,2
	goto	u4951
	movlw	11
	subwf	(_timeBuffer),w
	skipz
	goto	u4953
u4953:
	btfsc	status,0
	goto	u4951
	goto	u4950

u4951:
	goto	l9115
u4950:
	line	408
	
l9103:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_compressStepHandle)^080h+06h
	incf	0+(_compressStepHandle)^080h+06h,f
	line	409
	
l9105:	
	movlw	03Fh
	movwf	(_compressStepHandle)^080h
	movlw	0
	movwf	((_compressStepHandle)^080h)+1
	line	410
	
l9107:	
	movlw	(low(_compressStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Set
	line	412
	
l9109:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	0+(_winchStepHandle)^080h+06h
	incf	0+(_winchStepHandle)^080h+06h,f
	line	413
	
l9111:	
	movlw	03Fh
	movwf	(_winchStepHandle)^080h
	movlw	0
	movwf	((_winchStepHandle)^080h)+1
	line	414
	movlw	(low(_winchStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Set
	line	416
	
l9113:	
	movlw	0
	movwf	(_timeBuffer+3)
	movlw	0
	movwf	(_timeBuffer+2)
	movlw	0
	movwf	(_timeBuffer+1)
	movlw	0Bh
	movwf	(_timeBuffer)

	line	418
	goto	l4307
	line	419
	
l9115:	
		movlw	112
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((_timeBuffer)),w
	movlw	17
	skipnz
	xorwf	((_timeBuffer+1)),w
	skipz
	goto	u4961
	decf	((_timeBuffer+2)),w
iorwf	((_timeBuffer+3)),w
	btfss	status,2
	goto	u4961
	goto	u4960
u4961:
	goto	l9129
u4960:
	line	427
	
l9117:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_compressStepHandle)^080h+06h
	line	428
	
l9119:	
	movlw	03Fh
	movwf	(_compressStepHandle)^080h
	movlw	0
	movwf	((_compressStepHandle)^080h)+1
	line	429
	
l9121:	
	movlw	(low(_compressStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Set
	line	431
	
l9123:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	0+(_winchStepHandle)^080h+06h
	line	432
	
l9125:	
	movlw	03Fh
	movwf	(_winchStepHandle)^080h
	movlw	0
	movwf	((_winchStepHandle)^080h)+1
	line	433
	movlw	(low(_winchStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Set
	line	435
	
l9127:	
	movlw	0
	movwf	(_timeBuffer+3)
	movlw	01h
	movwf	(_timeBuffer+2)
	movlw	011h
	movwf	(_timeBuffer+1)
	movlw	071h
	movwf	(_timeBuffer)

	line	437
	goto	l4307
	line	438
	
l9129:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u4970
	movlw	1
	subwf	(_timeBuffer+2),w
	skipz
	goto	u4973
	movlw	17
	subwf	(_timeBuffer+1),w
	skipz
	goto	u4973
	movlw	113
	subwf	(_timeBuffer),w
	skipz
	goto	u4973
u4973:
	btfss	status,0
	goto	u4971
	goto	u4970

u4971:
	goto	l9139
u4970:
	
l9131:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u4981
	movlw	2
	subwf	(_timeBuffer+2),w
	skipz
	goto	u4983
	movlw	34
	subwf	(_timeBuffer+1),w
	skipz
	goto	u4983
	movlw	224
	subwf	(_timeBuffer),w
	skipz
	goto	u4983
u4983:
	btfsc	status,0
	goto	u4981
	goto	u4980

u4981:
	goto	l9139
u4980:
	line	441
	
l9133:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	3+(_compressStepHandle)^080h+02h,w
	btfss	status,2
	goto	u4991
	movf	2+(_compressStepHandle)^080h+02h,w
	btfss	status,2
	goto	u4991
	movlw	31
	subwf	1+(_compressStepHandle)^080h+02h,w
	skipz
	goto	u4993
	movlw	64
	subwf	0+(_compressStepHandle)^080h+02h,w
	skipz
	goto	u4993
u4993:
	btfsc	status,0
	goto	u4991
	goto	u4990

u4991:
	goto	l4294
u4990:
	
l9135:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(_compressStepHandle)^080h+06h),w
	btfss	status,2
	goto	u5001
	goto	u5000
u5001:
	goto	l4294
u5000:
	line	443
	
l9137:	
	movlw	(low(_compressStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Stop
	goto	l4307
	line	448
	
l9139:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		movf	(_timeBuffer+3),w
	btfss	status,2
	goto	u5010
	movlw	2
	subwf	(_timeBuffer+2),w
	skipz
	goto	u5013
	movlw	34
	subwf	(_timeBuffer+1),w
	skipz
	goto	u5013
	movlw	224
	subwf	(_timeBuffer),w
	skipz
	goto	u5013
u5013:
	btfss	status,0
	goto	u5011
	goto	u5010

u5011:
	goto	l4294
u5010:
	line	456
	
l9141:	
	movlw	(low(_compressStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Stop
	line	457
	movlw	(low(_winchStepHandle|((0x0)<<8)))&0ffh
	fcall	_Step_Stop
	goto	l9091
	line	463
	
l9145:	
	movf	0+(_LED1)+01h,w
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	movf	(_LED1),w
	fcall	_GPIO_Write
	line	465
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_LED2)+01h,w
	movwf	(??_Compression_Run+0)+0
	movf	(??_Compression_Run+0)+0,w
	movwf	(GPIO_Write@Pin)
	clrf	(GPIO_Write@GPIO_State)
	incf	(GPIO_Write@GPIO_State),f
	movf	(_LED2),w
	fcall	_GPIO_Write
	line	466
	goto	l4307
	line	335
	
l9149:	
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
	goto	l9085
	xorlw	1^0	; case 1
	skipnz
	goto	l9087
	xorlw	2^1	; case 2
	skipnz
	goto	l9145
	xorlw	4^2	; case 4
	skipnz
	goto	l9095
	goto	l4307
	asmopt pop

	line	470
	
l4307:	
	return
	callstack 0
GLOBAL	__end_of_Compression_Run
	__end_of_Compression_Run:
	signat	_Compression_Run,4217
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
psect	text31,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\llmod.c"
	line	5
global __ptext31
__ptext31:	;psect for function ___llmod
psect	text31
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\llmod.c"
	line	5
	
___llmod:	
;incstack = 0
	callstack 4
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	12
	
l8987:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u4691
	goto	u4690
u4691:
	goto	l9003
u4690:
	line	13
	
l8989:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	14
	goto	l8993
	line	15
	
l8991:	
	movlw	01h
	movwf	(??___llmod+0)+0
u4705:
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	decfsz	(??___llmod+0)+0
	goto	u4705
	line	16
	movlw	low(01h)
	movwf	(??___llmod+0)+0
	movf	(??___llmod+0)+0,w
	addwf	(___llmod@counter),f
	line	14
	
l8993:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u4711
	goto	u4710
u4711:
	goto	l8991
u4710:
	line	19
	
l8995:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u4725
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u4725
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u4725
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u4725:
	skipc
	goto	u4721
	goto	u4720
u4721:
	goto	l8999
u4720:
	line	20
	
l8997:	
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
	
l8999:	
	movlw	01h
u4735:
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	addlw	-1
	skipz
	goto	u4735

	line	22
	
l9001:	
	movlw	01h
	subwf	(___llmod@counter),f
	btfss	status,2
	goto	u4741
	goto	u4740
u4741:
	goto	l8995
u4740:
	line	24
	
l9003:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	line	25
	
l6575:	
	return
	callstack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
	signat	___llmod,8316
	global	_UltraSensor_Read

;; *************** function _UltraSensor_Read *****************
;; Defined at:
;;		line 98 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
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
psect	text32,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	98
global __ptext32
__ptext32:	;psect for function _UltraSensor_Read
psect	text32
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	98
	
_UltraSensor_Read:	
;incstack = 0
	callstack 2
; Regs used in _UltraSensor_Read: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(UltraSensor_Read@ptimeSysTick)
	line	100
	
l8855:	
	clrf	(UltraSensor_Read@distance)
	clrf	(UltraSensor_Read@distance+1)
	line	102
	clrf	(UltraSensor_Read@index)
	line	103
	clrf	(UltraSensor_Read@index)
	line	105
	
l8861:	
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
	line	106
	
l8863:	
	movlw	0
	subwf	(UltraSensor_Read@distance_buff+1),w
	movlw	08Dh
	skipnz
	subwf	(UltraSensor_Read@distance_buff),w
	skipc
	goto	u4451
	goto	u4450
u4451:
	goto	l8871
u4450:
	line	108
	
l8865:	
	movf	(UltraSensor_Read@distance_buff),w
	goto	l4230
	line	112
	
l8871:	
	movf	(UltraSensor_Read@distance_buff),w
	addwf	(UltraSensor_Read@distance),f
	skipnc
	incf	(UltraSensor_Read@distance+1),f
	movf	(UltraSensor_Read@distance_buff+1),w
	addwf	(UltraSensor_Read@distance+1),f
	line	103
	
l8873:	
	movlw	low(01h)
	movwf	(??_UltraSensor_Read+0)+0
	movf	(??_UltraSensor_Read+0)+0,w
	addwf	(UltraSensor_Read@index),f
	
l8875:	
	movlw	low(0Bh)
	subwf	(UltraSensor_Read@index),w
	skipc
	goto	u4461
	goto	u4460
u4461:
	goto	l8861
u4460:
	line	115
	
l8877:	
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
	line	116
	
l8879:	
	movf	((UltraSensor_Read@distance)),w
iorwf	((UltraSensor_Read@distance+1)),w
	btfss	status,2
	goto	u4471
	goto	u4470
u4471:
	goto	l4232
u4470:
	line	118
	
l8881:	
	movlw	096h
	movwf	(UltraSensor_Read@distance)
	movlw	0
	movwf	((UltraSensor_Read@distance))+1
	line	119
	
l4232:	
	line	120
	movf	(UltraSensor_Read@distance),w
	line	121
	
l4230:	
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
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\lwdiv.c"
	line	5
global __ptext33
__ptext33:	;psect for function ___lwdiv
psect	text33
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\lwdiv.c"
	line	5
	
___lwdiv:	
;incstack = 0
	callstack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	13
	
l7971:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	14
	
l7973:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l7993
u2670:
	line	15
	
l7975:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	16
	goto	l7981
	line	17
	
l7977:	
	movlw	01h
	
u2685:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2685
	line	18
	
l7979:	
	movlw	low(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	line	16
	
l7981:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l7977
u2690:
	line	21
	
l7983:	
	movlw	01h
	
u2705:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2705
	line	22
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2715
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2715:
	skipc
	goto	u2711
	goto	u2710
u2711:
	goto	l7989
u2710:
	line	23
	
l7985:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	24
	
l7987:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	26
	
l7989:	
	movlw	01h
	
u2725:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2725
	line	27
	
l7991:	
	movlw	01h
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l7983
u2730:
	line	29
	
l7993:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	30
	
l6646:	
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
psect	text34,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UltraSonicSensor.c"
	line	12
global __ptext34
__ptext34:	;psect for function _UltraSonicSensor_Read
psect	text34
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\UltraSonicSensor.c"
	line	12
	
_UltraSonicSensor_Read:	
;incstack = 0
	callstack 2
; Regs used in _UltraSonicSensor_Read: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(UltraSonicSensor_Read@sensor)
	line	14
	
l8625:	
	line	15
	
l8627:	
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
	
l8629:	
	asmopt push
asmopt off
	movlw	2
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_UltraSonicSensor_Read+0)+0)
	u5187:
decfsz	(??_UltraSonicSensor_Read+0)+0,f
	goto	u5187
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
	
l8631:	
	asmopt push
asmopt off
	movlw	7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_UltraSonicSensor_Read+0)+0)
	u5197:
decfsz	(??_UltraSonicSensor_Read+0)+0,f
	goto	u5197
	nop
asmopt pop

	line	19
	
l8633:	
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
	
l8635:	
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
	goto	u3941
	goto	u3940
u3941:
	goto	l8641
u3940:
	line	22
	
l8639:	
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
	goto	u3951
	goto	u3950
u3951:
	goto	l8639
u3950:
	line	24
	
l8641:	
	movf	(UltraSonicSensor_Read@system_tick),w
	movwf	fsr0
	movf	indf,w
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
	goto	l8647
	line	27
	
l8643:	
	movf	(UltraSonicSensor_Read@system_tick),w
	movwf	fsr0
	movf	indf,w
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
	goto	u3961
	goto	u3962
u3961:
	subwf	(??_UltraSonicSensor_Read+2)+1,f
u3962:
	movf	(UltraSonicSensor_Read@buff_time+2),w
	skipc
	incfsz	(UltraSonicSensor_Read@buff_time+2),w
	goto	u3963
	goto	u3964
u3963:
	subwf	(??_UltraSonicSensor_Read+2)+2,f
u3964:
	movf	(UltraSonicSensor_Read@buff_time+3),w
	skipc
	incfsz	(UltraSonicSensor_Read@buff_time+3),w
	goto	u3965
	goto	u3966
u3965:
	subwf	(??_UltraSonicSensor_Read+2)+3,f
u3966:

		movf	(??_UltraSonicSensor_Read+2)+3,w
	btfss	status,2
	goto	u3970
	movf	(??_UltraSonicSensor_Read+2)+2,w
	btfss	status,2
	goto	u3970
	movlw	1
	subwf	(??_UltraSonicSensor_Read+2)+1,w
	skipz
	goto	u3973
	movlw	45
	subwf	(??_UltraSonicSensor_Read+2)+0,w
	skipz
	goto	u3973
u3973:
	btfss	status,0
	goto	u3971
	goto	u3970

u3971:
	goto	l8647
u3970:
	goto	l8649
	line	25
	
l8647:	
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
	goto	u3981
	goto	u3980
u3981:
	goto	l8643
u3980:
	line	32
	
l8649:	
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
	goto	u3991
	goto	u3992
u3991:
	subwf	(??_UltraSonicSensor_Read+2)+1,f
u3992:
	movf	(UltraSonicSensor_Read@buff_time+2),w
	skipc
	incfsz	(UltraSonicSensor_Read@buff_time+2),w
	goto	u3993
	goto	u3994
u3993:
	subwf	(??_UltraSonicSensor_Read+2)+2,f
u3994:
	movf	(UltraSonicSensor_Read@buff_time+3),w
	skipc
	incfsz	(UltraSonicSensor_Read@buff_time+3),w
	goto	u3995
	goto	u3996
u3995:
	subwf	(??_UltraSonicSensor_Read+2)+3,f
u3996:

	movf	3+(??_UltraSonicSensor_Read+2)+0,w
	movwf	(UltraSonicSensor_Read@buff_time+3)
	movf	2+(??_UltraSonicSensor_Read+2)+0,w
	movwf	(UltraSonicSensor_Read@buff_time+2)
	movf	1+(??_UltraSonicSensor_Read+2)+0,w
	movwf	(UltraSonicSensor_Read@buff_time+1)
	movf	0+(??_UltraSonicSensor_Read+2)+0,w
	movwf	(UltraSonicSensor_Read@buff_time)

	line	34
	
l8651:	
		movf	(UltraSonicSensor_Read@buff_time+3),w
	btfss	status,2
	goto	u4000
	movf	(UltraSonicSensor_Read@buff_time+2),w
	btfss	status,2
	goto	u4000
	movf	(UltraSonicSensor_Read@buff_time+1),w
	btfss	status,2
	goto	u4000
	movlw	151
	subwf	(UltraSonicSensor_Read@buff_time),w
	skipz
	goto	u4003
u4003:
	btfss	status,0
	goto	u4001
	goto	u4000

u4001:
	goto	l6151
u4000:
	line	36
	
l8653:	
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
	
l6151:	
	line	38
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(UltraSonicSensor_Read@buff_time),w
	line	39
	
l6152:	
	return
	callstack 0
GLOBAL	__end_of_UltraSonicSensor_Read
	__end_of_UltraSonicSensor_Read:
	signat	_UltraSonicSensor_Read,8313
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
;;		On entry : 300/0
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
;;		_TrashDoor_Ctrl
;;		_UltraSonicSensor_Read
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\GPIO.c"
	line	40
global __ptext35
__ptext35:	;psect for function _GPIO_Read
psect	text35
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\GPIO.c"
	line	40
	
_GPIO_Read:	
;incstack = 0
	callstack 5
; Regs used in _GPIO_Read: [wreg-fsr0h+status,2+status,0]
	movwf	(GPIO_Read@GPIO_Port)
	line	42
	
l7655:	
	movf	(GPIO_Read@GPIO_Port),w
	movwf	fsr0
	movlw	low(01h)
	movwf	(??_GPIO_Read+0)+0
	incf	(GPIO_Read@Pin),w
	goto	u1954
u1955:
	clrc
	rlf	(??_GPIO_Read+0)+0,f
u1954:
	addlw	-1
	skipz
	goto	u1955
	movf	0+(??_GPIO_Read+0)+0,w
	bcf	status, 7	;select IRP bank0
	andwf	indf,w
	btfsc	status,2
	goto	u1961
	goto	u1960
u1961:
	goto	l7663
u1960:
	line	44
	
l7657:	
	movlw	low(01h)
	goto	l2404
	line	48
	
l7663:	
	movlw	low(0)
	line	51
	
l2404:	
	return
	callstack 0
GLOBAL	__end_of_GPIO_Read
	__end_of_GPIO_Read:
	signat	_GPIO_Read,8313
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
;;		On entry : 0/0
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
;;		_TrashDoor_Open
;;		_TrashDoor_Close
;;		_Compression_Run
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
	line	97
global __ptext36
__ptext36:	;psect for function _Step_Stop
psect	text36
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
	line	97
	
_Step_Stop:	
;incstack = 0
	callstack 5
; Regs used in _Step_Stop: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(Step_Stop@stepHandle)
	line	99
	
l8621:	
	movlw	low(02h)
	addwf	(Step_Stop@stepHandle),w
	movwf	(??_Step_Stop+0)+0
	movf	0+(??_Step_Stop+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	clrf	indf
	incf	fsr0,f
	clrf	indf
	incf	fsr0,f
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	100
	
l8623:	
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
	
l3019:	
	return
	callstack 0
GLOBAL	__end_of_Step_Stop
	__end_of_Step_Stop:
	signat	_Step_Stop,4217
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
;;		On entry : 300/100
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
;;		_TrashDoor_Open
;;		_TrashDoor_Close
;;		_Compression_Run
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1,group=0
	line	91
global __ptext37
__ptext37:	;psect for function _Step_Set
psect	text37
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\HBrightCtrl.c"
	line	91
	
_Step_Set:	
;incstack = 0
	callstack 5
; Regs used in _Step_Set: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(Step_Set@stepHandle)
	line	93
	
l8619:	
	movf	(Step_Set@stepHandle),w
	addlw	0Ah
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
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
	
l3016:	
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
psect	text38,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\Umul16.c"
	line	15
global __ptext38
__ptext38:	;psect for function ___wmul
psect	text38
	file	"E:\Program Files (x86)\Microchip\xc8\v2.36\pic\sources\c90\common\Umul16.c"
	line	15
	
___wmul:	
;incstack = 0
	callstack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l8573:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	45
	
l8575:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3781
	goto	u3780
u3781:
	goto	l6238
u3780:
	line	46
	
l8577:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l6238:	
	line	47
	movlw	01h
	
u3795:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3795
	line	48
	
l8579:	
	movlw	01h
	
u3805:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3805
	line	49
	
l8581:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u3811
	goto	u3810
u3811:
	goto	l8575
u3810:
	line	52
	
l8583:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	53
	
l6240:	
	return
	callstack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
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
;;		_Step_Set
;;		_Step_Stop
;;		_Step_Start
;;		_TrashDoor_Open
;;		_TrashDoor_Close
;;		_Compression_Run
;;		_Disionfection_Run
;;		_UltraSonicSensor_Read
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\GPIO.c"
	line	4
global __ptext39
__ptext39:	;psect for function _GPIO_Write
psect	text39
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\GPIO.c"
	line	4
	
_GPIO_Write:	
;incstack = 0
	callstack 5
; Regs used in _GPIO_Write: [wreg-fsr0h+status,2+status,0]
	movwf	(GPIO_Write@GPIO_Port)
	line	6
	
l8545:	
	movf	(GPIO_Write@GPIO_Port),w
	xorlw	low(5|((0x0)<<8))&0ffh
	skipz
	goto	u3671
	goto	u3670
u3671:
	goto	l8549
u3670:
	line	8
	
l8547:	
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
	xorlw	0ffh
	movwf	(??_GPIO_Write+1)+0
	movf	(??_GPIO_Write+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(133)^080h,f	;volatile
	line	9
	goto	l8571
	line	10
	
l8549:	
	movf	(GPIO_Write@GPIO_Port),w
	xorlw	low(6|((0x0)<<8))&0ffh
	skipz
	goto	u3691
	goto	u3690
u3691:
	goto	l8553
u3690:
	line	12
	
l8551:	
	movlw	low(01h)
	movwf	(??_GPIO_Write+0)+0
	incf	(GPIO_Write@Pin),w
	goto	u3704
u3705:
	clrc
	rlf	(??_GPIO_Write+0)+0,f
u3704:
	addlw	-1
	skipz
	goto	u3705
	movf	0+(??_GPIO_Write+0)+0,w
	xorlw	0ffh
	movwf	(??_GPIO_Write+1)+0
	movf	(??_GPIO_Write+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(134)^080h,f	;volatile
	line	13
	goto	l8571
	line	14
	
l8553:	
	movf	(GPIO_Write@GPIO_Port),w
	xorlw	low(7|((0x0)<<8))&0ffh
	skipz
	goto	u3711
	goto	u3710
u3711:
	goto	l8557
u3710:
	line	16
	
l8555:	
	movlw	low(01h)
	movwf	(??_GPIO_Write+0)+0
	incf	(GPIO_Write@Pin),w
	goto	u3724
u3725:
	clrc
	rlf	(??_GPIO_Write+0)+0,f
u3724:
	addlw	-1
	skipz
	goto	u3725
	movf	0+(??_GPIO_Write+0)+0,w
	xorlw	0ffh
	movwf	(??_GPIO_Write+1)+0
	movf	(??_GPIO_Write+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	line	17
	goto	l8571
	line	18
	
l8557:	
	movf	(GPIO_Write@GPIO_Port),w
	xorlw	low(8|((0x0)<<8))&0ffh
	skipz
	goto	u3731
	goto	u3730
u3731:
	goto	l8561
u3730:
	line	20
	
l8559:	
	movlw	low(01h)
	movwf	(??_GPIO_Write+0)+0
	incf	(GPIO_Write@Pin),w
	goto	u3744
u3745:
	clrc
	rlf	(??_GPIO_Write+0)+0,f
u3744:
	addlw	-1
	skipz
	goto	u3745
	movf	0+(??_GPIO_Write+0)+0,w
	xorlw	0ffh
	movwf	(??_GPIO_Write+1)+0
	movf	(??_GPIO_Write+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(136)^080h,f	;volatile
	line	21
	goto	l8571
	line	24
	
l8561:	
	movlw	low(01h)
	movwf	(??_GPIO_Write+0)+0
	incf	(GPIO_Write@Pin),w
	goto	u3754
u3755:
	clrc
	rlf	(??_GPIO_Write+0)+0,f
u3754:
	addlw	-1
	skipz
	goto	u3755
	movf	0+(??_GPIO_Write+0)+0,w
	xorlw	0ffh
	movwf	(??_GPIO_Write+1)+0
	movf	(??_GPIO_Write+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(137)^080h,f	;volatile
	goto	l8571
	line	29
	
l8563:	
	movlw	low(01h)
	movwf	(??_GPIO_Write+0)+0
	incf	(GPIO_Write@Pin),w
	goto	u3764
u3765:
	clrc
	rlf	(??_GPIO_Write+0)+0,f
u3764:
	addlw	-1
	skipz
	goto	u3765
	movf	0+(??_GPIO_Write+0)+0,w
	movwf	(??_GPIO_Write+1)+0
	movf	(GPIO_Write@GPIO_Port),w
	movwf	fsr0
	movf	(??_GPIO_Write+1)+0,w
	bcf	status, 7	;select IRP bank0
	iorwf	indf,f
	line	30
	goto	l2400
	line	32
	
l8565:	
	movlw	low(01h)
	movwf	(??_GPIO_Write+0)+0
	incf	(GPIO_Write@Pin),w
	goto	u3774
u3775:
	clrc
	rlf	(??_GPIO_Write+0)+0,f
u3774:
	addlw	-1
	skipz
	goto	u3775
	movf	0+(??_GPIO_Write+0)+0,w
	xorlw	0ffh
	movwf	(??_GPIO_Write+1)+0
	movf	(GPIO_Write@GPIO_Port),w
	movwf	fsr0
	movf	(??_GPIO_Write+1)+0,w
	bcf	status, 7	;select IRP bank0
	andwf	indf,f
	line	33
	goto	l2400
	line	26
	
l8571:	
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
	goto	l8565
	xorlw	1^0	; case 1
	skipnz
	goto	l8563
	goto	l8565
	asmopt pop

	line	38
	
l2400:	
	return
	callstack 0
GLOBAL	__end_of_GPIO_Write
	__end_of_GPIO_Write:
	signat	_GPIO_Write,12409
	global	_Compression_Ctrl

;; *************** function _Compression_Ctrl *****************
;; Defined at:
;;		line 309 in file "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
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
psect	text40,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	309
global __ptext40
__ptext40:	;psect for function _Compression_Ctrl
psect	text40
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\LoopProcess.c"
	line	309
	
_Compression_Ctrl:	
;incstack = 0
	callstack 5
; Regs used in _Compression_Ctrl: [wreg+status,2+status,0]
	line	311
	
l8321:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_trashDoorState)),w
	btfsc	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l8327
u3340:
	
l8323:	
		decf	((_trashDoorState)),w
	btfsc	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l8327
u3350:
	line	313
	
l8325:	
	movlw	low(03h)
	movwf	(??_Compression_Ctrl+0)+0
	movf	(??_Compression_Ctrl+0)+0,w
	movwf	(_compressionState)
	line	314
	goto	l4284
	line	315
	
l8327:	
		movlw	2
	xorwf	((_compressionState)),w
	btfsc	status,2
	goto	u3361
	goto	u3360
u3361:
	goto	l4284
u3360:
	line	317
	
l8329:	
		decf	((_trashDoorState)),w
	btfss	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l8333
u3370:
	line	319
	
l8331:	
	clrf	(_compressionState)
	line	320
	goto	l4284
	line	323
	
l8333:	
		decf	((_compressionState)),w
	btfsc	status,2
	goto	u3381
	goto	u3380
u3381:
	goto	l4280
u3380:
	
l8335:	
		movlw	4
	xorwf	((_compressionState)),w
	btfsc	status,2
	goto	u3391
	goto	u3390
u3391:
	goto	l4280
u3390:
	line	325
	
l8337:	
	clrf	(_compressionState)
	incf	(_compressionState),f
	goto	l4284
	line	328
	
l4280:	
	line	329
	
l4284:	
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
psect	text41,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Interrupts.c"
	line	3
global __ptext41
__ptext41:	;psect for function _Interrupts_Function
psect	text41
	file	"D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Interrupts.c"
	line	3
	
_Interrupts_Function:	
;incstack = 0
	callstack 2
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
psect	text41
	line	14
	
i1l8533:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(140)^080h,(1)&7	;volatile
	goto	u363_21
	goto	u363_20
u363_21:
	goto	i1l3611
u363_20:
	
i1l8535:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(12),(1)&7	;volatile
	goto	u364_21
	goto	u364_20
u364_21:
	goto	i1l3611
u364_20:
	line	16
	
i1l8537:	
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
	goto	u365_21
	goto	u365_20
u365_21:
	goto	i1l3612
u365_20:
	line	20
	
i1l8539:	
	movlw	01h
	movwf	(_timeSysTick)	;volatile
	movlw	0
	movwf	((_timeSysTick))+1	;volatile
	line	21
	
i1l3612:	
	line	22
	movlw	low(0DDh)
	movwf	(17)	;volatile
	line	23
	
i1l8541:	
	bcf	(97/8),(97)&7	;volatile
	line	25
	
i1l3611:	
	line	26
	movlw	013h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_timeReset_flag+1),w
	movlw	088h
	skipnz
	subwf	(_timeReset_flag),w
	skipnc
	goto	u366_21
	goto	u366_20
u366_21:
	goto	i1l3614
u366_20:
	line	28
	
i1l8543:	
# 28 "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\Interrupts.c"
clrwdt ;# 
psect	text41
	line	30
	
i1l3614:	
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
