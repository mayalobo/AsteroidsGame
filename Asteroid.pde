class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid()
  {
    rotSpeed = Math.random()*2-1;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -22;
    yCorners[0] = -16;
    xCorners[1] = 14;
    yCorners[1] = -16;
    xCorners[2] = 26;
    yCorners[2] = 0;
    xCorners[3] = 12;
    yCorners[3] = 20;
    xCorners[4] = -22;
    yCorners[4] = 16;
    xCorners[5] = -10;
    yCorners[5] = 0;
    myCenterX = myCenterY = Math.random()*300+100;
    myXspeed = Math.random()*2-1;
    myYspeed = Math.random()*2-1;
    myPointDirection = Math.random()*360;
    myColor = color (255, 255, 255);
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
  public void show()
  {
    noFill();  
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
  public float getXAster()
  {
    return (float)myCenterX;
  }  
  public float getYAster()
  {
    return (float)myCenterY;
  }

}
