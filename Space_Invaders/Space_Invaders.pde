//Space Invaders

int score, lives;
int NUM_ROWS = 3;
int NUM_COLS = 5;
int AlienSize = 40;
int projectileSize = 20;
int projectileSpeed = 10;
color alienColor = color(150,0,255);
color projectileColor = color(255);
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
