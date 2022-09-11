#include "LearningKit.h"

void setup()  // this part run once 
{
  pinMode(L_R, OUTPUT); // initialize LED digital pin as an output. 
}

void loop()  // this part works in cycle 
{
  digitalWrite(L_R, HIGH); // switch on red LED
  delay(500); // pause 500 miliseconds
  digitalWrite(L_R, LOW);  // switch off red LED
  delay(500);
}