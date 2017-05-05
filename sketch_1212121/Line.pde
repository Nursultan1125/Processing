class Line{
  float x, y;
  float dist = 50;
  float angle;
  void show(){
    pushMatrix();
    translate(width/2, height/2);
    stroke(0);
    strokeWeight(5);
    line(0, 0, x, y);
    popMatrix();
  }
  void update(float ans){
    x = dist * sin(radians(angle));
    y = dist * cos(radians(angle));
    angle =ans;
  }
  
}