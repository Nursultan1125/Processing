class ElemClockItem{
  float x;
  float y;
  float rad;
  
  Point l1, l2;
  ElemClockItem(){
    x = width/2;
    y = height/2;
    rad = 30;
    l1 = new Point();
    l2 = new Point();
    l1.speed = 1;
    l2.speed = 1;
  }
  
  void show(){
    
    l1.x = rad * cos(radians(l1.angle) - PI / 2);
    l1.y = rad * sin(radians(l1.angle) - PI / 2);
    
    l2.x = rad * cos(radians(l2.angle) - PI / 2);
    l2.y = rad * sin(radians(l2.angle) - PI / 2);
    
    pushMatrix();
    translate(x, y);
    stroke(0);
    ellipse(0, 0, 2 * rad, 2 * rad);
    stroke(200, 0, 0);
    strokeWeight(3);
    line(0, 0, l1.x, l1.y);
    line(0, 0, l2.x, l2.y);
    popMatrix();
  }
  
  void update(){
    l1.angle += l1.speed;
    l2.angle -= l2.speed;
  }
  
  class Point{
    
    float x;
    float y;
    float angle;
    float speed;
    
  }
  
}