#include <Ultrasonic.h>
Ultrasonic ultra(5, 4);

int x = 4;
int z = 7;

void setup () {
  pinMode(z, OUTPUT);
  pinMode(x, INPUT);
  Serial.begin(9600);
  Serial.println("hello");
}

void loop () {
  int dist = ultra. Ranging(CM);

  Serial.println(dist);
  if(dist < 30)
  {
    pishalka();
  }
 
}


void pishalka () {
  digitalWrite(z, HIGH);
  delay(200);
  digitalWrite(z, LOW);
  delay(200);
}

