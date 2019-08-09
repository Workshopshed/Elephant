/* Sweep
 *  Based on the work of BARRAGAN and Scott Fitzgerald  
 *  http://www.arduino.cc/en/Tutorial/Sweep
*/

#include <Servo.h>

Servo myservo[4];  

int position[4];   

int minpos = 50;
int maxpos = 120;
int slow = 1;
int fast = 4;

void setup() {
  // 3, 5, 6, 9
  myservo[0].attach(3);  
  myservo[1].attach(5);  
  myservo[2].attach(6);  
  myservo[3].attach(9);  
  
  position[0] = minpos;
  position[1] = maxpos;
  position[2] = minpos;
  position[3] = maxpos;
}

void moveServo(int servo, int speed) {
  myservo[servo].write(position[servo]);
  position[servo] = position[servo] + speed;
  if (position[servo] < minpos) { position[servo] = minpos; }
  if (position[servo] > maxpos) { position[servo] = maxpos; }
}

void loop() {
  for (int pos = minpos; pos <= maxpos; pos += 1) { 
        moveServo(0,slow);
        moveServo(1,-fast);
        moveServo(2,-slow);
        moveServo(3,fast);
        delay(15);
    }

  for (int pos = minpos; pos <= maxpos; pos += 1) { 
        moveServo(0,-fast);
        moveServo(1,slow);
        moveServo(2,fast);
        moveServo(3,-slow);
        delay(15);
    }
  
}
