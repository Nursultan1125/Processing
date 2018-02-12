ElemClock h1;
ElemClock h2;
ElemClock m1;
ElemClock m2;



void setup(){
  size(600, 700);
  h1 = new ElemClock(70, 30);
  h2 = new ElemClock(310, 30);
  m1 = new ElemClock(70, 390);
  m2 = new ElemClock(310, 390);
  h1.speed = .5;
  h2.speed = 1;
  m1.speed = 2;
  
 
  
}


int i = 0;
void draw(){
  background(0, 0, 51);
  int _h0 = minute() % 10;
  int _h1 = minute()/10;
  int _s0 = second() % 10;
  int _s1 = second()/10;
  
  h1.digit_show(_h1);
  h2.digit_show(_h0);
  m1.digit_show(_s1);
  m2.digit_show(_s0);
  
}

void mouseReleased(){
  i++;
  if(i > 9) i = 0;
}