
void setup(){
  size(600,600);
  background(255);
  stroke(0, 0, 255, 100);
  for(int x = 0; x < 600; x+=10){
    line(x,0, x, 600);
  }
  for(int y = 0; y < 600; y+=10){
    line(0, y, 600, y);
  }
}


void draw(){
 
  fill(0, 0, 100);
  if(mousePressed)
    line(pmouseX, pmouseY, mouseX,mouseY);
}