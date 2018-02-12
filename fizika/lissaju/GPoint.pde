class GPoint{
  float x, y;
  float diameter;
  
  GPoint(float x , float y){
    this.x = x;
    this.y = y;
    diameter = 5;
    
  }
  
  void show(){
    pushMatrix();
    noStroke();
    translate(width/2, 0.8 * height/2);
    ellipse(x, y, diameter, diameter);
    popMatrix();
    
  }
  
}