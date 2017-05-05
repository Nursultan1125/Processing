class Boll{
  float x, y;
  float d = 30;
  float s = 0;
  float g = 1;
  float h;
  Boll(float x_,float y_){
    x = x_;
    y = y_;
    h = y_;
  }
  void show(){
    ellipse(x,y,d,d);
  }
  void update(){
    y = y + s;
    s = s + g;
    if(y > 550){
      s = -(550 - h)*0.03;
    }
  }
}