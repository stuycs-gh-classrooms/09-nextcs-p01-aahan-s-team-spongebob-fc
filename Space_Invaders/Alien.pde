class Alien {

  //instance variables
  PVector center;
  int xspeed, yspeed;
  int bsize;
  color c;

   //default constructor
   Alien(PVector p, int s) {
     bsize = s;
     center = new PVector(p.x, p.y);
   }

  void setColor(color newC) {
    c = newC;
  }//setColor

  //visual behavior
  void display() {
    fill(c);
    circle(center.x, center.y, bsize);
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

}//Alien
