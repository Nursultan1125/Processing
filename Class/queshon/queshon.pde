boolean f(String line1, String line2)
{
  boolean y = true;
  if(line1.length() != line2.length()) y = false; 
  else{
    for(int i = 0; i < line1.length(); i ++){
      char s1 = line1.charAt(i);
      char s2 = line2.charAt(i);
      if(s1 != s2){
        y = false;
        break;
      }
    }
  }
  
  return y;
}

void setup(){
  
String command = "1"; 

println(f(command, "1"));
println(command.equals("1"));
}