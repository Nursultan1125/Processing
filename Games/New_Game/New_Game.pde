Hero hero;
Event event;
Ball ball;


int hero_count = 0;
int event_count = 0;

void setup(){
  size(600, 400);
  hero = new Hero();
  event = new Event();
  ball = new Ball();
}



void draw(){
  background(0, 0, 51);
  
  hero.show();
  event.show();
  ball.show();
  if(ball.x < 0){
    ball = new Ball();
    event_count++;
    
  }
  if(ball.x >width-event.widthH){
    ball = new Ball();
    
    
    hero_count ++;
  }
  
  println(hero_count, event_count);
}