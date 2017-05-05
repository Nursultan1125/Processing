import processing.serial.*;
Serial arduino;

Button [] btns = new Button [8];
Button off ;

void setup()
{
  size(600,200);
  off = new Button("OFF");
  arduino = new Serial(this, "COM21", 9600);
  for(int i = 0; i < 8; i++)
  {
    btns[i] = new Button("" + i);
    btns[i].setY(100);
    btns[i].setX(50 + i * 65);
  }
  off.setY(150);
  
}



void draw()
{
  background(0,0,51);
   for(int i = 0; i < 8; i++)
  {
  
    btns[i].show();
  }
  off.show();
}

void mouseReleased()
{
  for(int i = 0; i < 8; i++)
  {
  
    if(btns[i].isPressed())
    {
      arduino.write(btns[i].getText());
    }
  }
  if(off.isPressed())
  {
    arduino.write('o');
  }
  
}