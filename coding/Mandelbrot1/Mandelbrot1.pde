float angle = 0;

void setup()
{
  size(640,460);
  colorMode(HSB,1);
  
}



void draw()
{
  float w = 5*sin(angle);
  float h = (w*height)/width;
  //float ca = map(mouseX,0,width,-1,1);//0.70176;
  //float cb = map(mouseY,0,height,-1,1);//0.3842;
  float ca = -0.8;//cos(angle);
  float cb = 0.156;//sin(angle);
  angle+=0.05;
  
  float xmin = -w/2;
  float ymin = -h/2;
  
  loadPixels();
  
  int maxiterations = 100;
  float xmax = ymin + w;
  float ymax = ymin + h;
  
  float dx = (xmax - xmin)/(width);
  float dy = (ymax - ymin)/(height);
  float y = xmin;
  
  for(int j = 0; j < height; j++)
  {
    float x = xmin;
    for(int i = 0; i < width; i++)
    {
      float a = x;
      float b = y;
      int n = 0;
      
      while(n < maxiterations)
      {
        float aa = a * a;
        float bb = b * b;
        float twoab = 2.0 * a * b;
        
        
        a = aa - bb + ca;
        b = twoab + cb;
        
        if(aa * aa + bb*bb > 4.0)
        {
          break;
          
        }
        
        n++; 
      }
      
      
      if( n == maxiterations)
      {
        pixels[i + j*width] = color(0);
      }
      else
      {
        float hs = sqrt(float(n) / maxiterations);
        pixels[i + j * width] = color(hs,155,255);
      }
      
      x += dx;
    }
    
    y +=dy;
  }
  updatePixels();
  
  
}