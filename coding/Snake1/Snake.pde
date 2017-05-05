class Snake
{
  float x;
  float y;
  float xspeed;
  float yspeed;
  int total;
  ArrayList<createVector> tale;
  
  
  
  Snake()
  {
    this.x = 0;
    this.y = 0;
    this.xspeed = 1;
    this.yspeed = 0;
    total = 0;
    tale = new ArrayList<createVector>();
  }
  
  void update()
  {
    //if(total>=1)
       if (total > 0) {
      if (total == tale.size() && !tale.isEmpty()) {
        tale.remove(0);
      }
      tale.add(new createVector(x, y));
    }
    
    
    
    this.x+=this.xspeed*scl;
    this.y+=this.yspeed*scl;
    this.x = constrain(this.x,0,width-scl);
    this.y = constrain(this.y,0,height-scl);
    
    
  }
  
  void dir(float x,float y)
  {
    this.xspeed = x;
    this.yspeed = y;
    
  }
  
  void show()
  {
    fill(255);
    for (createVector v : tale) {
      rect(v.x, v.y, scl, scl);
    }
    
    rect(this.x,this.y,scl,scl);
    
    fill(255,0,100);
    rect(food.x,food.y,scl,scl);
    
    println(total);
    
  }
  
  boolean eat(createVector pos)
  {
    float d = dist(this.x,this.y,pos.x,pos.y);
    if(d<1)
    {
      total++;
      return true;
    }
    else return false;
  }
  
  void death() {
    for (int i = 0; i < tale.size(); i++) {
      createVector pos = tale.get(i);
      float d = dist(x, y, pos.x, pos.y);
      if (d < 1) {
        println("starting over");
        total = 0;
        tale.clear();
      }
    }
  }
}


void keyPressed()
{
  if(keyCode == UP)
  {
    s.dir(0,-1);
    
  }
  else if(keyCode == DOWN)
  {
    s.dir(0,1);
    
  }
  else if(keyCode == RIGHT)
  {
    s.dir(1,0);
    
  }
  else if(keyCode == LEFT)
  {
    s.dir(-1,0);
    
  }
  
  
}


void pickLockation()
{
  float cols = floor(width/scl);
  float rows = floor(height/scl);
   food = new createVector(floor(random(cols)),floor(random(rows)));
  food.mult(scl);
}

class createVector
{
  float x;
  float y;
  
  
  createVector(float x,float y)
  {
    this.x = x;
    this.y = y;
    
  }
  
  void mult(float c)
  {
    this.x*=c;
    this.y*=c;
  }
  
  
}