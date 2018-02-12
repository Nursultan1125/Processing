class Turtle{
  float x;
  float y;
  
  Scara scara;
  
  Turtle( Scara scara){
    this.scara = scara;
    this.x = width/2;
  }
  void forward(int pix){
    for(int i = 0; i < pix; i++){
      scara.setXY(i, y);;
    }
  }
  
  
}