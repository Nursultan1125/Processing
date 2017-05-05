import ddf.minim.*;

Minim minim;

Model model;

int level = 0;
View view;


void setup()
{
  size(700,400);
  model = new Model( "db/text.csv");
  view = new View("img/bgnImage.jpg", model);
  print(model.countQuestion());
  model.timer.startTimer();
}


void draw()
{
  background(0);
  view.show();
  model.next();
  
  
  
}


void mouseReleased()
{
   println(view.isEvent().getText().equals(String.valueOf(model.rightOption()) + ":"));
   if(view.isEvent().isPressed()){
     model.register = true;
     view.buttonsEnable(false);
   }
   
}