class FileGame
{
  String [] textLines;
  String []currentLines;
  
  FileGame(String str)
  {
    textLines = loadStrings(str); 
  }
  
  void setNumberQuestion(int i){
    if(i < textLines.length)
      currentLines = split(textLines[i], '#');
   
  }
  
  char rightOption()
  {
    if(int(currentLines[2]) == 1)
    {
      return 'A';
    }
    if(int(currentLines[4]) == 1)
    {
      return 'B';
    }
    if(int(currentLines[6]) == 1)
    {
      return 'C';
    }
    if(int(currentLines[8]) == 1)
    {
      return 'D';
    }
    else 
    {
      return '5';
    }
  }
  
  
  String getNumberQuestion()
  {
    return currentLines[0];
  }
  
  String getQuestion()
  {  
    return currentLines[1];
  }
   String getOptionA()
  {  
    return currentLines[3];
  }
   String getOptionB()
  {  
    return currentLines[5];
  }
   String getOptionC()
  {  
    return currentLines[7];
  }
   String getOptionD()
  {  
    return currentLines[9];
  }
}