float x, y;
float spancing = 30;

void setup(){
  size(600, 600);
  background(0, 0, 51);
  
}



void draw(){
  stroke(255);
  if(random(1) > 0.5){
    //line(x, y, x + spancing, y + spancing);
    rect(x, y, spancing, spancing);
  }else{
    //line(x, y + spancing, x + spancing, y );
  }
  x += spance;
  if(x > width){
    x = 0;
    y += spance;
  }
  
}