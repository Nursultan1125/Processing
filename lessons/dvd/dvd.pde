int x = 50;
int y = 300;
int rad = 100;
int speed = 5;
int speedy = 3;

void setup(){
  size(600, 600);
  
}


void draw(){
  background(0, 0, 51);
  fill(0, 255, 0);
  textSize(50);
  text("Hello ", x, y);
  x = x + speed;
  y = y + speedy;
  if(x > 550 || x < 50){
    speed = - speed;
  }
  if(y > 550 || y < 50){
    speedy = - speedy;
  }
 
  println(x);
}