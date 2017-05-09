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
  if(model.level == model.countQuestion()){
    view.rezult = false;
  }
}


void mouseReleased()
{  
  model.mas[model.level] = view.isEvent().getText().equals(String.valueOf(model.rightOption()) + ":");
   if(view.isEvent().isPressed()){
     if(view.isEvent().getText().equals(String.valueOf(model.rightOption()) + ":")){
       view.isEvent().setBackgroundColor(color(0, 255, 0));
     }else{
       view.isEvent().setBackgroundColor(color(255, 0, 0));
     }
     model.nextQuestion();
   }
   view.initButtons();
   
}