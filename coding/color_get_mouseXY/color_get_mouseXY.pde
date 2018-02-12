PImage img;

void setup(){
  size(500, 300);
  background(0, 255, 0);
  img = loadImage("img/banner-1.png");
}



void draw(){
  //fill(255, 0, 0);
  //rect(0, 0, width/2, height/2);
  //fill(0, 255, 0);
  //rect(width/2, 0, width/2, height/2);
  //fill(0, 0, 255);
  //rect(0, height/2, width, height/2);
  image(img, 0, 0, width, height);
  loadPixels();
  color c = pixels[mouseX + mouseY * width];
  float red = red(c);
  float green = green(c);
  float blue = blue(c);
  println("color: " + "(" + red + ", " + green + ", " + blue + ")",
  "x: " + mouseX, "y: " + mouseY);
  updatePixels();
  fill(c);
  ellipse(100, 100, 100, 100);
}