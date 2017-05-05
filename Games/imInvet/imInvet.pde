PImage im;
PImage c1;


void setup()
{
  size(500,400);
  im = loadImage("Mario_tileset.png");
  PImage  c= im.get(79,144,18,16);
  c1 = im.get(79,30,18,16) ;
  image(c,50,50,30,30);
  im.loadPixels();
  
  image(c1, 0, 0,30,60);
}