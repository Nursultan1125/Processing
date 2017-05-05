class LineVButton
{
  ArrayList<Button> btns = new ArrayList<Button>();
  color bgColor;
  color strokeClr;
  float x;
  float y;
  float wd;
  float hd;
  float rectScl;
  float strW;
  
  float distance;
  float btnWidth;
  float btnHeight;
  
  boolean enableSizeBtn;
  
  PImage bgImage;
  
  boolean hideEnable;
  
  LineVButton()
  {
    bgColor = color(0, 255, 0);
    strokeClr = color(0);
    x = width*0.3;
    y = height * 0.1;
    wd = 100;
    hd = 23;
    rectScl = 0;
    strW = 2;
    distance = 10;
    btnHeight = 30;
    btnWidth = 30;
    enableSizeBtn = false;
    hideEnable = false;
   
    
    
  }
  
  
  void addButton(Button btn){
    btns.add(btn);
  }
  
  void show()
  {
    if(!hideEnable)
    {
        fill(bgColor);
        stroke(strokeClr);
        strokeWeight(strW);
        rect(x, y , wd, btns.size() * btnHeight, rectScl);
        if(bgImage != null)
        {
          //image(bgImage, x, y, wd, hd);
        }
        int i = 0;
        for(Button btn: btns)
        {
          if(enableSizeBtn == true){
            btn.setWidth(wd);
            btn.setWidth(btnWidth);
            btn.setHeight(btnHeight);
          }
          
          btn.setScl(0);
          btn.setRectangle(0);
          btn.setWidth(wd);
          btn.setHeight(btnHeight);
          btn.setStrClr(btn.getBgClr());
          btn.setY(y + i);
          btn.setX(x + (wd - btn.getWidth())/2);
          
          
            btn.show();
          
          i += btn.getHeight();
        }
    }
  }
  
  void setDistance(float d)
  {
    distance = d; 
  }
  float getDistance()
  {
    return distance; 
  }
  
  void setBtnWidth(float h)
  {
    enableSizeBtn = true;
    btnWidth = h;
  }
  
  void setBtnHeight(float h)
  {
    enableSizeBtn = true;
    btnHeight = h;
  }
  
  float getBtnWidth()
  {
    return btnWidth;
    
  }
  
  float getBtnHeight()
  {
    return btnHeight;
    
  }
  void setEnableSizeBtn( boolean b)
  {
    enableSizeBtn = b;
  }
  
  boolean getEnableSizeBtn()
  {
    return enableSizeBtn;
  }
  
  Button getButtonPressed()
  {
    for(Button btn: btns){
      if(btn.isPressed()) return btn;
    }
    return null;
  }
  
  void setBgImage(String str)
  {
    bgImage = loadImage(str);
  }
  
  void hide(boolean b)
  {
    hideEnable = b;
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
      wd = w;
    }
    
     void setHeight(float h) 
    {
      hd = h;
    }
    
     float getWidth() 
    {
      return wd;
    }
    
     float getHeight() 
    {
      return hd;
    }
}