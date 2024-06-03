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
    circle(currentPosition.x, currentPosition.y, 20);
  }
  
  public void move() {
    currentPosition.add(velocity);
  }
  
  public void resetPosition() {
    velocity.mult(-1);
  }
  
  public boolean collisionCheck(Player player) {
    boolean xTouch = player.position.x + 20 >= currentPosition.x - 10 && player.position.x <= currentPosition.x + 10;
    boolean yTouch = player.position.y + 20 >= currentPosition.y - 10 && player.position.y + 20 <= currentPosition.y + 10;

    return xTouch && yTouch;
  }
  
  public PVector getPos() {
    return currentPosition;
  }
  
}
