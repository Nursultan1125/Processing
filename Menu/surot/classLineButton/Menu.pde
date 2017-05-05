class Menu
{
  Button btn;
  LineVButton line;
  boolean lineHide;
  
  float x;
  float y;
  
  
  Menu()
  {
    btn = new Button();
    line = new LineVButton();
    line.hide(true);
    lineHide = true;
    setButtonRectangle(0);
  }
  
   Menu(String str)
  {
    btn = new Button(str);
    line = new LineVButton();
    line.hide(true);
    lineHide = true;
    setButtonRectangle(0);
  }
  void show()
  {
    btn.setX(x);
    btn.setY(y);
    
    line.setX(x);
    line.setY(y + btn.getHeight());
    btn.show();
    line.show();
    line.hide(lineHide);
    
    
  }
  void addAction(String str)
  {
    Button b = new Button(str);
    line.addButton(b);
  }
  void addAction(String str, boolean en)
  {
    Button b = new Button(str);
    b.setEnable(en);
    line.addButton(b);
  }
  
  void register()
  {
    if(btn.isPressed())
    {
      
      lineHide = !lineHide;
    }
    else
    {
      lineHide = true;
    }
   
  }
    void setButtonRectangle(float r)
    {
      btn.setRectangle(r);
    }
    
    float getButtonRectangle()
    {
      return btn.getRectangle ();
    }
    
    void setButtonWidth(float w)
    {
     btn.setWidth(w); 
    }
    
    float getButtonWidth()
    {
     return btn.getWidth();
    }
    
    void setButtonHeight(float w)
    {
     btn.setHeight(w); 
    }
    
    float getButtonHeight()
    {
     return btn.getHeight();
    }
    void setLineHeight(float w)
    {
     line.setHeight(w); 
    }
    
    float getLineHeight()
    {
     return line.getHeight();
    }
    
       void setLineWidth(float w)
    {
     line.setWidth(w); 
    }
    
    float getLineWidth()
    {
     return line.getWidth();
    }
    
    void setX(float x_)
    {
      x = x_;
    }
    
    void setY(float y_)
    {
      y = y_;
    }
    
    float getX()
    {
      return x;
    }
    
    float getY()
    {
      return y;
    }
    
      void setActionWidth(float w)
  {
    line.setWidth(w);
  }
  float getActionWidth()
  {
   return line.getWidth();
  }
  
  void setActionHeight(float h)
  {
   line.setBtnHeight(h);
  }
  float getetActionHeight()
  {
   return line.getBtnHeight(); 
  }
  
  
  String getTextAction()
  {
    Button b = line.getButtonPressed();
    if(b != null){
      return b.getText();
    }
    else 
    {
      return " ";
    }
    
  }
  
  Button getPressedActionButton()
  {
    Button b = line.getButtonPressed();
    return b;
  }
  
    Button getActionButton(String str)
  {
    Button b = line.getButtonPressed();
    return b;
  }
}