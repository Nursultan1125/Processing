import processing.serial.*;
Serial port;

int r = 180;

Button [] btn = new Button[8];

boolean isConnect = false;
String message = "";


void setup(){
  size(700, 500);
  if(port.list().length != 0){
    port = new Serial(this, port.list()[0], 9600);
    message = port.list()[0];
    println(message);
    isConnect = true;
    
  }else{
    isConnect = false;
    message = "No connection !!!";
  }
  
  for(int i = 0; i < 8; i++){
    btn[i] = new Button();
    
  }
  btn[0].setX(30);
  btn[0].setY(30);
  btn[1].setX(30 + r*1);
  btn[1].setY(30);
  btn[2].setX(30 + r * 2);
  btn[2].setY(30);
  btn[3].setX(30 + r * 3);
  btn[3].setY(30);
  btn[4].setX(30 + r * 0);
  btn[4].setY(250);
  btn[5].setX(30 + r * 1);
  btn[5].setY(250);
  btn[6].setX(30 + r * 2);
  btn[6].setY(250);
  btn[7].setX(30 + r * 3);
  btn[7].setY(250);
  for(int i = 0; i < 8; i++){
    btn[i].setWidth(120);
    btn[i].setHeight(120);
    btn[i].setText("OFF");;
  }
}


void draw(){
  background(0, 0, 51);
  for(int i = 0; i < 8; i++){
    btn[i].show();
  }
  
  if(isConnect){
    fill(0, 255, 0);
    textSize(20);
    text(message, 300, 450);
  }else{
    fill(255, 0, 0);
    textSize(20);
    text(message, 250, 450);
  }
  
}



void mouseReleased(){
  for(int i = 0; i < 8; i++){
    if(btn[i].isPressed()){
      if(btn[i].getText().equals("OFF")){
        btn[i].setText("ON");
        if(port != null){
          port.write(char(i + 48));
          port.write('@');
          port.write('1');
        }
      }else if(btn[i].getText().equals("ON")){
        btn[i].setText("OFF");
        if(port != null){
          port.write(char(i + 48));
          port.write('@');
          port.write('0');
        }
        println(char(i + 48));
      }
    }
  }
  
}