 Button icon;
int x = 0;
int y = 0;
void setup(){
  size(600, 600);
  icon = new Button();
  icon.setWidth(50);
  icon.setHeight(50);
  icon.setIcon("img/love.png");
  
  
}


void draw(){
  background(0, 0, 51);
  icon.show();
  icon.setX(x);
  icon.setY(y);
}


void keyPressed(){
  if(key == 'd'){
    x +=50;
  }
  if(key == 'a'){
    x-=50;
  }
  if(key == 'w'){
    y -= 50;
  }
  if(key == 's'){
    y += 50;
  }
}