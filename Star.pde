class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myColor, mySize;
  public Star()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color(253, 255, 107);
    mySize = (int)(Math.random()*5);
  }
  public void show()
  {
    noStroke();
    fill(myColor);
    ellipse ((float)myX, (float)myY, (float)mySize, (float)mySize);
  }
  
}
