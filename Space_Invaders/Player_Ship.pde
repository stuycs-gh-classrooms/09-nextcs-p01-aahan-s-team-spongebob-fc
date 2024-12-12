class Player {
  PVector center;
  int xspeed, yspeed;
  int shipType;
  int shipSize;
  
  Player(int SHIP_TYPE, PVector p) {
    shipType = SHIP_TYPE;
    center = new PVector(p.x, p.y);
  }//constructor
  
  void display() {
    if(shipType == SHIP_HEAVY) {
      shipSize = width/50;
    }
    if(shipType == SHIP_LIGHT) {
      
    }
    if(shipType == SHIP_DREADNOUGHT) {
      
    }
    if(shipType == SHIP_LANCER) {
      
    }
    stroke(0,255,255);
    fill(0,255,255);
    triangle(center.x, center.y - shipSize, center.x - shipSize * 3/4, center.y + shipSize, center.x + shipSize * 3/4, center.y + shipSize);
  }
  
  void move(int direction) {
    if(direction == 1) {
      
    }
  }
}
