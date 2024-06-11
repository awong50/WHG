class Wall {
  private PVector p1;
  private PVector p2;
  
  Wall(int x1, int y1, int x2, int y2) {
    p1 = new PVector(x1, y1);
    p2 = new PVector(x2, y2);
  }
  
  void draw() {
    fill(0);
    rect(p1.x, p1.y, p2.x - p1.x, p2.y - p1.y);
  }
  
  boolean collisionCheck(PVector position, float radius) {
    return (position.x < p2.x && position.x + radius > p1.x &&
            position.y < p2.y && position.y + radius > p1.y);
  }
}
