Button akyl;

void setup(){
  size(600, 600);
  akyl = new Button("Нажми Меня");
  akyl.setIcon("heart.png");
  akyl.setX(100);
  akyl.setY(100);
  akyl.setWidth(50);
  akyl.setHeight(50);
  
}
int a = 0;

void draw(){
  background(0, 0, 51);
  if(akyl.isRange()){
    akyl.setX(random(600));
    akyl.setY(random(600));
  }
  if(akyl.isPressed()){
    a = a + 1;
    akyl.setText("Нажми Меня" + " " + a);
  }
  akyl.show();
}