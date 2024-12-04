class Projectile {

  //instance variables
  PVector center;
  int xspeed;
  int yspeed;
  int bsize;
  color c;

   //default constructor
   Projectile(PVector p, int s) {
     bsize = s;
     center = new PVector(p.x, p.y);
   }

  boolean collisionCheck(Alien other) {
    return ( this.center.dist(other.center)
             <= (this.bsize/2 + other.bsize/2) );
  }//collisionCheck

  void setColor(color newC) {
    c = newC;
  }//setColor

  //visual behavior
  void display() {
    fill(c);
    rect(center.x + bsize/2, center.y + bsize/2, bsize/4, bsize);
  }//display

  void setSpeed(int newx, int newy) {
    xspeed = newx;
    yspeed = newy;
  }//setSpeed

  //movement behavior
  void move() {
    if (center.x > width - bsize/2 ||
        center.x < bsize/2) {
        xspeed*= -1;
     }
     if (center.y > height - bsize/2 ||
         center.y < bsize/2) {
         yspeed*= -1;
      }
     center.x+= xspeed;
     center.y+= yspeed;
  }//move

}//Projectile
