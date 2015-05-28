class Player
{

  float w;
  PVector pos;
  float speed;
  float originalSpeed;

  Player(float x, float y, float w, float speed)
  {

    pos = new PVector(x, y);
    this.w = w;
    this.speed = speed;
    originalSpeed = speed;
  }

  void display()
  {

    pushMatrix();
    translate(pos.x, pos.y);
    rectMode(CENTER);

    fill(236,211,161);
    
    rect(0, 0, w, w);



    if (pos.x < 0)
    {
      pos.x = width;
    }

    if (pos.x > width)
    {
      pos.x = 0;
    }

    if (pos.y < 0)
    {
      pos.y = height;
    }

    if (pos.y > height)
    {
      pos.y = 0;
    }
    
        popMatrix();
  }

  void update()
  {


    if (keys['a'] || keys['A']) 
    {

      pos.x -= speed;
    }

    if (keys['d'] || keys['D']) 
    {

      pos.x += speed;
    }

    if (keys['w'] || keys['W']) 
    {

      pos.y -= speed;
    }

    if (keys['s'] || keys['S']) 
    {

      pos.y += speed;
    }
  }
}

