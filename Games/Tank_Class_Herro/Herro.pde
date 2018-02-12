class Hero{
  float x;
  float y;
  float speedX;
  float speedY;
  float aX;
  float aY;
  PImage img;
  float wH = 50, hH = 50;
  float angle;
  boolean display = true;
  
  
  Hero(){
    img = loadImage("images/tank.png");
    x = width/2;
    y = height/ 2;
    speedX = 5;
    speedY = 5;
  }
  
  
  void show(){
    pushMatrix();
    imageMode(CENTER);
    translate(x, y);
    rotate(angle);
    if(display){
      image(img, 0, 0,wH, hH);
    }
    popMatrix();
  }
  void forward(){
    x -= speedX * cos(angle);
    y -= speedY * sin(angle);
  }
  void backward(){
    x += speedX * cos(angle);
    y += speedY * sin(angle);
  }
  void right(){
      angle += PI/2;
    
  }
  void left(){
      angle -= PI/2;
  }
}