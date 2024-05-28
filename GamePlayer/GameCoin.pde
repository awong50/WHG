class Coin {
  PVector position;
  PImage image;
  boolean collected;
  float raddius = 10;
  
  public Coin(float x, float y) {
    position = new PVector(x, y);
    collected = false;
    image = loadImage("coin.png");
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
  
  float getX() {
    return position.x;
  }
  
  float getY() {
    return position.y;
  }
}
