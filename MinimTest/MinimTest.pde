import ddf.minim.*;
Minim minim;
AudioPlayer audio;
Button btn;

void setup() {
  size(600, 300);
  minim = new Minim(this);
  btn = new Button("Pause");
  audio = minim.loadFile("mel/otvet.mp3");
  audio.loop();
  btn.setY(250);
}


void draw() {
  background(0,0,51);
  stroke(255);
  strokeWeight(5);
  line(0, height/2, map(audio.position(),0,audio.length(),0, width), height/2);
  btn.show();
}

void mouseReleased() {
  if(btn.isPressed())
    audio.pause();
  
}