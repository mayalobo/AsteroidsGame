Spaceship maya = new Spaceship();
Star [] sky = new Star[200];

public void setup() 
{
  size(500, 500);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
  
}
public void draw() 
{
  background(0);
  for (int i = 0; i <sky.length; i++)
  {
    sky[i].show();
  }
  maya.show();
  maya.move();
}

public void keyPressed()
{
  if (key == ' ')
  {
    maya.hyperspace();
  }
  if(keyCode == LEFT)
  {
    maya.turn(-5);
  }
  if(keyCode == RIGHT)
  {
    maya.turn(5);
  }
  if(keyCode == UP)
  {
    maya.accelerate(0.3);
  }
  
}
