/* 
 * File:   UltraSonicSensor.h
 * Author: tuang
 *
 * Created on April 18, 2022, 4:43 PM
 */

#ifndef ULTRASONICSENSOR_H
#define	ULTRASONICSENSOR_H

#ifndef DEFINE_H
    #include "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
#endif


#ifdef	__cplusplus
extern "C" {
#endif

#define TRIG    0
#define ECHO    1


uint8_t UltraSonicSensor_Read(Peripheral_Pin *sensor, volatile uint32_t *system_tick);


#ifdef	__cplusplus
}
#endif

#endif	/* ULTRASONICSENSOR_H */

