class Spaceship extends Floater  
{   
  public Spaceship()
  {
    corners = 4;  //the number of corners, a triangular floater has 3   
    xCorners = new int[corners];   
    yCorners = new int[corners];   
    xCorners[0] = 16;
    yCorners[0] = 0;
    xCorners[1] = -8;
    yCorners[1] = 8;
    xCorners[2] = -4;
    yCorners[2] = 0;
    xCorners[3] = -8;
    yCorners[3] = -8;
    myColor = color(17, 134, 212);   
    myCenterX = 250;
    myCenterY = 250; //holds center coordinates   
    myXspeed = 0;
    myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = (int)(Math.random()*360); //holds current direction the ship is pointing
  }
  public void hyperspace()
  {
    myXspeed = myYspeed = 0;
    myPointDirection = (int)(Math.random()*360);
    myCenterX = myCenterY = (int)(Math.random()*500);
  }
  public double getXSpace()
  {
    return myCenterX;
  }
  public double getYSpace()
  {
    return myCenterY;
  }
  public double getXspeed()
  {
    return  myXspeed;
  }
  public double getYspeed()
  {
    return  myYspeed;
  }
  public double getPointDirection()
  {
    return  myPointDirection;
  }
}
