import peasy.*;

PeasyCam cam;

int total = 20;

PVector[][] globe;

void setup()
{
  size(600,600,P3D);
  cam =new PeasyCam(this,500);
  globe =new PVector [total + 1][total + 1];
  colorMode(HSB);
}


void draw()
{
  background(0);
  fill(255);
  lights();
  //translate(width/2,height/2);
  //sphere(200);
  
  float r = 200;
  for(int i = 0; i< total+1; i++)
  {
    float lon = map(i, 0,total, -PI, PI);
    for(int j = 0; j < total+1; j ++)
    {
      float lat = map(j , 0,total, -HALF_PI, HALF_PI);
      float x = r * cos(lat) * sin(lon);
      float y = r * sin(lon) * sin(lat);
      float z = r * cos(lon);
      
       globe[i][j] = new PVector(x,y,z);
       //point(x,y,z);
    }
  }
  stroke(255);
  
    
  
  
   for(int i = 0; i< total; i++)
   {
     
     beginShape(TRIANGLE_STRIP);
      for(int j = 0; j < total+1; j ++)
      {
        float hu = map(i,0,total,0,255);
        fill(hu,255,255);
        PVector v1 = globe[i][j];
        vertex(v1.x,v1.y,v1.z);
       PVector v2 = globe[i+1][j];
        vertex(v2.x,v2.y,v2.z);
      }
      endShape();
    
   }
  
}