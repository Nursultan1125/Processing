class Molecule{
  float x;
  float y;
  float radiuse;
  color clr;
  float sx;
  float sy;
  
  Molecule(float x,float y)
  {
    this.x = x;
    this.y = y;
    radiuse = 10;
    clr = #F51130;
  }
  void update(){
    x += sx;
    y += sy;
    if(x <= 0 || x >=width) sx *= -1;
    if(y <= 0 || y >=height) sy *= -1;
  }
  void show()
  {
    fill(clr);
    ellipse(x, y, radiuse, radiuse);
  }
  
  void setSpeed(float x, float y){
    sx = x;
    sy = y;
  }
  
  
  boolean isRange(Molecule m)
  {
    float dist = dist(x, y, m.x, m.y);
    if(dist <= radiuse){
      return true;
    }
    else{
      return false;
    }
  }
}