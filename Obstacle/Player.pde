class Player {
  PVector position;
  int coinCount;
  float radius;
  color col;
  
  Player(float x, float y, color col) {
    position = new PVector(x, y);
    coinCount = 0;
    radius = 20;
    this.col = col;
  }
  
  void draw() {
    fill(col);
    rect(position.x, position.y, radius, radius);
  }
  
  void move(PVector direction) {
    position.add(direction);
  }
  
  void collectCoin(Coin coin) {
    System.out.println(dist(position.x, position.y, coin.position.x, coin.position.y));
    if (!coin.isCollected() && (dist(position.x, position.y, coin.position.x, coin.position.y) <= radius) || dist(position.x + radius, position.y, coin.position.x, coin.position.y) <= radius) {
      coinCount++;
      coin.collect();
    }
  }
  
  void resetPosition(float x, float y) {
    position.set(x, y);
  }
  
  PVector v() {
    PVector direction = new PVector(0, 0);
    if (keyPressed) {
      if (key == 'w') direction.y += -2;
      if (key == 's') direction.y += 2;
      if (key == 'a') direction.x += -2;
      if (key == 'd') direction.x += 2;
      }
    return direction;
  }
}
