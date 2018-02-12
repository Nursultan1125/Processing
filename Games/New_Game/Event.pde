class Event{
  int widthH = 15;
  int heightH = 80;
  color clr = color(0, 255, 0);
  
  float yerrors = 30;
  float distansX = 450;
  
  float x;
  float y;
  float speed;
  
  Event(){
    x = width - widthH-10;
    y = height/2;
    speed = 5;
  }
  
  void show(){
    fill(clr);
    //rectMode(CENTER);
    rect(x, y, widthH, heightH);
    //if(keyPressed){
    //  if(key == UP||key == 'o'||key == 'O'){
    //    if(y >= 0) y-=speed;
    //  }
    //  if(key == UP||key == 'l'||key == 'L'){
    //    if(y <= height - heightH)y+=speed;
    //  }
    //}
    intelect();
  }
  
  void intelect(){
    //y +=speed;
    //if(y <= 0 || y >= height - heightH){
    //  speed*=-1;
    //}
    if(ball.y <= height - heightH && ball.x > distansX && ball.speedx >= 0)
    if(y > ball.y + yerrors*0.01){
      y -= speed;
    }else if(y < ball.y - yerrors){
      y += speed;
    }
  }
  
  boolean isRange(float x_, float y_)
  {
       if(x_ + 10 > x && x_  < x + widthH &&
          y_ + 10> y && y_ < y + heightH )
      {
        return true;
      }
      else
      {
         return false; 
      }
  }
}