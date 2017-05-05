class LineAction
{
  ArrayList<Button> acts = new ArrayList<Button>();
  color bgColor;
  color strokeClr;
  float x;
  float y;
  float rectScl;
  float strW;
  float widthRect;
  boolean hideBool;
  
  LineAction(){
    x = 0;
    y = 0;
    strokeClr = color(0);
    strW = 1;
    widthRect = 120;
    hideBool = false;
  }
  
  void addAction(Button btn){
    btn.setStrokeColor(btn.getBackgroundColor());
    btn.setWidth(widthRect);
    acts.add(btn);
    
  }
  
  void show(){
    if(!hideBool){
      if(acts != null && acts.size() != 0){
        stroke(strokeClr);
        strokeWeight(strW);      
        rect(x, y, acts.get(0).getWidth(),acts.size() * acts.get(0).getHeight());
        int i = 0;
        for(Button btn: acts){
          btn.setX(x);
          btn.setY(y + i * btn.getHeight());
          btn.show();
          i++;
        }
      }
    }
  }
  Button getActionIsRange(){
    for(Button act: acts){
      if(act.isRange()){
        return act;
      }
    }
    return null;
  }
  boolean isRange(){
    if(getActionIsRange() != null){
      return true;
    }else{
      return false;
    }
  }
  void hide(boolean b){
    hideBool = b;
  }
     float getX()
   {
      return x;
   }
   float getY()
   {
      return y;
   }
    
    void setX(float _x)
    {
      x = _x;
    }
    
    void setY(float _y)
    {
      y = _y;
    }
}