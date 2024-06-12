class Obstacle {
  private PVector currentPosition;
  private PVector velocity;
  private float leftBound, rightBound, topBound, bottomBound;
  private float radius;

  public Obstacle(PVector v, int x, int y, float leftBound, float rightBound, float topBound, float bottomBound) {
    currentPosition = new PVector(x, y);
    velocity = v;
    this.leftBound = leftBound;
    this.rightBound = rightBound;
    this.topBound = topBound;
    this.bottomBound = bottomBound;
    radius = 15; 
  }

  void draw() {
    fill(0, 0, 255);
    ellipse(currentPosition.x, currentPosition.y, radius * 2, radius * 2);
  }

  void move() {
    currentPosition.add(velocity);
    checkBounds();
  }

  private void checkBounds() {
    if (currentPosition.x - radius <= leftBound || currentPosition.x + radius >= rightBound) {
      velocity.x *= -1;
    }
    if (currentPosition.y - radius <= topBound || currentPosition.y + radius >= bottomBound) {
      velocity.y *= -1;
    }
  }

  boolean collisionCheck(Player player) {
    float distance = dist(player.position.x + 10, player.position.y + 10, currentPosition.x, currentPosition.y);
    return distance < player.radius;
  }

  PVector getPos() {
    return currentPosition;
  }
}
