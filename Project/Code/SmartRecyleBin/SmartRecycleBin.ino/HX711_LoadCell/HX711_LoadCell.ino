#include <Q2HX711.h>
#define D12 12
#define D13 13
const byte hx711_data_pin = 3;
const byte hx711_clock_pin = 2;

Q2HX711 hx711(hx711_data_pin, hx711_clock_pin);


float calib_value = 0.0;
void setup() {
  pinMode(D12, OUTPUT);
  pinMode(D13, OUTPUT);
  //Serial.begin(9600);
  for(int i = 0; i < 10; i++)
  {
    calib_value += (hx711.read()/100.0);
  }
  calib_value = calib_value/10;
}

void loop() {
  float limit_val = 0;
  for(int i = 0; i < 100; i++)
  {
    limit_val += analogRead(A0);
  }
  limit_val = limit_val/100;
  limit_val = limit_val * 20/1023;
  //Serial.print(limit_val);
  //Serial.println(" Val (Kg)");
  float val = hx711.read()/100.0 - calib_value;
  if(val < 0)
  {
    val = 0;
  }
  val = val/1000;
  //Serial.print(val);
  //Serial.println("Kg");

  if(val > limit_val)
  {
    digitalWrite(D13, HIGH);
    digitalWrite(D12, HIGH);
  }
  else
  {
    digitalWrite(D13, LOW);
    digitalWrite(D12, LOW);
  }
  
  delay(200);
}
