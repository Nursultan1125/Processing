
class LabelDigit extends Label{
  Button up;
  Button down;
  float value;
  float step;
  float MAXVALUE;
  float MINVALUE;
  
  LabelDigit(){
    super("1.00");
    value = 1.0;
    up = new Button();
    down = new Button();
    up.setWidth(15);
    down.setWidth(15);
    up.setHeight(15);
    down.setHeight(15);
    up.setX(super.getX() + super.rw);
    up.setY(super.getY());
    down.setX(super.getX()+ super.rw);
    down.setY(super.getY() + super.rh / 2 );
    up.setIcon("icons/up.png");
    down.setIcon("icons/down.png");
    step = 1.0;
    MAXVALUE = 10.0;
    MINVALUE = 1.0;
    
  }
  
  void setStep(float s){
    
     step = s;
  }
  
  float getStep(){
    return step;
  }
  
  void setX(float x){
    this.x = x;
    up.setX(super.getX() + super.rw);   
    down.setX(super.getX()+ super.rw);
  }
  void setY(float y){
    this.y = y;    
    up.setY(super.getY());
    down.setY(super.getY() + super.rh / 2 );
  }
  
  
  void show(){
    super.show();
    up.show();
    down.show();
    super.setText(value + "0");
    //println(value);
    
  }
  
  void setValue(float v){
    value = v;
  }
  
  float getValue(){
    return value;
  }
  void digit(){
    
    if(up.isPressed()){
      if(MAXVALUE > value)
        value += step;
    }
    if(down.isPressed()){
      if(MINVALUE < value) 
        value -= step;
    }
  }
  
}