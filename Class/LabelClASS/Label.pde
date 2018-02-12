class Label{
  float x;
  float y;
  float rw;
  float rh;
  color bColor;
  color tcolor ;
  int strokeWeight;
  color stroke;
  int distBegin = 3;
  
  String text;
  int textSize;
  
  Label(){
    rw = 60;
    rh = 30;
    
    x = width / 2 - rw / 2;
    y = height /2 - rh / 2;
    bColor = color(255);
    strokeWeight = 1;
    stroke = color(0);
    text = "1111111";
    textSize = 25;
    tcolor = color(0);
  
  }
  Label(String text){
    rw = 60;
    rh = 30;
    
    x = width / 2 - rw / 2;
    y = height /2 - rh / 2;
    bColor = color(255);
    strokeWeight = 1;
    stroke = color(0);
    this.text = text;
    textSize = 25;
    tcolor = color(0);
  
  }
  
  
  void show(){
    fill(bColor);
    strokeWeight(strokeWeight);
    rect(x, y, rw, rh);
    textSize(textSize);
    fill(tcolor);
    text(text, x + distBegin, y, rw, rh);
    
    
  }
  void setText(String text){
    this.text = text;
  }
  boolean isRange()
  {
       if(mouseX > x && mouseX  < x + rw && mouseY > y 
       && mouseY < y + rh )
      {
        return true;
      }
      else
      {
         return false; 
      }
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