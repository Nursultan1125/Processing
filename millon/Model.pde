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
    timer = new Timer(5000);
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
      view.buttonsEnable(true);
    }
  }
 void next(){
   if(register){
     next(timer);
     
   }
 }
  
}