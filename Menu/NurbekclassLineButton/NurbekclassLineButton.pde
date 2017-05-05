

boolean bool = false;
Menu M;
Menu M1;
Menu M2;
Menu M3;
Menu M4;
Menu M5;
Menu M6;
Menu M7;

void setup()
{
  size(600, 600);


  M = new Menu("File");
  M1 = new Menu("Edit");
  M2 = new Menu("Sketch");
  M3 = new Menu("Debug");
  M4 = new Menu("Tools");
  M5 = new Menu("Help");


  M.setX(5);
  M.setY(10);
  M.addAction("Undo");
  M.addAction("Undo");
  
  M1.setX(60);
  M1.setY(10);
  M1.addAction("New");
  M1.addAction("Open",false);
  
  M2.setX(115);
  M2.setY(10);
  M2.addAction("Undo");
  M2.addAction("Undo");
  
  M3.setX(170);
  M3.setY(10);
  M3.addAction("Undo");
  M3.addAction("Undo");
  M4.setfill(false);
  
  M4.setX(225);
  M4.setY(10);
  M4.addAction("Undo");
  M4.addAction("Undo");
  M4.setStrokeW(false);
  M4.setfill(false);
  
  M5.setX(280);
  M5.setY(10);
  M5.addAction("Undo");
  M5.addAction("Undo");
  M5.setStrokeW(false);
}


void draw()
{
  background(0,0,255);
 
 
  
  M.show();
  M1.show();
  M2.show();
  M3.show();
  M4.show();
  M5.show();
  
}


void mouseReleased()
{
  M.register();
  M1.register();
  M2.register();
  M3.register();
  M4.register();
  M5.register();
  
 
 
 
}