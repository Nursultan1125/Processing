class Rect
{
  float x;
  float y; 
  float cslX;
  float cslY;
  color clr;
  
  Rect(float x,float y)
  {
    this.x = x;
    this.y = y;
    cslX = 32;
    cslY = 32;
    clr = color(255,0,0);
  }
  void show()
  {
    noStroke();
    fill(clr);
    rect(x,y,cslX,cslY);
    
  }
  
  
}