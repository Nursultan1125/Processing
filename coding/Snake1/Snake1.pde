Snake s;

createVector food;


float scl = 10;

void setup()
{
  size(600,600);
  s = new Snake();
  frameRate(10);
  pickLockation();
  
}



void draw()
{
  background(300,55);
  if(s.eat(food))
  {
    pickLockation();
  }
  s.death();
  s.update();
  s.show();
  
}

void mousePressed()
{
  
  s.total++; 
}