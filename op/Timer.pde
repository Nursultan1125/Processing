class Timer
{
  private int ptimeMillis;
  private int timeMillis;
  private int valueStartTimer;
  private int timerInt;
  private boolean start;
  public Timer(){
    start = false;
  }
  public Timer(int intp){
    timerInt = intp;
    start = false;
  }
  public void startTimer()
  {
    start = true;
    valueStartTimer = millis();
    
  }
  public void stopTimeOut()
  {
    start = false;
  }
  
  public int valueTimer(){
    
    return millis()-valueStartTimer;
  }
  
  public void setTimeInt(int a)
  {
    timerInt = a;
    
  }
  
  public boolean timeOut()
  {
    if((millis() - valueStartTimer >= timerInt) && start)
    {
      valueStartTimer = millis();
       return true;
       
    }
    return false;
  }
  
  
}