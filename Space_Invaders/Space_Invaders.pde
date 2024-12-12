//Space Invaders

int score, lives; //game values

//governs number of aliens spawned, in a grid
int NUM_ROWS = 6; 
int NUM_COLS = 12;

//governs aliens statistics
int AlienSize = height/5;
color alienColor = color(150,0,255);

//Governs Player stats
int shipStartingX = width/2;
int shipStartingY = height*7/8;
int shipSize = width/10;
//governs player projectile stats
int projectileSize = 20;
int projectileSpeed = 10;
color projectileColor = color(255);

//Ship variants variables(DO NOT EDIT)
int SHIP_HEAVY = 1;
int SHIP_LIGHT = 2;
int SHIP_DREADNOUGHT = 3;
int SHIP_LANCER = 4;

//classes
AlienGrid Aliens;
Projectile projectile;
Player PlayerShip;

void setup() {
  size(700, 500);
  newprojectile(projectileSize);
  PVector startingPlayerPosition = new PVector(shipStartingX, shipStartingY);
  Aliens = new AlienGrid(NUM_ROWS, NUM_COLS, AlienSize);
  PlayerShip = new Player(SHIP_HEAVY, startingPlayerPosition);
}//setup

void draw() {
  background(0);
  Aliens.changeColor(alienColor);
  Aliens.display();
  projectile.setColor(projectileColor);
  projectile.display();
  projectile.move();
  PlayerShip.display();
  boolean hit = Aliens.processCollisions(projectile);
  if (hit) {
    newprojectile(projectileSize);
  }
  if (frameCount % 60 == 0) {
    Aliens.move();
  }
  //saveFrame("data/" + nf(frameCount, 4) + ".png");
}//draw


void keyPressed() {
  if (key == ' ' && projectile.center.y == height - projectile.bsize && (projectile.center.x > projectile.bsize/8 && projectile.center.x < width - projectile.bsize/8)) {
    projectile.yspeed = -projectileSpeed;
  }
  if (keyCode == LEFT && projectile.center.y == height - projectile.bsize) {
    PlayerShip.center.x += PlayerShip.shipSize;
  }
  if (keyCode == RIGHT && projectile.center.y == height - projectile.bsize) {
    projectile.center.x+=projectile.bsize;
  }
}//keyPressed

void newprojectile(int psize) {
  PVector p = new PVector(width/2, height-psize);
  projectile = new Projectile(p, psize);
}//newprojectile
