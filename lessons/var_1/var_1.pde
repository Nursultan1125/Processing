
int x = 100;
int y = 50;
int dist = 40;
int dy = 10;
int radiuse = 50;

void setup(){
  size(600,600);
  background(0, 0, 51);
  
  ellipse(x + 0, y + 0, radiuse, radiuse);
  ellipse(x + radiuse * 1 + dist * 1, y + 0, radiuse, radiuse);
  ellipse(x + radiuse * 2 + dist * 2, y + 0, radiuse, radiuse);
  ellipse(x + radiuse * 3 + dist * 3, y + 0, radiuse, radiuse);
  
  ellipse(x + 0, y + radiuse * 1 + dist * 1, radiuse, radiuse);
  ellipse(x + radiuse * 1 + dist * 1, y + radiuse * 1 + dist * 1, radiuse, radiuse);
  ellipse(x + radiuse * 2 + dist * 2, y + radiuse * 1 + dist * 1, radiuse, radiuse);
  ellipse(x + radiuse * 3 + dist * 3, y + radiuse * 1 + dist * 1, radiuse, radiuse);
  
  ellipse(x + 0, y + radiuse * 2 + dist * 2, radiuse, radiuse);
  ellipse(x + radiuse * 1 + dist * 1, y+ radiuse * 2 + dist * 2, radiuse, radiuse);
  ellipse(x + radiuse * 2 + dist * 2, y+ radiuse * 2 + dist * 2, radiuse, radiuse);
  ellipse(x + radiuse * 3 + dist * 3, y+ radiuse * 2 + dist * 2, radiuse, radiuse);
  
  ellipse(x + 0, y + radiuse * 3 + dist * 3, radiuse, radiuse);
  ellipse(x + radiuse * 1 + dist * 1, y + radiuse * 3 + dist * 3, radiuse, radiuse);
  ellipse(x + radiuse * 2 + dist * 2, y + radiuse * 3 + dist * 3, radiuse , radiuse);
  ellipse(x + radiuse * 3 + dist * 3, y + radiuse * 3 + dist * 3, radiuse, radiuse);
  
}

void draw(){
  
  
}