class LineButton
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
  
  LineButton()
  {
    bgColor = color(0, 255, 0);
    strokeClr = color(0);
    x = width*0.3;
    y = height * 0.1;
    wd = 400;
    hd = 200;
    rectScl = 0;
    strW = 0;
    distance = 10;
    btnHeight = 30;
    btnWidth = 30;
    enableSizeBtn = false;
    
  }
  
  
  void addButton(Button btn){
    btns.add(btn);
  }
  
  void show()
  {
    fill(bgColor);
    stroke(strokeClr);
    strokeWeight(strW);
    rect(x, y , wd, hd, rectScl);
    if(bgImage != null)
    {
      image(bgImage, x, y, wd, hd);
    }
    int i = 0;
    for(Button btn: btns)
    {
      if(enableSizeBtn == true){
        btn.setWidth(btnWidth);
        btn.setHeight(btnHeight);
      }
      btn.setX(x + i + distance);
      btn.setY(y + (hd - btn.getHeight())/2);
      if(i + btn.getWidth() < wd)
      {
        btn.show();
      }
      i += btn.getWidth() + distance;
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
  
  float setBtnHeight()
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
}