Scara scara;
Turtle turtle;
float ang = 0;

void setup(){
  size(600, 600);
  scara = new Scara();
  turtle = new Turtle(scara);
}

void draw(){
  background(0, 0, 51);
  float x = width/3 -   100 * sin(ang);
  float y = height/2 - 100 * cos(ang);
 
  ang += 0.1;
  
 
  scara.setXY(x, y);
  scara.show();
  
}