class Oscillogram{
  ArrayList<PGraph> graphs = new ArrayList<PGraph>();
  float x, y, wd, hd;
  Oscillogram(){
    x = width/2 - 200;
    y = height/2 - 200;
    wd = 540;
    hd = 380;
    
    graphs.add(new PGraph(x, y));
    for(int i=0; i< 550; i++){
      graphs.get(0).setColor(color(0));
      graphs.get(0).vec.add(new PVector(x, y));
    }
  }
  
  void show(){
    noFill();
    stroke(255);
    strokeWeight(2);
    rect(x, y, wd, hd);
    int i=0;
    for(PGraph g: graphs){
      for(PVector p: os.getGraph(0).vec){
        p.x +=x;
        p.y +=(y + hd/2);
        i++;
      }
      g.show();
    }
  }
  
  PGraph getGraph(int i){
    return graphs.get(i);
  }
}