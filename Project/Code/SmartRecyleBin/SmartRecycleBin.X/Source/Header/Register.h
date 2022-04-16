
#ifndef _REGISTER_H_
#define	_REGISTER_H_

#include <xc.h>
#ifndef _PIC16F877A_H_
    #include "PIC16f877A.h"
#endif
#include "define.h"

#define _XTAL_FREQ 20000000



// CONFIG
#pragma config FOSC = HS     // Oscillator Selection bits (RC oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

/* LOGIG define */
#define LOW     0
#define HIGH    1
/* Timer_counter value_set*/
#define TIMER0  0
#define TIMER1  1
#define TIMER2  2

// PORT Bits
#define PIN(x)    x
#define PIN0     0
#define PIN1     1
#define PIN2     2
#define PIN3     3
#define PIN4     4
#define PIN5     5
#define PIN6     6
#define PIN7     7

// OPTION_REG_REGISTER

#define RBPU    7
#define INTEDG  6
#define T0CS    5
#define T0SE    4
#define PSA     3
#define PSBIT   0

// REGISTERS ASSOCIATED WITH TIMER0
#define GIE     7
#define PEIE    6
#define TMR0IE  5
#define INTE    4
#define RBIE    3
#define TMR0F   2
#define INTF    1
#define RBIF    0

// Timer1 Input Clock Prescale Select bits
#define T1CKPS  4

#ifdef	__cplusplus
#endif /* __cplusplus */


#ifdef	__cplusplus
}
#endif /* __cplusplus */

#endif	/* _REGISTER_H_ */

