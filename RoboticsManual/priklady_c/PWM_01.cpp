 #include "LearningKit.h"

 void setup() 
 {
	 ledcSetup(0, 1000, 10); 
	 ledcAttachPin(L_Y, 0);
 }
 
 void loop() 
 {
	 ledcWrite(0, analogRead(POT1)/4);
 }