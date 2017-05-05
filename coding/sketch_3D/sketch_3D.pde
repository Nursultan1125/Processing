float angle = 0.0;



void setup()
{
  size(640,480,OPENGL);
}


void draw()
{
   /*background(0);
  stroke(#EA0707);
  translate(680/2,480/2);
  rotateX(radians(angle));
  rotateY(radians(angle));
  fill(0,255,0);
  box(100);*/
  
  pushMatrix();
translate( width * 0.7, height * 0.3 );
rotateY( radians(angle) );
fill( 255, 0, 0 );
sphereDetail( 30 );
sphere( 5 );
popMatrix();
 
  
  
  angle +=0.5;
  
}