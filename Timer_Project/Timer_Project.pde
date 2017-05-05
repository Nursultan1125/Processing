Time t;
Timer timer;

Button btn;
Button btn1;
Button btn2;

long count;

void setup()
{
  size(600,600);
  t = new Time(0,0,0);
   timer =new Timer(1000);
  btn1 = new Button();
  btn = new Button("START");
  btn2 = new Button("PAUSE");
  btn2.setAsisX(340);
  btn1.setAsisX(270);
  btn.setAsisX(200);
  btn1.setText("STOP");
  
  
  
  
  
}



void draw()
{
  background(0,0,51);
  fill(255);
  rect(140,150,310,120);
  fill(#110FF2);
  textSize(100);
  text(t.getStringTime(),150,250);
  if(timer.timeOut()) count++;
  t.setValueSecond(count);
  btn2.show();
  btn1.show();
  btn.show();
  
}

void mouseReleased(){
    if(btn.isButton())
  {
    println(btn.getText());
    timer.startTimer();
  }
  if(btn1.isButton())  {
    println(btn1.getText());
    timer.stopTimeOut();
    count = 0;
    
  }
  if(btn2.isButton())
  {
    println(btn2.getText());
   timer.stopTimeOut();
  }
  
  
}