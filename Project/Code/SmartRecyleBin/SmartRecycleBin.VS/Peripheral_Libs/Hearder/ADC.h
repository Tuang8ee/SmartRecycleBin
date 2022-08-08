#ifndef ADC_H
    #define ADC_H

#ifndef DEFINE_H
    #include "../Hearder/define.h"
    //#include "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
#endif

void ADC_BASE_Init(void);

void ADC_Interrupts_Init(void);

uint16_t ADC_Read(uint8_t channel);
    
#endif	/* ADC_H */
