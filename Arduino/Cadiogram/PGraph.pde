class PGraph{
  ArrayList<PVector> vec = new ArrayList<PVector>();
  color colorPoint;
  float x;
  float y;
  color colorLine;
  float weightLine;
  boolean lineRegister = true;
  boolean colorPointRegist = false;
  PGraph(float x, float y){
      vec.add(new PVector(x, y));
      colorLine = color(255);
      
      weightLine = 1;
  }
  void add(PVector p){
    vec.add(p);
  }
  
  void add(float x, float y){
    vec.add(new PVector(this.x + x, this.y + y));
  }
  
  void setColor(color clr){
    colorLine = clr;
  }
  void noLine(boolean b){
    lineRegister = !b;
  }
  void show(){
    for(int i=1; i<vec.size(); i++){
      stroke(colorLine);
      strokeWeight(weightLine);
      if(lineRegister){
        line(vec.get(i).x, vec.get(i).y, vec.get(i-1).x, vec.get(i-1).y);
      }else{
        if(colorPointRegist){
          stroke(colorPoint);
        }else{
          stroke(random(255), random(255), random(255));
        }
        point(vec.get(i).x, vec.get(i).y);
      }
    }
  }
  
  void setColorPoint(color clr){
    colorPoint = clr;
    colorPointRegist = true;
  }
  
  void setWeight(float w){
    weightLine = w;
  }
  
  void delete(){
    
  }
}