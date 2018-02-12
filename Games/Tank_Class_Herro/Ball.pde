class Ball{
  float x;
  float y;
  float rad;
  float speed;
  float a;
  float angle;
  boolean display = true;
  
  Ball(float x, float y){
    this.x = x;
    this.y = y;
    this.rad = 5;
    this.a = 0.4;
    speed = 1;
  }
  Ball(float x, float y, float angle){
    this.x = x;
    this.y = y;
    this.rad = 5;
    this.a = 0.4;
    speed = 1;
    this.angle = angle;
  }
  
  void show(){
    pushMatrix();
    imageMode(CENTER);
    translate(x, y);
    rotate(angle);
    if(display){
      fill(255, 0, 0);
      ellipse(0, 0, 2 * this.rad, 2 * this.rad);
    }
    popMatrix();
    
  }
  void update(){
    x -= speed * cos(angle);
    y -= speed * sin(angle);
    speed += a;
    println(x, y);
  }
}