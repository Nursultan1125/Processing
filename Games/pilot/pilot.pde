Pillot p;

int d =1;
void setup()
{
  size(600,600);
  p = new Pillot();
  
  
}


void draw()
{
  background(0,0,20);
  p.show();
  
  
}

void keyPressed()
{
  if(keyCode == RIGHT)
  {
    p.move(2,0);
  }
    if(keyCode == LEFT)
  {
    p.move(-2,0);
  }
}