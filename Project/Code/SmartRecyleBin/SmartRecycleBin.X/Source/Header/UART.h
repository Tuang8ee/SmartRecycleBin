/* 
 * File:   UART.h
 * Author: tuang
 *
 * Created on April 18, 2022, 9:37 PM
 */

#ifndef UART_H
#define	UART_H

#ifdef	__cplusplus
extern "C" {
#endif
#include "define.h"
    void UART_BASE_Init(long baud)
    {
        TRISC = 0X80;
        TXSTA = 0X24;
        RCSTA = 0X90;
        SPBRG = (_XTAL_FREQ / (long)(16UL * baud)) - 1;
    }

    void UART_WriteChar(char data)
    {
        TXREG = data;
        while(TXIF == 0);
        TXIF = 0;
        while(TRMT != 1);
    }
    void UART_Writes(char *data, uint8_t len)
    {
        uint8_t i = 0;
        for(i = 0; i <= len; i++)
        {
            UART_WriteChar(data[i]);
        }
    }
#ifdef	__cplusplus
}
#endif

#endif	/* UART_H */

