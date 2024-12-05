//Space Invaders

int score, lives; //game values

//governs number of aliens spawned, in a grid
int NUM_ROWS = 3; 
int NUM_COLS = 5;

//governs aliens statistics
int AlienSize = 40;
color alienColor = color(150,0,255);

//governs player projectile stats
int projectileSize = 20;
int projectileSpeed = 10;
color projectileColor = color(255);

//shipType variables(DO NOT EDIT)
int SHIP_HEAVY = 1;
int SHIP_LIGHT = 2;
int SHIP_DREADNOUGHT = 3;
int SHIP_FREESHOOTER = 4;

//classes
AlienGrid Aliens;
Projectile projectile;

void setup() {
  size(400, 400);
  newprojectile(projectileSize);
  Aliens = new AlienGrid(NUM_ROWS, NUM_COLS, AlienSize);
}//setup

void draw() {
  background(0);
  Aliens.changeColor(alienColor);
  Aliens.display();
  projectile.setColor(projectileColor);
  projectile.display();
  projectile.move();

  boolean hit = Aliens.processCollisions(projectile);
  if (hit) {
    newprojectile(projectileSize);
  }
  if (frameCount % 30 == 0) {
    Aliens.move();
  }
  //saveFrame("data/" + nf(frameCount, 4) + ".png");
}//draw


void keyPressed() {
  if (key == ' ' && projectile.center.y == height - projectile.bsize/2) {
    projectile.yspeed = -projectileSpeed;
  }
  if (keyCode == LEFT && projectile.center.y == height - projectile.bsize/2) {
    projectile.center.x-=projectile.bsize;
  }
  if (keyCode == RIGHT && projectile.center.y == height - projectile.bsize/2) {
    projectile.center.x+=projectile.bsize;
  }
}//keyPressed

void newprojectile(int psize) {
  PVector p = new PVector(width/2, height-psize/2);
  projectile = new Projectile(p, psize);
}//newprojectile
