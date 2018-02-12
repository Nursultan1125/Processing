import processing.video.*;

Capture webcam;

int numPixels;
int threshold;

int topLeftX;
int topLeftY;
int bottomRightX;
int bottomRightY;

void setup(){
  size(640, 480);
  smooth();
  println(Capture.list());
  webcam = new Capture(this, width, height, 30);  
  webcam.start();
  
  numPixels = webcam.width * webcam.height;
  threshold = 127;
  topLeftX = width;
  topLeftY = height;
  
  bottomRightX = 0;
  bottomRightY = 0;
  
}



void draw(){
  if(webcam.available()){
    webcam.read();
    image(webcam, 0, 0);
    loadPixels();
    int counter = 0;
    for(int j = 0; j < webcam.height; j++){
      for(int i = 0; i < webcam.width; i++){
        color c = webcam.pixels[counter];
        float b = brightness(c);
        if(b > threshold){
          pixels[counter] = color( 255 );
          if ( i < topLeftX ) {
          topLeftX = i;
          }
          if ( j < topLeftY ) {
          topLeftY = j;
          }
          if ( i > bottomRightX ) {
          bottomRightX = i;
          }
          if ( j > bottomRightY ) {
          bottomRightY = j;
          }
        }else{
          pixels[counter] = color(0);
        }
        counter ++;
      }
    }
    updatePixels();
    noFill();
    stroke( 255, 0, 0 );
    strokeWeight( 2 );
    rect( topLeftX, topLeftY, bottomRightX - topLeftX,
    bottomRightY - topLeftY );
    // reset tracking points
    topLeftX = width;
    topLeftY = height;
    bottomRightX = 0;
    bottomRightY = 0;
  }
  fill( 255, 0, 0 );
  noStroke();
  rect( 10, 10, 110, 20 );
  fill( 255 );
  text( "Threshold: " + threshold, 14, 24 );
 
  
}

//void captureEvent( Capture webcam )
//{
//   webcam.read();
//}

void keyPressed()
{
  if ( key == CODED ) {
    if ( keyCode == UP ) {
      threshold++;
    }
    if ( keyCode == DOWN ) {
      threshold--;
    }
  }
}