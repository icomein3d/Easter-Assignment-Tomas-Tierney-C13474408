class Enemy
{

  float w;
  PVector pos;
  float speed;
  PVector velocity;
  PVector acceleration;
  float topSpeed = 2.5;
  PVector dir;
  color red;

  Enemy(float x, float y, float w, float speed)
  {

    pos = new PVector(x, y);
    this.w = w;
    this.speed = speed;
     velocity = new PVector(0,0);
  }
  
  Enemy()
  {
   
   pos = new PVector(random(0, width), random(0, height));
   w = 20;
   speed = random(1, 2.5);
   velocity = new PVector(0,0);
   red = color(200, 0, 0);
   

  }

  void display()
  {

    pushMatrix();
    translate(pos.x, pos.y);
    noStroke();
    fill(red);
    rectMode(CENTER);



    rect(0, 0, w, w);

    popMatrix();
  }

  void update()
  {

    dir = PVector.sub(player.pos, pos);
    dir.normalize();
    dir.mult(speed);    
    acceleration = dir;
    
    println(dir);

    velocity.add(acceleration);
    velocity.limit(topSpeed);
    pos.add(velocity);
    
    
    if(distance(player.pos.x, player.pos.y, pos.x, pos.y) < player.w) 
    {
     resetGame(); 
     player.speed = player.originalSpeed;
    }
  }
}

