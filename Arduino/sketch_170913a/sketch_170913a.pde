import processing.serial.*;

Serial arduino;


Button btn;

void setup(){
  size(600, 600);
  arduino = new Serial(this, "COM7", 9600);
  btn = new Button("ON");
  
}



void draw(){
  background(0, 0, 51);
  if(btn.isPressed()){
    arduino.write('n');
  }else{
    arduino.write('o');
  }
  btn.show();
}