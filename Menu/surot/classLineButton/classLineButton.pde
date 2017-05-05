PImage fon;
boolean bool = false;
Menu m;
Menu edit;
Menu Sketch;
Menu Debug;
Menu Tools;
Menu Help;

PImage new_i;

void setup()
{
  size(600, 600);
  fon = loadImage("10.jpg");
  m      = new Menu("File");
  edit   = new Menu("Edit");
  Sketch = new Menu("Sketch");
  Debug  = new Menu("Debug");
  Tools  = new Menu("Tools");
  Help   = new Menu("Help");
  

 
  m.setX(0);
  m.setY(0);
  m.setActionWidth(170);
  m.setActionHeight(17);
  
  
 
  edit.setX( 55);
  edit.setY(0);  
  edit.setActionWidth(120);
  edit.setActionHeight(17);
  
  
  Sketch.setX(110);
  Sketch.setY(0);
  Sketch.setActionWidth(80);
  Sketch.setActionHeight(17);

  
  
  Debug.setX(165);
  Debug.setY(0);
  Debug.setActionHeight(17);
  Debug.setActionWidth(150);

  Tools.setActionHeight(17);
  Tools.setActionWidth(130);
  Tools.setX(220);
  Tools.setY(0);


  
  
  Help.setActionHeight(17);
  Help.setActionWidth(205);
  Help.setX(275);
  Help.setY(0);

  
  //**************************************************//
  m.addAction("New");
  m.addAction("Open");
  m.addAction("Open Recent");
  m.addAction("Sketchbook...");
  m.addAction("Examples...");
  m.addAction("Close");
  m.addAction("Save");
  m.addAction("Save As...");
  m.addAction("Export Application...");
 
  
  edit.addAction("Undo addition");
  edit.addAction("Redo",false);
  
  Sketch.addAction("Run");
  Sketch.addAction("Present");
  Sketch.addAction("Tweak");
  Sketch.addAction("Stop");
  
  Debug.addAction("Enable Debugger");
  
  Tools.addAction("Create Font...");
  Tools.addAction("Color Selector...");
  Tools.addAction("Archive Sketch");
  
  Help.addAction("About Processing");
  Help.addAction("Welcome to Processing 3");
  Help.addAction("Environment");
  Help.addAction("Reference");
  Help.addAction("Find in Reference");
}


void draw()
{
  background(255);
  image(fon,0,0,width,height);
  m.show();
  edit.show();
  Sketch.show();
  Debug.show();
  Tools.show();
  Help.show();
  if(new_i != null){
    image(new_i, 50,50,500,500); 
  }
  
}


void mouseReleased()
{
  m.register();
  edit.register();
  Sketch.register();
  Debug.register();
  Tools.register();
  Help.register();
  
   String str = m.getTextAction();
   if(str == "New")
   {
      new_i = loadImage(str + ".jpg");
   }else if(str == "Open")
   {
     new_i = loadImage("01.jpg");
   }
      
    else if(str == "Open Recent")
   {
     new_i = loadImage("02.jpg");
   }
    else if(str == "Sketchbook...")
   {
     new_i = loadImage("03.jpg");
   }
   
     else if(str == "Examples...")
   {
     new_i = loadImage("04.jpg");
   }
   
   else if(str == "Close")
   {
     new_i = loadImage("05.jpg");
   }
   
     else if(str == "Save")
   {
     new_i = loadImage("06.jpg");
   }
   
   else if(str == "Save As...")
   {
     new_i = loadImage("07.jpg");
   }
   
   
   else if(str == "Export Application...")
   {
     new_i = loadImage("08.jpg");
   }
   }