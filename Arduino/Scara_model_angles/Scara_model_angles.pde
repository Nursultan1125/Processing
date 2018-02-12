

float x, y;
float L1 = 300;
float L2 = 200;



void setup(){
  size(600, 600);
  
}

float angle = radians(45);
float angle2 = PI/2;
float ang = 0;
void draw(){ 
  x = width/3 -   100 * sin(ang);
  y = height/2 - 150 * cos(ang);
 
  ang +=0.1;
  angle = Q1();
  angle2 = Q2();
  background(204);
  translate(20, 25); // Возврат к начальной позиции
  rotate(angle);
  strokeWeight(12);
  line(0, 0, L1, 0);
  translate(L1, 0); // Передвижение к следующему соединению
  rotate(angle2);
  strokeWeight(6);
  line(0, 0, L2, 0);
  println(180 * angle / PI, 180 * angle2 / PI);
 
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