/* 
 * File:   GPIO.h
 * Author: tuang
 *
 * Created on April 16, 2022, 4:17 AM
 */
#ifndef GPIO_H
    #define GPIO_H

#ifndef DEFINE_H
    #include "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
#endif

#ifndef uint8_t
    #define uint8_t     unsigned char
    #define int8_t      char
    #define uint16_t    unsigned int
    #define int8_t      char
    #define uint32_t    unsigned long int
#endif

void GPIO_Write(volatile unsigned char *GPIO_Port, unsigned char Pin, uint8_t GPIO_State);
unsigned char GPIO_Read(volatile unsigned char *GPIO_Port, unsigned char Pin);
void GPIO_Toggle(volatile unsigned char *GPIO_Port, unsigned char Pin);
void Test(void);

    
#endif	/* GPIO_H */

