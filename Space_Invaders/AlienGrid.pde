class AlienGrid {

  Alien[][] grid;
  int AlienSize;
  PVector topLeft;
  int gridWidth;
  int gridHeight;
  int direction;

  AlienGrid(int rows, int cols, int bsize) {
    grid = new Alien[rows][cols];
    AlienSize = bsize;
    gridWidth = AlienSize * cols + ((AlienSize - 1)/2);
    gridHeight = AlienSize * rows + ((AlienSize - 1)/2);
    direction = RIGHT;
    topLeft = new PVector(AlienSize/2, AlienSize/2);
    makeAliens();
  }//constructor

  void makeAliens() {
    PVector pos = topLeft.copy();
    for (int r=0; r<grid.length; r++) {
      for (int c=0; c<grid[r].length; c++) {
        grid[r][c] = new Alien(pos, AlienSize);
        grid[r][c].setSpeed(AlienSize, 0);
        pos.x+=AlienSize * 3/2;
      }//columns
      pos.y+= AlienSize * 3/2;
      pos.x = topLeft.x;
    }//rows
  }//makeAliens

  void display() {
    for (int r=0; r<grid.length; r++) {
      for (int c=0; c<grid[r].length; c++) {
        if (grid[r][c] != null) {
          grid[r][c].display();
        }
      }//columns
    }//rows
  }//drawGrid

  boolean processCollisions(Projectile p) {
    boolean hit = false;
    for (int r=0; r<grid.length; r++) {
      for (int c=0; c<grid[r].length; c++) {
        if (grid[r][c] != null && p.collisionCheck(grid[r][c])) {
          grid[r][c] = null;
          hit = true;
        }//collide!
      }//columns
    }//rows
    return hit;
  }//processCollisions

  void move() {
    if (direction == DOWN) {
      topLeft.y+= AlienSize;
    }
    else if (direction == LEFT) {
      topLeft.x-= AlienSize;
    }
    else if (direction == RIGHT) {
      topLeft.x+= AlienSize;
    }

    for (int r=0; r<grid.length; r++) {
      for (int c=0; c<grid[r].length; c++) {
        if (grid[r][c] != null) {
          grid[r][c].move();
        }
      }//columns
    }//rows

    checkSpacing();
  }//move

  void checkSpacing() {
    float leftEdge = topLeft.x - (AlienSize/2);
    float rightEdge = leftEdge + gridWidth;
    float topEdge = topLeft.y - (AlienSize/2);

    //println(rightEdge);

    if (direction == DOWN) {
      if (leftEdge <= 0) {
        direction = RIGHT;
      }
      if (rightEdge >= width) {
        direction = LEFT;
      }
      changeDirection();
    }//switching left/right
    else if (leftEdge <= 0) {
      direction = DOWN;
      changeDirection();
    }
    else if (rightEdge >= width) {
      direction = DOWN;
      changeDirection();
    }
  }//checkSpacing

  void changeDirection() {
    int newx, newy;
    newx = 0;
    newy = 0;
    if (direction == LEFT) {
      newx = -AlienSize;
    }//left
    if (direction == RIGHT) {
      newx = AlienSize;
    }//right
    if (direction == DOWN) {
      newy = AlienSize;
    }//down

    for (int r=0; r<grid.length; r++) {
      for (int c=0; c<grid[r].length; c++) {
        if (grid[r][c] != null) {
          grid[r][c].setSpeed(newx, newy);
        }
      }//columns
    }//rows
  }//changeDirection
  
  void changeColor(color colour) {
    for (int r=0; r<grid.length; r++) {
      for (int c=0; c<grid[r].length; c++){
        if(grid[r][c] != null) {
          grid[r][c].setColor(colour);
        }
      }//columns
    }//rows
  }
}//AlienGrid
