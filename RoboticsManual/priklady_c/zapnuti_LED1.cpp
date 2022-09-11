#include "LearningKit.h" 

void setup()  
{
    pinMode(L_Y, OUTPUT); // initialize LED digital pin as an output
    
    digitalWrite(L_Y, HIGH);
}

void loop() 
{
    if ((digitalRead(SW1)) == LOW)
        {digitalWrite(L_Y, LOW);} 
    else {digitalWrite(L_Y, HIGH);}
  
}