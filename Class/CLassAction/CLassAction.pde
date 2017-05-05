Button b;
Action a;
LineAction la;

void setup(){
  size(600,600);
  b = new Button("OK");
  b.setTransparency(100);
  b.setX(100);
  a = new Action("New");
  //a.addAction(new Action());
  //a.addAction(new Action());
  //a.addAction(new Action());
  //a.addAction(new Action());
  la = new LineAction();
  la.addAction(new Action("New"));
  la.addAction(new Action("Save"));
  la.addAction(new Action("Save As"));
  la.addAction(new Action("Close"));
  //la.addAction(new Action(""));
  la.hide(true);
  a.addAction(la);
  
  
  
}


void draw(){
  background(100);
  b.show();
  a.show();
  //la.show();
  
}