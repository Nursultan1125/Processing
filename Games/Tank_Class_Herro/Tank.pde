class Tank extends Hero{
  boolean isattak = false;
  ArrayList <Ball> balls = new ArrayList <Ball>();
  Tank(){
    super();
    Ball ball = new Ball(this.x, this.y, this.angle);
    ball.display = false;
    balls.add(ball);
  }
  void show(){
    for(Ball ball: balls){
      ball.show();
      ball.update();
    }
    super.show();
    
  }
  
  void attack(){
    float dist = dist(balls.get(balls.size() - 1).x, balls.get(balls.size() - 1).y,
    this.x, this.y);
    if(dist > 100){
      balls.add(new Ball(this.x, this.y, this.angle));
    }
    if(balls.size() > 5){
      balls.remove(0);
    }
    
  }
  
}