class Particle
{
  float x;
  float y;
  float sx;
  float sy;
  float ax;
  float ay;
  float rad;
  Particle(float x, float y){
    this.x = x;
    this.y = y;
    rad = 100;
    ax = 1;
    ay = 0.5;
  }
  void show()
  {
    fill(0,255,0);
    ellipse(x, y, rad, rad);
  }
  void update()
  {
    x += sx;
    y += sy;
    if(x <= 0 || x >=width) sx *= -1;
    if(y <= 0 || y >=height) sy *= -1;
    if(!(sx > -0.1 && sx < 0.01) ){
      sx += ax;
      if(sx >= 0) ax = -0.1;
      else ax = 0.1;
      
    }
      if(!(sy > -0.1 && sy < 0.1) ){
      sy += ay;
      if(sy >= 0) ay = -0.1;
      else ay = 0.1;
      
    }
    
  }
  
  void became(Molecule m){
    float dist = dist(x, y, m.x, m.y);
    if(dist < rad/2)
    {
      sx = m.sx;
      sy = m.sy;
      m.sx *= -1;
      m.sy *= -1;
    }
  }
}