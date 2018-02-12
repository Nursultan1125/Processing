class Ball{
  
  int d = 40;
  float x;
  float y;
  float speedx;
  float speedy;
  
  Ball(){
    x = random(width/2-100, width/2+100);
    y = random(height/2-100, height/2+100);
    speedx = -3;
    speedy = 3;
    
  }
  
  
  void show(){
    update();
    fill(#0209C1);
    ellipse(x, y, d, d);
  }
  
  void update(){
    x += speedx;
    y += speedy;
    if(y <= 0 || y >= height-d/2){
      speedy *= -1;
    }
    if(isRange(event) || isRange(hero)){
      speedx *= -1;
    }
    
  }
  
  boolean isRange(Event event){
    return event.isRange(this.x, this.y);
  }
   boolean isRange(Hero hero){
    return hero.isRange(this.x, this.y);
  }
 
  
}