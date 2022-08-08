/* 
 * File:   GPIO.h
 * Author: tuang
 *
 * Created on April 16, 2022, 4:17 AM
 */
#ifndef GPIO_H
    #define GPIO_H

#ifndef DEFINE_H
    #include "../Hearder/define.h"
    //#include "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
#endif

void GPIO_Write(volatile unsigned char *GPIO_Port, unsigned char Pin, uint8_t GPIO_State);
unsigned char GPIO_Read(volatile unsigned char *GPIO_Port, unsigned char Pin);
void GPIO_Toggle(volatile unsigned char *GPIO_Port, unsigned char Pin);
void Test(void);

    
#endif	/* GPIO_H */

