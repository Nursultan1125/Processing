class Pillot
{
  float x;
  float y;
  float h;
  float w;
  Pillot()
  {
    x = 0;
    y = 0;
    w = 10;
    h = 30;
  }
  
  void show()
  {
    fill(255,0,0);
    pushMatrix();
    translate(width/2,height-h);
    rect(x,y,w,h);
    popMatrix();
  }
  void move(float xspeed,float yspeed)
  {
    x += xspeed;
    y += yspeed;
  }
}