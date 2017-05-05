import ddf.minim.*;

Minim minim;
AudioPlayer player;
AudioPlayer eventClick;
AudioPlayer eventVyigrysh;
AudioPlayer eventProig;


Button optionA;
Button optionB;
Button optionC;
Button optionD;


Timer t;

int level = 0;
FileGame fileGame;


int rectX = 100;
int rectY = 50;

int rectW = 500;
int rectH = 180;

PImage bgnImage;

boolean mouseReleasedBool = false;


String strQuestion = "";

char answer = '0';


void setup()
{
  size(700,400);
  fileGame = new FileGame("text.csv");
  fileGame.setNumberQuestion(0);
  bgnImage = loadImage("bgnImage.jpg");
  t = new Timer(3000);
  
  initButtons();
  minim = new Minim(this);
  player = minim.loadFile("mel/vybor.mp3");
  eventClick = minim.loadFile("mel/otvet.mp3");
  eventVyigrysh = minim.loadFile("mel/vyigrysh.mp3");
  eventProig = minim.loadFile("mel/proig.mp3");
  
  player.loop();
  eventClick.loop();
  eventClick.pause();
  
  
  
}


void draw()
{
  background(0);
  image(bgnImage,0,0,width,height);
  strQuestion =  fileGame.getQuestion();
  fill(#0A7CF2,100);
  rect(rectX,rectY,500,180,15);
  if(eventClick.position() > (eventClick.length()-100))
  {
    print("###");
    player.play();   
    if(fileGame.rightOption() == answer)
    {
      eventVyigrysh.play();
      Button b = anButton(answer);
      b.setBackgroundColor(color(0, 255, 0));
      eventClick.rewind();
      
      if(eventVyigrysh.position() > eventClick.length() - 100){    
        fileGame.setNumberQuestion(1);
        b.setBackgroundColor(color(255));
        answer = '0';
      }
    }
    else{
       eventProig.play();
       eventClick.rewind();
       eventClick.pause();
       if(answer != '0'){
         Button b = anButton(answer);
         
         Button b1 = anButton(fileGame.rightOption());
         b1.setBackgroundColor(color(0, 255, 0));
         b.setBackgroundColor(color(255, 0, 0));
         b.setBackgroundColor(color(255, 0, 0));
       
         if(eventProig.position() > eventProig.length() - 300)
         {
           fileGame.setNumberQuestion(1);
           b.setBackgroundColor(color(255));
           b1.setBackgroundColor(color(255));
           answer = '0';
           
         }
         print("****");
       }
      
    }
    
  }
  
  //println(eventProig.position(), eventProig.length(), answer);
  fill(#F0070B);
  textSize(20);
  text("Вопрос № " + fileGame.getNumberQuestion(),300,80);
  fill(#56F20A);
  textSize(20);
  text(strQuestion,rectX + 50,rectY + 60,rectW-50,rectH-50);
  optionA.setText("A: " + fileGame.getOptionA());
  optionB.setText("B: " + fileGame.getOptionB());
  optionC.setText("C: " + fileGame.getOptionC());
  optionD.setText("D: " + fileGame.getOptionD());
   
  optionA.show();
  optionB.show();
  optionC.show();
  optionD.show();
  

  
}


void mouseReleased()
{
  
  if(optionA.isPressed())
  {
    optionA.setBackgroundColor(#FA9128);
    answer = 'A';
    eventClick.play();
    player.pause();
  }
  if(optionB.isPressed())
  {
    optionB.setBackgroundColor(#FA9128);
    answer = 'B';
    eventClick.play();
    player.pause();
  }
  if(optionC.isPressed())
  {
    optionC.setBackgroundColor(#FA9128);
    answer = 'C';
   eventClick.play();
   player.pause();
  }
  if(optionD.isPressed())
  {
    optionD.setBackgroundColor(#FA9128);
    answer = 'D';   
    eventClick.play();
    player.pause();
    
  }
   

}


Button anButton(char an){
  switch(an){
    case 'A': return optionA;
    case 'B': return optionB;
    case 'C': return optionC;
    case 'D': return optionD;
    default: return null;
    
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