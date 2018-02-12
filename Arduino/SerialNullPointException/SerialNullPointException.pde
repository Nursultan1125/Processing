import processing.serial.*;
Serial port;

void setup(){
  if(port.list().length != 0){
    port = new Serial(this, port.list()[0], 9600);
    println(port.list()[0]);
  }
}


void draw(){
  
}