import ddf.minim.*;

Minim minim;
AudioPlayer player;

boolean reg = false;

void setup()
{
  size(600,300);
  minim = new Minim(this);
  player = minim.loadFile("../mel/otvet.mp3");
  player.loop();
  
  
  
}



void draw()
{
  background(0,0,51);
  stroke(255);
  strokeWeight(5);
  line(0, height/2, map(player.position(),0,player.length(),0, width), height/2);
}

void mousePressed()
{
  if(reg == false)
  {
    player.pause();
  }else{
    
    player.play();
  }
  reg = !reg;
}