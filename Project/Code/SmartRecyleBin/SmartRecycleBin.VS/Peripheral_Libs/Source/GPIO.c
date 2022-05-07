#include "..\Hearder\GPIO.h"

//#define PA    *(unsigned char *)0x005
void GPIO_Write(volatile unsigned char *GPIO_Port, unsigned char Pin, uint8_t GPIO_State)
{
    if(GPIO_Port == &PORTA)
    {
        TRISA &= ~(1 << Pin);
    }
    else if(GPIO_Port == &PORTB)
    {
        TRISB &= ~(1 << Pin);
    }
    else if(GPIO_Port == &PORTC)
    {
        TRISC &= ~(1 << Pin);
    }
    else if(GPIO_Port == &PORTD)
    {
        TRISD &= ~(1 << Pin);
    }
    else
    {
        TRISE &= ~(1 << Pin);
    }
    switch(GPIO_State)
    {
        case HIGH:
            *GPIO_Port |= (unsigned char)(1 << Pin);
            break;
        case LOW:
            *GPIO_Port &= ~(1 << Pin);
            break;
        default:
            *GPIO_Port &= ~(1 << Pin);
            break;
    }
}

unsigned char GPIO_Read(volatile unsigned char *GPIO_Port, unsigned char Pin)
{
    if(*GPIO_Port & (1 << Pin))
    {
        return HIGH;
    }
    else
    {
        return LOW;
    }
    
}

void GPIO_Toggle(volatile unsigned char *GPIO_Port, unsigned char Pin)
{
    if(GPIO_Read(GPIO_Port, Pin))
    {
        GPIO_Write(GPIO_Port, Pin, LOW);
    }
    else
    {
        GPIO_Write(GPIO_Port, Pin, HIGH);
    }
}