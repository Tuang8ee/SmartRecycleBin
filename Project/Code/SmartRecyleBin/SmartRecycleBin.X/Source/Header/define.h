/* 
 * File:   define.h
 * Author: tuang
 *
 * Created on April 16, 2022, 8:51 AM
 */

#ifndef DEFINE_H
#define	DEFINE_H

#ifndef uint8_t
    #define uint8_t     unsigned char
    #define int8_t      char
    #define uint16_t    unsigned int
    #define int8_t      int
#endif

#define delay_ms(x)     __delay_ms(x)
#define TEST    GPIO_Read(&PORTC, PIN2)
#define LED(x)  GPIO_Write(&PORTC, PIN1, x)

#endif	/* DEFINE_H */

