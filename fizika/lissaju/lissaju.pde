ArrayList<GPoint> points = new ArrayList<GPoint>();
float t;
float radiuse = 100;
float w1 = 1, w2 = 1, fi = 0;
Button start;
Button stop;
boolean stratStitch = false;

LabelDigit w1lbl;
LabelDigit w2lbl;
LabelDigit filbl;

void setup(){
  size(600, 600);
  //points.add( new GPoint(0, 0));
  start = new Button("  START");
  stop = new Button("  STOP");
  start.setWidth(80);
  start.setHeight(30);
  start.setX(50);
  start.setY(500);
  stop.setWidth(80);
  stop.setHeight(30);
  stop.setX(50);
  stop.setY(540);
  
  
  w1lbl = new LabelDigit();
  w2lbl = new LabelDigit();
  filbl = new LabelDigit();
  
  w1lbl.setX(200);
  w1lbl.setY(500);
  w2lbl.setX(200);
  w2lbl.setY(540);
  filbl.value = 0;
  filbl.MINVALUE = 0.0;
  filbl.MAXVALUE = 2 * PI;
  filbl.step = 0.01;
  filbl.setX(350);
  filbl.setY(500);
  
}



void draw(){
  background(0, 0, 51);
  float x = radiuse * cos(w1 * t + fi);
  float y = radiuse * sin(w2 * t );
  noFill();
  stroke(255, 0, 0);
  strokeWeight(5);
  rect(0, 0, width, height * 0.8);
  fill(0, 255, 0);
  textSize(20);
  text("W1= ", w1lbl.getX() - 50, w1lbl.getY(), 100, 30);
  text("W2= ", w2lbl.getX() - 50, w2lbl.getY(), 100, 30);
  text("FI =", filbl.getX() - 40, filbl.getY(), 100, 30);
  if(stratStitch){
    points.add(new GPoint(x, y));
    for(GPoint point: points){
      fill(0, 255, 0);
      point.show();
    }
  }
  w1lbl.show();
  w2lbl.show();
  filbl.show();
  start.show();
  stop.show();
  t += 0.1;
  if(points.size() >= 1000){
    points.remove(0);
  }
}

void mouseReleased(){
  if(start.isPressed()){
    w1 = w1lbl.getValue();
    w2 = w2lbl.getValue();
    fi = filbl.getValue();
    stratStitch = true;
  }else if (stop.isPressed()){
    stratStitch = false;
    points = new ArrayList<GPoint>();
  }
  w1lbl.digit();
  w2lbl.digit();
  filbl.digit();
}