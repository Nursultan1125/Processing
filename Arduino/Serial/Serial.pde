import processing.serial.*;

Serial arduino;

void setup(){
  
  arduino = new Serial(this, arduino.list()[0], 9600);
}


void draw(){
  arduino.write('n');
}