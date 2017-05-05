class Mario{
  PImage image;
  PImage image1;
  PImage  c;
  PImage  c1;
  PImage cValue;
  int xIm;
  float x;
  float y;
  
  float dy;
  float ddy;
  
  float frame;
  boolean is_ground;
  
  Mario(){
    xIm = 79;
    y = 400;
    image = loadImage("Mario_tileset.png");
    image1 = loadImage("Mario_tileset1.png");
    
    //imageBackground.set(25,20,c);
    c= image.get(xIm+int(frame)*30,144,18,16);
    c1= image1.get(162,144,18,16);
    cValue = c;
    dy=0;
    ddy =0.3;
    is_ground = true;
    
  }
  
  void move(float speedX,float speedY)
  {
   if(speedX >=0)
   {
    image(c,x+=speedX,y+=speedY,50,60);
   }
   else
   {
     image(c1,x+=speedX,y+=speedY,50,60);
   }
  }
  
  void show()
  {
    c= image.get(xIm+int(frame)*30,144,18,16);
    c1= image1.get(162-int(frame)*30,144,18,16);
    image(cValue,x,y,50,60);
  
  
    
  }
  boolean isContactCard(Rect rect_card)
  {
    
    
    return false;
  }
  
  void update()
  {if(keyPressed)
  {
    if(keyCode == RIGHT) 
    {
      if(is_ground){
        cValue = m.c;
        frame+=0.1;
        //println(frame,time/1000);
        if(m.frame >5) m.frame -=5;
        m.move(3,0);
      }else
      {
        cValue = m.c;
        frame = 3;
        move(4,0);
      }
      
    }
    if(keyCode == LEFT) 
    {
      if(is_ground)
      {
        cValue = c1;
        frame+=0.1;
        //println(frame,time/1000);
        if(frame >5) frame -=5;
        m.move(-3,0);
      }else{
        cValue = c1;
        frame = 3;
        move(-4,0);
      }
      
    }
    if(keyCode == UP){
      if(m.is_ground)
      {
        is_ground = false;
        dy = - 10;
      }
    }
  }
    float ground = 400;
    if(!is_ground)
    { 
      y += dy;
      dy += ddy;
    }
    else
    {
      ground = y;
    }
    if(y >= ground)
    {
      is_ground = true;
    }
  
  }
}