class Button
{
  float x;
  float y;
  Size size;
  color bgClr;
  color mouseClr;
  String text;
  color textClr;
  float textSize;
  float textClr1;
  float speed=3;
  boolean boolPressed;
  boolean hideBool ;
  boolean setAnabl;
  
  PImage icon;
  boolean boolIcon;
  
  float transparency;
  float transparencyMouse;
  
  
  Button()
  {
    x = width/2;
    y = height/2;
    size = new Size();
    bgClr = color(255);
    mouseClr = #55B1FF;
    text = ""; 
    textClr = color(0);
    textSize = 15;
    textClr1 = #EAD002;
    hideBool = false;
    setAnabl = true ;
    transparency = 255;
    transparencyMouse = 255;
  }
   Button(String str)
  {
    x = width/2;
    y = height/2;
    size = new Size();
    bgClr = color(255);
    mouseClr = #55B1FF;
    text = str;
    textClr = color(0);
    textSize = 15;
    hideBool = false ;
    setAnabl = true ;
    transparency = 255;
    transparencyMouse = 255;
  }
  Button(String str,boolean b)
  {
    x = width/2;
    y = height/2;
    size = new Size();
    bgClr = color(255);
    mouseClr = #55B1FF;
    text = str;
    textClr = color(0);
    textSize = 15;
    hideBool = false ;
    setAnabl = true ;
    
      icon = loadImage(str);
      boolIcon = b;
      transparency = 255;
      transparencyMouse = 255;
    
  }
  
  
  void show(){
     if(hideBool==false)
    {
      
    
    
   if(setAnabl == true)
   {
     if(isRange())
    {
      fill(mouseClr,transparencyMouse);
      if(mousePressed)
      {
        boolPressed = true;
      }
      else
      {
        boolPressed = false;
      }
    }else
    {
      fill(bgClr,transparency);
    }
    }else
    {
      fill(100);
    }
    if(boolPressed )
    {
      
      rect(x+size.scl,y+size.scl,size.widthr-2*size.scl,
      size.heightr-2*size.scl,size.rectangle);
      
    }else
    {  
      rect(x,y,size.widthr,size.heightr,size.rectangle);
    }
   if(boolIcon == false)
   {
    fill(textClr);
    textSize(textSize);
    text(text,x + size.widthr*0.10,y + size.heightr*0.75);
   }else
   {
     image(icon,x ,y ,size.widthr,size.heightr);
   }
   }
   if(!isRange())
   {
     boolPressed = false;
   }
    
  }
  
  void setMouseColor(color clr)
  {
    mouseClr = clr;
  }
  
  color getMouseColor()
  {
    return mouseClr;
  }
  
  void setBackgroundColor(color clr)
  {
    bgClr = clr;
  }
  color getBackgroundColor()
  {
    return bgClr;
  }
  
  boolean isPressed()
  {
    return boolPressed;
    
  }
  
  String getText()
  {
    return text;
    
  }
  void setText(String str)
  {
    text = str;
  }
  
  void setEnable(boolean b)
  {
    setAnabl = b;
  }
void hide(boolean v)
{
  hideBool = v;
}

void setIcon(String str)
{
  icon = loadImage(str);
  boolIcon = true;
}

  boolean isRange()
  {
       if(mouseX > x && mouseX  < x + size.widthr && mouseY > y && mouseY < y + size.heightr )
      {
        return true;
      }
      else
      {
         return false; 
      }
    }
    
    float getX()
    {
      return x;
    }
     float getY()
    {
      return y;
    }
    
    void setX(float _x)
    {
      x = _x;
    }
    
    void setY(float _y)
    {
      y = _y;
    }
    
    void setWidth(float w)
    {
      size.widthr = w;
    }
    float getWidth()
    {
      return size.widthr;
    }
    void setHeight(float h)
    {
      size.heightr = h;
    }
    float getHeight()
    {
      return size.heightr;
    }
    
    void setRectangle(float r)
    {
      size.rectangle = r;
    }
    
    float getRectangle()
    {
      return size.rectangle;
    }
    
    void setTransparency(float t)
    {
      transparency = t;
    }
    
     float getTransparency()
    {
      return transparency;
    }
    
    void setTextColor(color clr)
    {
      textClr = clr;
    }
    
     color getTextColor()
    {
      return textClr;
    }
    
    
    void setTransparencyMouse(float t)
    {
      transparencyMouse = t;
    }

}



class Size
{
  float widthr;
  float heightr;
  float rectangle;
  float scl;
  
  Size()
  {
    widthr = 55;
    heightr = 23;
    rectangle = 0;
    scl = 1;
  }
}