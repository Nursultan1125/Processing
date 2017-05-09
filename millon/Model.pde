class Model extends FileGame{
  
  int level;
  boolean mas [];
  boolean register = false;
  Timer timer;
  Model(String str){
    super(str);
    level = 0;
    super.setNumberQuestion(level);
    mas = new boolean[countQuestion()];
    timer = new Timer(1000);
    timer.startTimer();
  }
  int countQuestion(){
   int count = super.textLines.length;
   return count;
  }
  void nextQuestion(){
    setNumberQuestion(level);
    level++;
  }
  void next(Timer tmr){
    if(tmr.timeOut()){
      nextQuestion();
      register = false;
    }
  }
 void next(){
   if(register){
     next(timer);
     
   }
 }
 
int[] cont_right(){
   int[] count = new int[2];
  
   for(int i = 0; i < countQuestion(); i++){
     if(mas[i]){
       count[0] ++;
     }else{
       count[1] ++;
     }
   }
   return count;
 }
  
}