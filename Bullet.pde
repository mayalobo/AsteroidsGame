class Bullet extends Floater
{
  public Bullet(Spaceship theShip)
  {
    myCenterX = theShip.getXSpace();
    myCenterY = theShip.getYSpace();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(1);
  }
  public void show()
  {
    noStroke();
    fill(255,255,255);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  
  public void move()
  {
    myCenterX += myXspeed;    
    myCenterY += myYspeed;    
  }
  
  public double getXBullet()
  {
    return myCenterX;
  }
  
  public double getYBullet()
  {
    return myCenterY;
  }
}
