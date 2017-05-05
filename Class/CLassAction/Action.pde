class Action extends Button
{
  LineAction line;
  boolean isAction;
  float textSize;
  Action(){
    super();
    super.setRectangle(0);
    super.setScl(0);
    super.setWidth(100);
    isAction = false;
    textSize = 14;
    line = new LineAction();
    line.setX(super.getX() + super.getWidth() + super.getStrokeWeigth());
    line.setY(super.getY());
  }
  Action(String str){
    super(str);
    super.setRectangle(0);
    super.setScl(0);
    super.setWidth(100);
    isAction = false;
    textSize = 14;
    line = new LineAction();
    line.setX(super.getX() + super.getWidth() + super.getStrokeWeigth());
    line.setY(super.getY());
  }
  
  void addAction(Button a){
    isAction = true;
    line.addAction(a);
    
  }
  
  void addAction(LineAction l){
    for(Button b: l.acts){
      addAction(b);
    }
  }
  
  void show(){
    super.show();
    if(isAction){
      textSize(textSize);
      text(">",super.getX() + super.getWidth() - textSize, super.getY() + super.getHeight()*0.7);
    }
    line.hide(!(super.isRange()||line.isRange()));
    line.show();
    
  }
}