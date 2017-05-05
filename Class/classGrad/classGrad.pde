Grad g;
int i =0;
Button pluse;
Button minuse;

void setup()
{
   size(400,600);
   g = new Grad();
   
   pluse = new Button("  +");
   minuse = new Button("   -");
   
   
   pluse.setX(200);
   pluse.setY(300);
   minuse.setX(270);
   g.setColor("red-green-255");
   
   
   
   
  
}


void draw()
{
  background(0);
  textSize(20);
  fill(255);
  text(g.getPercent() + " %",100,50);
  g.show();
  pluse.show();
  minuse.show();
  g.setPercent(int(i));
  if(pluse.isPressed()&&i <= 100)
  {
    i++;
  }
   if(minuse.isPressed()&&i >= 0)
  {
    i--;
  }
  
}