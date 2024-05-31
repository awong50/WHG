class Wall {
  
  private PVector p1;
  private PVector p2;
  
  public Wall(int x1, int y1, int x2, int y2) {
    size(800, 600);
    p1 = new PVector(x1, y1);
    p2 = new PVector(x2, y2);
  }
  
  void draw() {
    rect(p1.x, p1.y, p2.x, p2.y);
  }
  
  public boolean collisionCheck(Player player) {
    if (player.position.x <= p1.x || player.position.x + 10 >= p2.x) {
      return true;
    }
    if (player.position.y <= p1.y || player.position.y + 10 >= p2.y) {
      return true;
    }
    return false;
  }
  
  public PVector getP(int p) {
    if (p == 1) return p1;
    else return p2;
  }
  
  
}
