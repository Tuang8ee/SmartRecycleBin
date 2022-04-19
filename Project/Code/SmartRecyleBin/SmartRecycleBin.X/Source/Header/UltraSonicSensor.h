/* 
 * File:   UltraSonicSensor.h
 * Author: tuang
 *
 * Created on April 18, 2022, 4:43 PM
 */

#ifndef ULTRASONICSENSOR_H
#define	ULTRASONICSENSOR_H

#ifdef	__cplusplus
extern "C" {
#endif

#define TRIG    0
#define ECHO    1
#include "GPIO.h"
    uint32_t UltraSonicSensor_Read(Peripheral_Pin *sensor, volatile uint32_t *system_tick)
    {
        uint32_t buff_time = 0;
        GPIO_Write(sensor[TRIG].Port, sensor[TRIG].Pin, LOW);
        delay_us(2);
        GPIO_Write(sensor[TRIG].Port, sensor[TRIG].Pin, HIGH);
        delay_us(5);
        GPIO_Write(sensor[TRIG].Port, sensor[TRIG].Pin, LOW);
        if(!GPIO_Read(sensor[ECHO].Port, sensor[ECHO].Pin))
        {
            while(!GPIO_Read(sensor[ECHO].Port, sensor[ECHO].Pin));
        }
        buff_time = *system_tick;
        while(GPIO_Read(sensor[ECHO].Port, sensor[ECHO].Pin));
        
        buff_time = *system_tick - buff_time;
        if (buff_time > 150)
        {
            buff_time = 0;
        }
        return buff_time;
    }


#ifdef	__cplusplus
}
#endif

#endif	/* ULTRASONICSENSOR_H */

