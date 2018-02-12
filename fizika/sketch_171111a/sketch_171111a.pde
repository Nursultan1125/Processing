float x, y, a, r = 100, fix = 0, fiy = 0, speed = 0.2;
float wX = 3, wY = 2;

void setup(){
  size(600, 600);
  background(0);
}
void draw(){
  pushMatrix();
  stroke(random(255), random(255), random(255));
  strokeWeight(5);  
  x = r * cos(wX * a + fix);
  y = r * sin(wY * a + fiy);
  a += speed; 
  translate(width/2, height/2);
  point(x, y); 
  popMatrix();  
}