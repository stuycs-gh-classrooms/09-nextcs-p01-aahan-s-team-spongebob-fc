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
    stroke(c);
    circle(center.x, center.y, bsize);
  }//display

  void setSpeed(int newx, int newy) {
    xspeed = newx;
    yspeed = newy;
  }//setSpeed

  //movement behavior
  void move() {
   center.x+= xspeed;
   center.y+= yspeed;
  }//move

}//Alien
