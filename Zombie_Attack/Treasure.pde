class Treasure
{
  float size = 20;
  float halfSize = size/2;
  PVector tPosition;

  Treasure(float x, float y)
  {
    tPosition = new PVector(x, y);
  }

  void display()
  {
    pushMatrix();
    noStroke();

    translate(tPosition.x, tPosition.y);
    fill(247, 219, 77);
    rectMode(CENTER);

    rect(0, 0, size, size);


    popMatrix();
  }
  
  void reset()
  {
   tPosition.x = random(25, width - 25);
   tPosition.y = random(25, height - 25); 

 
  }

  void update()
  {
  
    if(distance(player.pos.x, player.pos.y, tPosition.x, tPosition.y) < player.w) 
    {
     reset(); 
     score ++;
     player.speed += 0.1;
     if( threshold > 5)
     {
     threshold -= 4;
     }
     
     
    }
  
  }
}
