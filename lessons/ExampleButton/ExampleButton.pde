Button btn;
Button btn2;
Button btn3;
Button btn4;

int x = 100;
int y = 300;
int rad = 100;


void setup(){
  size(600, 600);
  
  btn = new Button("LEFT");
  btn2 = new Button("RIGHT");
  btn3 = new Button("  UP");
  btn4 = new Button("DOWN");
  
  btn.setHeight(50);
  btn2.setHeight(50);
  btn3.setHeight(50);
  btn4.setHeight(50);
  
  btn.setX(72);
  btn.setY(100);
  
  btn2.setX(185); 
  btn2.setY(100);
  
  btn3.setX(129);
  btn3.setY(45);
  
  btn4.setX(129);
  btn4.setY(153);
  //btn.setBackgroundColor(#3EDE1F);
  //btn.setMouseColor(#C71FDE);
  //btn.setTransparency(100);
}


void draw(){
  background(0, 0, 51);
  btn.show();
  btn2.show();
  btn3.show();
  btn4.show();
  fill(255);
  ellipse(x, y, rad, rad);
  if(btn2.isPressed()){
    x = x + 5;
  }
  
  if(btn.isPressed()){
    x = x - 5;
  }
  
  if(btn3.isPressed()){
    y = y - 5;
  }
  
  if(btn4.isPressed()){
    y = y + 5;
  }
 

}