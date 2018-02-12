PGraph graph;

float x, y = 250;

void setup(){
  size(600, 500);
  graph = new PGraph(0, height/2);
  
  
}



void draw(){
  background(0, 0, 51);
  
  graph.add(x, y);
  x++;
  y = height/2 - 100*sin(0.2*x/10);
  if(graph.vec.size() >= 500){
   graph.vec.remove(0);
   x = 0;
  }
  graph.show();
  
}