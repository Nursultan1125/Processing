ArrayList<Boll> bolls = new ArrayList<Boll>();

void setup(){
  size(600, 600);
}


void draw(){
  background(0, 0, 51);
  for(Boll boll: bolls){
    boll.show();
    boll.update();
  }
}

void mousePressed(){
  bolls.add(new Boll(mouseX, mouseY));
}