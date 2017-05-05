double time ;
double xMouse;
float x;

void setup()
{
  size(600,500);
  time = millis();
}

void draw()
{
  time-=millis();
  
  println(time+" "+differ());
  x+=differ()*(-16);
  ellipse(x,200,50,50);
  time = millis();
  
}


double differ()
{
  xMouse-=mouseX;
  return (mouseX-pmouseX)/time;
  
}