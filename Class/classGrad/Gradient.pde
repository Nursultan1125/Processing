class Grad
{
  float x;
  float y ;
  
  int red ;
  int green;
  int blue;
  
  int percent;
  String colorStr;
  
  Grad()
  {
    percent = 0;
    x = 100;
    y = 400;
    red =0 ;
    green = 0;
    blue = 0;
    colorStr = "white";
  }
  
   Grad(int p)
  {
    if(p >100) p = 100;
    if(p < 0) p = 0;
    percent = p;
    x = 100;
    y = 400;
    red =0 ;
    green = 0;
    blue = 0;
    colorStr = "white";
  }
  
  
 void setPercent(int p)
 {
   if(p >100) p = 100;
    if(p < 0) p = 0;
   percent = p;
 }
 int getPercent()
 {
   return percent;
 }
 
 void setColor(String str)
 {
   colorStr = str;
 }
  void show()
  {
    for( int i = 0; i < int(map(percent, 0,100,0, 255)); i ++)
    {
      noStroke();
      if(colorStr == "white")
      {
        red = i;
        green = i;
        blue =i;
      }
      if(colorStr == "red")
      {
        red = i;
        green = 0;
        blue =0;
      }
      if(colorStr == "green")
      {
        red = 0;
        green = i;
        blue =0;
      }
      if(colorStr == "blue")
      {
        red = 0;
        green = 0;
        blue =i;
      }
        if(colorStr == "green-blue")
      {
        red = 0;
        green = i;
        blue =i;
      }
         if(colorStr == "blue-green")
      {
        red = 0;
        green = i;
        blue =i;
      }
      
        if(colorStr == "green-red")
      {
        red = i;
        green = i;
        blue =0;
      }
         if(colorStr == "red-green")
      {
        red = i;
        green = i;
        blue =0;
      }
      
        if(colorStr == "red-green-255")
      {
        red = i;
        green = i;
        blue =255;
      }
      
      fill(red,green,blue);
      rect(x, y - i*1, 50,1);
    
      }  
    }
  
  
  void setX(float _x)
  {
    x = _x;
  }
  
   void setY(float _x)
  {
    x = _x;
  }
  
   float setX()
  {
    return x;
  }
    float setY()
  {
    return y;
  }
  
}
  