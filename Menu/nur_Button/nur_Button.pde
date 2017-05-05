LineVButton l;
Button btn1;
Menu Flag;
Menu edit;
Menu edit1;
Menu Sketch;
Menu Debug;
Menu Tools;
Menu Help;

boolean bool = false;
PImage new_i;
PImage fon;
void setup()
{
  size(600, 600);
  fon = loadImage("fon.jpg");
 
  Flag = new Menu("Flag");
  edit = new Menu("Edit");
  edit1 = new Menu("Edit");
  Sketch = new Menu("Sketch");
  Debug = new Menu("Debug");
  Tools = new Menu("Tools");
  Help = new Menu("Help");
  
  Flag.setX(0);
  Flag.setY(0); 
  Flag.setActionWidth(140);
  Flag.setActionHeight(15);
  //Flag.setButtonTextSize(15);
  Flag.line.setWidth(170);
    
  edit.setX(55);
  edit.setY(0);
  edit.setActionWidth(250);
  edit.setActionHeight(19);
  
  edit1.setX(55);
  edit1.setY(0);
  edit1.setActionWidth(250);
  edit1.setActionHeight(19);
  edit1.line.setX(0);
  edit1.line.setY(47);
  
  Sketch.setX(110);
  Sketch.setY(0);
  Sketch.setActionHeight(15);
 
  Debug.setX(165);
  Debug.setY(0);
  
  Tools.setX(220);
  Tools.setY(0);
  Tools.setActionHeight(15);
  
  Help.setX(275);
  Help.setY(0);
  Help.setActionHeight(15);
  
  Flag.addAction("KYGYZSTAN");
  Flag.addAction("KAZAKSTAN");
  Flag.addAction("OZBEKSTAN");
  Flag.addAction("RASSYI");
  Flag.addAction("AMERIKA");
  Flag.addAction("KYTAI");

  edit.addAction("  Undo addition");
  edit.addAction("  Redo", false);
  
  edit1.addAction("  ");
  edit1.addAction("  ", false);
  edit1.addAction("  Cut");
  edit1.addAction("  Copy");
  edit1.addAction("  Copy as HTVL");
  edit1.addAction("   Paste");
  edit1.addAction("  Autio Farmat");
  edit1.addAction("  Comment/Uncomment");
  edit1.addAction("  → Ihcrease Indent");
  edit1.addAction("  ");
  edit1.addAction("  ");
  edit1.addAction("  ");
  edit1.addAction("  ");
  edit1.addAction("  ");
  edit1.addAction("  ");
  edit1.addAction("  ");

  Sketch.addAction("  Run ");
  Sketch.addAction("  Presend  ");
  Sketch.addAction("  TWeak ");
  Sketch.addAction("  Stop ");
  Sketch.addAction("  Import Library... ");
  Sketch.addAction("  Shjw Sketch Folder ");
  Sketch.addAction("  Add File... ");
  
  Debug.addAction("");
  
  Tools.addAction("");
  
  Help.addAction("");
    
}


void draw()
{
  background(255);
  image(fon,0, 0, width, height);
  Flag.show();
  //edit.show();  
  //Sketch.show();
  //Debug.show();
  //Tools.show();
  //Help.show();
  if(new_i != null)
  {
    image(new_i, 300, 350, width-300,height-250); 
  }
}


void mouseReleased()
{
  Flag.register();
  edit.register();
  edit1.register();
  Sketch.register();
  Debug.register();
  Tools.register();
  Help.register();
  
  String str = Flag.getTextAction();
   if(str == "KYGYZSTAN")
   {
      new_i = loadImage(str + ".jpg");
   }
   else 
   if(str == "KAZAKSTAN")
   {
     new_i = loadImage(str + ".jpg");
   }
   else 
   if(str == "OZBEKSTAN")
   {
     new_i = loadImage("OZBEKSTAN.jpg");
   }
   else 
   if(str == "RASSYI")
   {
     new_i = loadImage("RASSYI.jpg");
   }
   else 
   if(str == "AMERIKA")
   {
     new_i = loadImage(str + ".jpg");
   }
   else 
   if(str == "KYTAI")
   {
     new_i = loadImage("KYTAI.jpg");
   }
}