

LabelDigit lbl;

void setup(){
  size(600, 500);
  lbl = new LabelDigit();
  lbl.setStep(1);
  lbl.MAXVALUE = 10;
  lbl.MINVALUE = 0;
}


void draw(){
  background(0, 0, 51);
  lbl.show();
  
}

void mouseReleased(){
  lbl.digit();
}