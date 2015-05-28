void setup()
{
  size(500, 500);

  player = new Player(width /2, height / 2, 20, 3);
  treasure = new Treasure(width / 2, height / 8);
}

boolean[] keys = new boolean[526];

Player player;
Enemy enemy;
Treasure treasure;
int enemyCount;
int score;
int numEnemies = -1;
int threshold = 100;


ArrayList<Enemy> enemies = new ArrayList<Enemy>();

void draw()
{


  background(0);

  fill(255);

  textSize(30);
  text("Score: " + score, 10, 30);


  enemyCount += 1;


  if (enemyCount > threshold)
  {
    enemies.add(new Enemy());
    numEnemies ++;
    enemyCount = 0;
  }

println(threshold);


  player.display();
  player.update();

  treasure.display();
  treasure.update();

  for (int i = 0; i < enemies.size (); i ++)
  {

    enemies.get(i).display();
    enemies.get(i).update();
  }
}

void resetGame()
{
  score = 0;
  player.pos.x = width / 2; 
  player.pos.y = height / 2; 
  treasure.tPosition.x = width / 2;
  treasure.tPosition.y = height / 8;
  enemies.clear();
}


float distance(float x1, float y1, float x2, float y2)
{
  float xDist = x2 - x1;
  float yDist = y2 - y1;
  float dist = sqrt(xDist * xDist + yDist * yDist);
  return dist;
}



void keyPressed()
{
  keys[keyCode] = true;
}



void keyReleased()
{
  keys[keyCode] = false;
}

