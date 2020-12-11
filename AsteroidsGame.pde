Spaceship maya = new Spaceship();
Star [] sky = new Star[200];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();


public void setup() 
{
  size(500, 500);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
  for (int i = 0; i < 10; i++)
  {
    rocks.add(new Asteroid());
  }
  
}
public void draw() 
{
  background(0);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i].show();
  }
  for (int i =0; i < rocks.size(); i++)
  {
    rocks.get(i).show();
    rocks.get(i).move();
    float distance = dist(maya.getXSpace(), maya.getYSpace(), rocks.get(i).getXAster(), rocks.get(i).getYAster());  
    if (distance < 20)
    {
      rocks.remove(i);
    }
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
    maya.turn(-20);
  }
  if(keyCode == RIGHT)
  {
    maya.turn(20);
  }
  if(keyCode == UP)
  {
    maya.accelerate(0.3);
  }
  
}
