import peasy.*;

PeasyCam cam;


void setup()
{
  size(500,500,P3D);
  cam = new PeasyCam(this,200);
  
  cam.setMinimumDistance(50);
  cam.setMaximumDistance(500);
  
}



void draw()
{
  background(200);
  randomSeed(10);
  for(int x=-50;x<50;x+=10){
    for(int y=-50;y<50;y+=10)
    {
      for(int z=-50;z<50;z+=10){
        pushMatrix();
        translate(x,y,z);
        boxTile();
        popMatrix();
      }
    }
  }
}


void boxTile()
{
  fill(random(255),random(255),random(255));
  box(random(9));
  
}