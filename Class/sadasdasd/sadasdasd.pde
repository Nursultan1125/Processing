import processing.serial.*;

Serial arduino;
Button btn;

void setup(){
  size(300, 300);
  String port = arduino.list()[0];
  arduino = new Serial(this, port, 9600);
  btn = new Button("On");
  println(port);
}




void draw(){
  background(0, 0, 51);
  
  btn.show();
  if(btn.isPressed()){
    arduino.write('n');
  }else{
    arduino.write('o');
  }
  
}