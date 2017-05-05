import processing.serial.*;
Serial port;

float angleX,angleY,angleZ;


void setup()
{
  size(600,600,P3D);
  port = new Serial(this,"COM3",9600);
  port.bufferUntil('\n');
  
}



void draw()
{
  background(0);
  stroke(255);
  fill(0,255,0);
  translate(width/2,height/2);
  rotateX(-angleX);
  rotateY(angleZ);
  rotateZ(angleY);
  box(100);
  
}

void serialEvent(Serial port)
{
  String str = port.readStringUntil('\n');
  
  if(str!=null)
  {
    
  int index1 = str.indexOf(",");
  int index2 = str.indexOf("*");
  angleX = float(str.substring(0,index1));
  angleY = float(str.substring(index1 + 1,index2));
  angleZ = float(str.substring(index2 + 1,str.length()));
  }
  
}