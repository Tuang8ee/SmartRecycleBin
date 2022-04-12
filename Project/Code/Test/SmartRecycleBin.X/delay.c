/*
 * File:   delay.c
 * Author: tuang
 *
 * Created on April 12, 2022, 3:04 PM
 */

#define _XTAL_FREQ 20000000
#include <xc.h>

void main(void) {
    TRISB = 0x00;
    while(1)
    {
        PORTBbits.RB0 = 1;
        __delay_ms(500);
        PORTBbits.RB0 = 0;
        __delay_ms(500);
    }
}
