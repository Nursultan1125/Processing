Tank tank;

void setup(){
  size(600, 600);
  tank = new Tank();
}



void draw(){
  background(0, 0, 51);
  tank.show();
  //tank.forward();
  //tank.backward();
  
}

void keyPressed(){
  if(key == 'w' || key == 'W'){
    tank.forward();
  }
  if(key == 's' || key == 'S'){
    tank.backward();
  }if(key == 'a' || key == 'A'){
    tank.left();
  }if(key == 'd' || key == 'D'){
    tank.right();
  }if(key == '\n'|| key == ' '){
    tank.attack();
  }
  
  
}