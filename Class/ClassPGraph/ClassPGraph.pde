
float x;
int inc = 0;
Oscillogram os;
void setup(){
  size(700,600);
  os = new Oscillogram();

}



void draw(){
  background(0, 0, 51);
  int i=0;
  for(PVector p: os.getGraph(0).vec){
    p.x = i;
    p.y  = 100*sin(i*0.05);
    i++;
  }
  os.show();


}

void mouseReleased(){
  inc++;
}