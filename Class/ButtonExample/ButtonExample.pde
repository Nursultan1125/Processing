Button b;
Button b1;


void setup()
{
  size(600,600);
  b = new Button("Ok");
  b1 = new Button("Ok");
  b.setText("Yes");
  b.setX(10);
  
  b.setWidth(250);
  b.setHeight(50);
  b.setRectangle(30);
  b1.setWidth(250);
  b1.setHeight(50);
  b1.setRectangle(30);
  
  b.setTransparency(100);
  b1.setTransparency(100);
  
  b.setBackgroundColor(#FFF536);
  b.setMouseColor(#7CF1FF);
  b.setTransparencyMouse(100);
  
  b1.setBackgroundColor(b.getBackgroundColor());
  b1.setMouseColor(b.getMouseColor());
  b1.setTransparencyMouse(b.getTransparencyMouse());
  
}


void draw()
{
  background(0,0,51);
  b.show();
  b1.show();
}