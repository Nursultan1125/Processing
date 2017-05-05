class Menu
{
  Button btn;
  LineVButton line;
  boolean lineHide;
  
  float x;
  float y;
  boolean s ;
  boolean f ;
  Menu()
  {
    btn = new Button();
    line = new LineVButton();
    line.hide(true);
    lineHide = true;
    s = true;
    f= true;
  }
  
   Menu(String str)
  {
    btn = new Button(str);
    line = new LineVButton();
    line.hide(true);
    lineHide = true;
    s = true;
    f= true;
  }
  void show()
  {
    
    btn.setX(x);
    btn.setY(y);
    btn.setRectangle(0);
    btn.setStrokeW(s);
    btn.setfill(f);
    
    line.setX(x);
    line.setY(y + btn.getHeight());
    btn.show();
    line.show();
    line.hide(lineHide);
  }
  
    
  void addAction(String str){
    Button b = new Button(str);
    line.addButton(b);
  }
  void addAction(String str, boolean en){
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
  
   void setX(float _x)
    {
     x = _x;
    }
    void setY(float _y)
    {
      y = _y;
    }
     void setStrokeW(boolean b)
    {
      
      s = b;
    }
      void setfill(boolean b)
    {
      
      f = b;
    }
}