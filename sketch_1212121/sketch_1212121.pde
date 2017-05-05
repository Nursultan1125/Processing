Line l;
void setup(){
  size(600, 600);
  l = new Line();
}

int a;
void draw(){
  background(0,0,100);
  l.update(-a*6);
  l.show();
  a = millis()/1000;
  println(a);
}