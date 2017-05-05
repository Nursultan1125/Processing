class Time
{
  int h;
  int minut;
  int second;
  String formatTime;
  
  Time()
  {
    
    h =0;
    minut =0;
    second = 0;
    formatTime = "hh:mm:ss";
  }
  
  Time(int h,int minut, int second)
  {
     if(minut < 24)
    {
      this.h = h;
    }
    else
    {
      this.h = 0;
    }
    
    if(minut < 60)
    {
      this.minut = minut;
    }
    else
    {
      this.minut = 0;
    }
    if(second < 60)
    {
      this.second = second;
    }
    else
    {
      this.second = 0;
    }
    formatTime = "hh:mm:ss";
    
  }
  void setValueSecond(long value)
  {
    this.second =(int) value%60;
    this.minut = (int) value%3600/60;
    this.h = (int) value/3600;
    
  }
  
  String getStringTime()
  {
    String str = ":";
    if(formatTime == "hh:mm:ss")
    {
      str = ":";
    }
    else if(formatTime == "hh/mm/ss")
    {
      str = "/";
    }
    else if(formatTime == "hh--mm--ss")
    {
      str = "--";
    }
     else if(formatTime == "hh**mm**ss")
    {
      str = "**";
    }
   
    
    
    return stringTime(h) + str + stringTime(minut) + str +stringTime(second);
  }
  
  private String stringTime(int n)
  {
    if(n <=9)
    {
      return "0" + n;
    }
    else
    {
      return "" + n;
    }
    
  }
  
  void setFormat(String str)
  {
    
      formatTime = str;
    
  }
  
  
  
  
  
  
  
  
  
}