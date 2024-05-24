class Obstacle {
  
  private PVector[] path;
  private PVector currentPosition;
  private PVector velocity;
  
  public Obstacle(PVector v, int x, int y) {
    size(800, 600);
    currentPosition = new PVector(x, y);
    velocity = v;
  }
  
  void draw() {
    color(0, 0, 255);
    circle(currentPosition.x, currentPosition.y, 5);
  }
  
  public void move() {
    currentPosition.add(velocity);
  }
  
  public void resetPosition() {
    currentPosition.mult(-1);
  }
  
  public boolean collisionCheck(Player player) {
    if (player.getPos().x + 2.5 == currentPosition.x || player.getPos().x - 2.5 == currentPosition.x) {
      return true;
    }
    if (player.getPos().y + 2.5 == currentPosition.x || player.getPos().y - 2.5 == currentPosition.x) {
      return true;
    }
    return false;
  }
  
}
