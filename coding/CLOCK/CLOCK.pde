final int HOUR_LINE = 110;
final int MINUTE_LINE = 120;
final int SECOND_LINE = 125;
final int RADIUSE_CLOCK = 150;
final int SIZE_LINE_CLOCK = 15;
final int SIZE_LINE_CLOCK_MS = 5;

color clrClock = color(255);


float hour_x, hour_y,minute_x, minute_y, second_x, second_y;



void setup(){
  size(600, 600);
}

float hour;

void draw(){
  background(0, 0, 51);
  
  fill(clrClock);
  ellipse(width/2, height/2, 2 * RADIUSE_CLOCK, 2 * RADIUSE_CLOCK);
  linesDigitsMS();
  linesDigitsH();
  drawClock(hour(), minute(), second());
  show();
  fill(255, 0, 0);
  ellipse(width/2, height/2, 15, 15);
  println(hour(), minute(), second());
  
  
}




void drawClock(int hour, int minute, int second){
  hour_x = width/2 - HOUR_LINE * cos(radians(90 + 30 * hour));
  hour_y = height/2 - HOUR_LINE * sin(radians(90 + 30 * hour));
  
  minute_x = width/2 - MINUTE_LINE * cos(radians(90 + 6 * minute));
  minute_y = height/2 - MINUTE_LINE * sin(radians(90 + 6 * minute));
  
  second_x = width/2 - SECOND_LINE * cos(radians(90 + 6 * second));
  second_y = height/2 -SECOND_LINE * sin(radians(90 + 6 * second));
  
}



void show(){
  strokeWeight(5);
  stroke(0, 0, 0);
  line(hour_x, hour_y, width/2, height/2);
  strokeWeight(3);
  stroke(0);
  line(minute_x, minute_y, width/2, height/2);
  strokeWeight(1);
  stroke(255, 0, 0);
  line(second_x, second_y, width/2, height/2);
  
}


void linesDigitsH(){
  float x, y, px, py;
  for(int i = 0; i < 12; i++){
    x = width/2 - RADIUSE_CLOCK * cos(radians(90 + 30 * i));
    y = height/2 - RADIUSE_CLOCK * sin(radians(90 + 30 * i));
    px = width/2 - (RADIUSE_CLOCK - SIZE_LINE_CLOCK) * cos(radians(90 + 30 * i));
    py = height/2 - (RADIUSE_CLOCK - SIZE_LINE_CLOCK) * sin(radians(90 + 30 * i));
    strokeWeight(2);
    stroke(0, 255, 0);
    line(x, y, width/2 , height/2);
    stroke(clrClock);
    strokeWeight(4);
    line(px, py, width/2 , height/2);
  }
}

void linesDigitsMS(){
  float x, y, px, py;
  for(int i = 0; i < 360; i+=3){
    x = width/2 - RADIUSE_CLOCK * cos(radians( i));
    y = height/2 - RADIUSE_CLOCK * sin(radians( i));
    px = width/2 - (RADIUSE_CLOCK - SIZE_LINE_CLOCK_MS) * cos(radians(i));
    py = height/2 - (RADIUSE_CLOCK - SIZE_LINE_CLOCK_MS) * sin(radians(i));
    strokeWeight(1);
    stroke(0, 0, 255);
    line(x, y, width/2 , height/2);
    stroke(clrClock);
    strokeWeight(4);
    line(px, py, width/2 , height/2);
  }
}