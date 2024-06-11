class Coin {
  PVector position;
  boolean collected;
  float diameter = 10;
  
  public Coin(float x, float y) {
    position = new PVector(x, y);
    collected = false;
  }
  
  void draw() {
    if (!isCollected()) {
      fill(255, 204, 0);
      circle(position.x, position.y, diameter);
    }
  }
  
  
  void collect() {
    System.out.println("Coin collected at position: " + position);
    collected = true;
  }
  
  boolean isCollected() {
    return collected;
  }
  
}
