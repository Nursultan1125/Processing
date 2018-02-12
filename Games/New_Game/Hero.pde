class Hero{
  int widthH = 15;
  int heightH = 80;
  color clr = color(0, 255, 0);
  
  float x;
  float y;
  float speed;
  
  Hero(){
    x = 10;
    y = height/2;
    speed = 10;
  }
  
  void show(){
    fill(clr);
    //rectMode(CENTER);
    rect(x, y, widthH, heightH);
    if(keyPressed){
      if(key == UP||key == 'w'||key == 'W'){
        if(y >= 0) y-=speed;
      }
      if(key == UP||key == 's'||key == 'S'){
        if(y <= height - heightH)y+=speed;
      }
    }
  }
  
  boolean isRange(float x_, float y_)
  {
       if(x_+100 > x && x_  < x + widthH &&
          y_+100 > y && y_ < y + heightH )
      {
        return true;
      }
      else
      {
         return false; 
      }
  }
}