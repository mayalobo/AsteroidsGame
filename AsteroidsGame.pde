Spaceship maya = new Spaceship();
Star [] sky = new Star[200];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> circle = new ArrayList <Bullet>();

public void setup() 
{
  size(500, 500);
  
  for (int i = 0; i < sky.length; i++) //inserts a star into each "flat"
  {
    sky[i] = new Star();
  }
  
  for (int i = 0; i < 10; i++) //adds 10 new Asteroids to the array list
  {
    rocks.add(new Asteroid());
  }  
}
public void draw() 
{
  
  background(0);
  
  for (int i = 0; i < sky.length; i++) //shows each star
  {
    sky[i].show();
  }
  
  /*for (int i =0; i < rocks.size(); i++) //shows and moves asteroids. destroys them if they get close to spaceship
  {
    rocks.get(i).show();
    rocks.get(i).move();
    float distance = dist((float)maya.getXSpace(), (float)maya.getYSpace(), (float)rocks.get(i).getXAster(), (float)rocks.get(i).getYAster());  
    if (distance < 20)
    {
      rocks.remove(i);
    }
  }

  for (int i = 0; i < circle.size(); i++) //shows and moves bullets 
  {
    circle.get(i).move();
    circle.get(i).show();
  }
  */
  
  for (int i =0; i < rocks.size(); i++)
  {
    rocks.get(i).show();
    rocks.get(i).move();
    for (int j = 0; j < circle.size(); j++)
    {
      float distance = dist((float)circle.get(j).getXBullet(), (float)circle.get(j).getYBullet(), (float)rocks.get(i).getXAster(), (float)rocks.get(i).getYAster()); 
      if (distance < 20)
      {
        circle.remove(j);
        rocks.remove(i);
        break;
      }
      circle.get(j).show();
      circle.get(j).move();
    }

  }
  maya.show(); //shows and move spaceship 
  maya.move();
  
}

public void keyPressed()
{
  if (key == 'c')
  {
    maya.hyperspace();
  }
  if (key == ' ')
  {
    circle.add(new Bullet(maya));
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
