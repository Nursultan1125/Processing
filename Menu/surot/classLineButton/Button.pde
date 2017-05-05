class Button
{  
  float x;
  float y;
  Size size;
  color bgClr;
  color mouseClr;
  color strColor;
  
  String text;
  float textClr;
  float textSize;
  float textClr1;
  
  
  float strWeight;
  boolean boolPressed;
  boolean hideBool ;
  boolean setAnabl;
  
  PImage icon;
  boolean boolIcon;
  
  
  Button()
  {
    x = width/2;
    y = height/2;
    size = new Size();
    bgClr = color(255);
    mouseClr = #55B1FF;
    text = ""; 
    textClr = color(255);
    textSize = 15;
    textClr1 = #EAD002;
    hideBool = false;
    setAnabl = true ;
    
    strWeight = 0;
    strColor = color(0);
  }
   Button(String str)
  {
    x = width/2;
    y = height/2;
    size = new Size();
    bgClr = color(255);
    mouseClr = #55B1FF;
    text = str;
    textClr = color(255);
    textSize = 15;
    hideBool = false ;
    setAnabl = true ;
  }
  Button(String str,boolean b)
  {
    x = width/2;
    y = height/2;
    size = new Size();
    bgClr = color(255);
    mouseClr = #55B1FF;
    text = str;
    textClr = color(255);
    textSize = 15;
    hideBool = false ;
    setAnabl = true ;
    
      icon = loadImage(str);
      boolIcon = b;
    
  }
  
  
  void show(){
     if(hideBool==false)
    {
      
    stroke(strColor);
    strokeWeight(strWeight);
    
   if(setAnabl == true)
   {
     if(isRange())
    {
      fill(mouseClr);
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
      fill(bgClr);
    }
    }else
    {
      fill(100);
    }
    if(boolPressed )
    {
      noFill();
      rect(x+size.scl,y+size.scl,
      size.widthr-2*size.scl,
      size.heightr-2*size.scl,
      size.rectangle);
      
    }else
    {  
     
      noStroke();
      rect(x,y,size.widthr,
      size.heightr,
      size.rectangle);
    }
   if(boolIcon == false)
   {
    fill(textClr);
    textSize(textSize);
    text(text,x + size.widthr*0.10,
    y + size.heightr*0.75);
   }else
   {
     image(icon,x+6,y+6,size.widthr - 12,size.heightr-12);
   }
   }
   if(!isRange())
   {
     boolPressed = false;
   }
    
  }

  
  boolean isPressed()
  {
    return boolPressed;
    
  }
  
  String getText()
  {
    return text;
    
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
       if(mouseX > x && mouseX  < x + size.widthr 
       && mouseY > y && mouseY < y + size.heightr )
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
    
    void setText(String str)
    {
      text = str;
      
    }
    
    float getWidth()
    {
      return size.widthr;
    }
    void setWidth(float w)
    {
      size.widthr = w;
    }
    
    float getHeight()
    {
      return size.heightr;
    }
    void setHeight(float w)
    {
      size.heightr = w;
    }
    void setRectangle(float r)
    {
      size.rectangle = r;
    }
    
    float getRectangle()
    {
      return size.rectangle;
    }
    
    void setScl(float r)
    {
      size.scl = r;
    }
    float getScl()
    {
      return size.scl;
    }
    
    void setStrokeWeight(float w)
    {
      strWeight = w;
    }
     float getStrokeWeight()
    {
      return strWeight;
    }
    
     void setStrClr(color w)
    {
      strColor = w;
    }
     color getStrClr()
    {
      return strColor;
    }
    
    color getBgClr()
    {
      return bgClr;
    }
    void setBgClr(color c)
    {
      bgClr = c;
    }
}