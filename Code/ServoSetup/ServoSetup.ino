/* Servo Setup, Move all to 90degrees - For Arduino Uno */

#include <Servo.h>

Servo myservo[4];  

void setup() {
  // 3, 5, 6, 9
  myservo[0].attach(3);  
  myservo[1].attach(5);  
  myservo[2].attach(6);  
  myservo[3].attach(9);  `
  
  position[0] = 90;
  position[1] = 90;
  position[2] = 90;
  position[3] = 90;
}

void loop() {
  sleep(1)
}
