class Coin {
  PVector position;
  PImage image;
  boolean collected;
  float radius = 10;
  
  public Coin(float x, float y, PImage img) {
    position = new PVector(x, y);
    image = img;
    collected = false;
  }
  
  void draw() {
    if (!isCollected()) {
      image(image, position.x, position.y);
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
