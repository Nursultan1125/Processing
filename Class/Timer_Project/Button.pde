class Button
{
  private int sizeX;
  private int sizeY;
  private int x;
  private int y;
  private PFont textFont1;
  private String str;
  private color mouseColor;
  private boolean buttonIs;

  public Button()
  {
    textFont1 = loadFont("ArialUnicodeMS-14.vlw");
    sizeX = 50;
    sizeY = 25;
    x = width/2;
    y = height/2;

    str = "";
    mouseColor = #BFFFEB;
  }

  public Button(String st)
  {
    textFont1 = loadFont("ArialUnicodeMS-14.vlw");
    sizeX = 50;
    sizeY = 25;
    x = width/2;
    y = height/2;

    this.str =st;
    mouseColor = #BFFFEB;
  }
  public void setAsisX(int x)
  {
    this.x = x;
  }
  public void setAsisY(int y)
  {
    this.y = y;
  }
  public void setSizeX(int x)
  {
    this.sizeX = x;
  }
  public void setSizeY(int y)
  {
    this.sizeY = y;
  }
  public void setText(String st)
  {
    this.str = st;
  }

  public String getText()
  {
    return str;
  }

  public boolean isButton()
  {
    return buttonIs;
  }
  
  public boolean isRange()
  {
    if (mouseX-x>0&&mouseX-x-sizeX<0&&mouseY-y>0&&mouseY-y-sizeY<0)
    {
      return true;
      
    }
    else
    {
      
      return false;
    }
    
  }

  public void show()
  {
    int _x=0;
    int _y=0;
    if (mouseX-x>0&&mouseX-x-sizeX<0&&mouseY-y>0&&mouseY-y-sizeY<0)
    {
      fill(mouseColor);
      if (mousePressed)
      {
        _x=5;
        _y = 5;
        buttonIs = true;
      } else 
      {
        buttonIs = false;
      }
    } else fill(255);
    rect(x+_x/2, y+_y/2, sizeX-_x, sizeY-_y, 5 );
    fill(0);
    textFont(textFont1, 14);
    text(str, x+5, y+sizeY/2+5);
  }
}