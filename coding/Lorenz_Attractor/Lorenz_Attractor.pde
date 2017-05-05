import peasy.*;

PeasyCam cam;

float x = 1;
float y = 1;
float z = 1;

float a = 10;
float b = 28;
float c = 8.0/3.0;

ArrayList<PVector> points = new ArrayList<PVector>();

void setup()
{
  size(800,600,P3D);
  colorMode(HSB);
  cam = new PeasyCam(this,500);
  
  
}

void draw()
{
  background(0);
  float dt = 0.01;
  float dx = (a*(y-x))*dt;
  float dy = (x*(b-z)-y)*dt;
  float dz = (x*y - c * z)*dt;
  
  x+=dx;
  y+=dy;
  z+=dz;
  
  points.add(new PVector(x,y,z));
  //println(x,y,z);
  translate(width/2,height/2);
  scale(5);
  stroke(255);
  noFill();
  beginShape();
  float hu =0;
  for(PVector v: points)
  {
    stroke(hu,255,255);
    vertex(v.x,v.y,v.z);
    PVector offset = PVector.random3D();
    offset.mult(0.01);
    v.add(offset);
    
    
    hu+=0.1;
    if(hu >255)
    {
      hu = 0;
    }
   }
  endShape();
}
  
 