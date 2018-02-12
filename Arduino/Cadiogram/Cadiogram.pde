import processing.serial.*;
Serial arduino;

Button btnHeart;
Button start;
float b = 0;
float p_b;
PGraph graph;
int x = 45;
long time;
boolean swith = false;
long rezult = 0;
void setup(){
  size(820, 600);
  arduino = new Serial(this, arduino.list()[0], 9600);
  arduino.bufferUntil('\n');
  graph = new PGraph(41, 335);
  btnHeart = new Button();
  start = new Button("Старт");
  btnHeart.setIcon("img/heart.png");
  btnHeart.setWidth(70);
  btnHeart.setHeight(70);
  btnHeart.setBackgroundColor(#8B2BFA);
  btnHeart.setScl(5);
  btnHeart.setX(50);
  btnHeart.setY(50);
  start.setX(340);
  start.setY(530);
  start.setWidth(150);
  start.setHeight(50);
  start.textSize = 40;
  start.setScl(3);
  start.setTextColor(#0F0DFA);
  graph.setColor(color(255, 0, 0, 150));
  graph.setWeight(2);
  //for(int i = 45; i < 790; i +=2){
  //  graph.add(i, 335);
  //}
}


void draw(){
  background(#8B2BFA);
  fill(255);
  textSize(20);
  text("Измеритель пульса", 320, 30);
  fill(255, 0, 0);
  textSize(50);
  text(int(rezult) + " уд/мин", 150, 100);
  grid(30, 25);
  btnHeart.show();
  start.show();
 
}

void grid(int sclw, int sclh){
  stroke(#073876);
  strokeWeight(1);
  for(int i = 40; i < width-25; i+= sclw){
    line(i, 160, i, height - 91);
  }
  for(int j = 160; j < height - 80; j += sclh){
    line(40, j, width-30, j);
  }

  
  startP();
  if(start.getText().equals("Стоп")){
  if(b>100&&p_b<100){
    print("*");
    if(swith) {
      long del = millis() - time;
      rezult = 60000/del;
      println(del);
      swith = false;
    }
    time = millis();
    
  }
  p_b = b;
  swith = true;
  
  }
  

  
}


void mouseReleased(){
  if(start.isPressed()){
    if(start.getText().equals("Старт")){
      start.setText("Стоп");
    }else{
      start.setText("Старт");
    }
  }
}

void startP(){
    if(graph.vec.size() > 370){
    
    graph.vec.remove(0);
  }
  if(x > 790){
    x = 45;
  }
  if(start.getText().equals("Стоп")){
    graph.add(x, 400 - b);

    x+=2;
    

   
  }
   graph.show();
}

void serialEvent(Serial arduino)
{
   b = float(arduino.readStringUntil('\n'));
}