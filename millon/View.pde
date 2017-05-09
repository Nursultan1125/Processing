
class View{  

  Button optionA;
  Button optionB;
  Button optionC;
  Button optionD;
  
  
  int rectX = 100;
  int rectY = 50;
  
  int rectW = 500;
  int rectH = 180;
  
  PImage bgnImage;
  
  boolean rezult;
  
  boolean mouseReleasedBool = false;
  
  Model file;
  String strQuestion = "";
  
  
  View(String bg, Model file){

     bgnImage = loadImage(bg); 
     this.file = file;
     initButtons();
     rezult = true;
  }
  
  void show(){
    if(rezult){
      image(bgnImage,0,0,width,height);
      strQuestion =  file.getQuestion();
      fill(#0A7CF2,100);
      rect(rectX,rectY,500,180,15);
      
      //println(eventProig.position(), eventProig.length(), answer);
      fill(#F0070B);
      textSize(20);
      text("Вопрос № " + file.getNumberQuestion(),300,80);
      fill(#56F20A);
      textSize(20);
      text(strQuestion,rectX + 50,rectY + 60,rectW-50,rectH-50);
      optionA.setText("A: " + file.getOptionA());
      optionB.setText("B: " + file.getOptionB());
      optionC.setText("C: " + file.getOptionC());
      optionD.setText("D: " + file.getOptionD());
       
      optionA.show();
      optionB.show();
      optionC.show();
      optionD.show();
    }
    else
    {
      image(bgnImage,0,0,width,height);
      fill(#0A7CF2,100);
      rect(rectX,rectY,500,180,15);
      fill(#56F20A);
      textSize(20);
      text("Результат: " + file.cont_right()[0] + " правильных из " + file.countQuestion(),rectX + 50,rectY + 60,rectW-50,rectH-50);
    }

  }
  
  void initButtons()
  {
    optionA = new Button();
    optionB = new Button();
    optionC = new Button();
    optionD = new Button();
    
    optionA.setWidth(280);
    optionA.setHeight(40);
    optionB.setWidth(optionA.getWidth());
    optionB.setHeight(optionA.getHeight());
    optionC.setWidth(optionA.getWidth());
    optionC.setHeight(optionA.getHeight());
    optionD.setWidth(optionA.getWidth());
    optionD.setHeight(optionA.getHeight());
    
    optionA.setX(50);
    optionA.setY(250);
    optionB.setX(optionA.getX() + 340);
    optionB.setY(optionA.getY());
    optionC.setX(optionA.getX());
    optionC.setY(optionA.getY() + 50);
    optionD.setX(optionA.getX() + 340);
    optionD.setY(optionA.getY() + 50);
    
    optionA.setRectangle(15);
    optionB.setRectangle(optionA.getRectangle());
    optionC.setRectangle(optionA.getRectangle());
    optionD.setRectangle(optionA.getRectangle());
    
    optionA.setTransparency(100);
    optionB.setTransparency(100);
    optionC.setTransparency(100);
    optionD.setTransparency(100);
    
    optionA.setTransparencyMouse(100);
    optionB.setTransparencyMouse(100);
    optionC.setTransparencyMouse(100);
    optionD.setTransparencyMouse(100);
    
    optionA.setTextColor(#0E057C);
    optionB.setTextColor(#0E057C);
    optionC.setTextColor(#0E057C);
    optionD.setTextColor(#0E057C);
  }
  
  Button isEvent(){
    Button btn = new Button("*");
    if(optionA.isPressed()) btn = optionA;
    if(optionB.isPressed()) btn = optionB;
    if(optionC.isPressed()) btn = optionC;
    if(optionD.isPressed()) btn = optionD;
    btn.setText(btn.getText().split(" ")[0]);
    
    return btn;
  }
  void buttonsEnable(boolean b){
    optionA.setEnable(b);
    optionB.setEnable(b);
    optionC.setEnable(b);
    optionD.setEnable(b);
  }
  
}