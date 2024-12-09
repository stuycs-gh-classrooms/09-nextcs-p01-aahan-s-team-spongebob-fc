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
      shipSize = width/5;
    }
    if(shipType == SHIP_LIGHT) {
      
    }
    if(shipType == SHIP_DREADNOUGHT) {
      
    }
    if(shipType == SHIP_LANCER) {
      
    }
  }
  
  void move(int direction) {
    if(direction == 1) {
      
    }
  }
}
