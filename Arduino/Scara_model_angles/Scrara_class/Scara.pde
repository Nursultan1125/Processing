class Scara{
  float x;
  float y;
  float L1;
  float L2;
  
  color clr;
  
  Scara(){
    clr = color(255);
    this.L1 = 300;
    this.L2 = 200;
    this.x = 0;
    this.y = 0;
    clr= color(255);
    
  }
  
  Scara(float L1, float L2){
    clr = color(255);
    this.L1 = L1;
    this.L2 = L2;
    this.x = 0;
    this.y = 0;
    
  }
  
  void show(){
     float angle = Q1();
     float angle2 = Q2();
     translate(20, 25); // Возврат к начальной позиции
     rotate(angle);
     strokeWeight(12);
     stroke(clr);
     line(0, 0, L1, 0);
     translate(L1, 0); // Передвижение к следующему соединению
     rotate(angle2);
     strokeWeight(6);
     stroke(clr);
     line(0, 0, L2, 0);
  }
  
  void setXY(float x , float y){
    this.x = x;
    this.y = y;
  }
  
  float Q1(){
    float B = sqrt(x*x + y*y);
    float q1 = acos(x/B);
    float sumq = L1*L1 - L2*L2 + B*B;
    float q2 = acos((sumq/(2* B * L1)));
    float Q1 = q1 - q2;  
    return Q1;
  }
  
  float Q2(){
    float B = sqrt(x*x + y*y);    
    float sumq = L1*L1 + L2*L2 - B*B; 
    float Q2 = PI - acos(sumq/(2 * L1 * L2) );
    return Q2; 
  }
}