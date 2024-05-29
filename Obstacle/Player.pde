class Player {
  PVector position;
  int coinCount;
  float radius;
  color col;
  
  Player(float x, float y, color col) {
    position = new PVector(x, y);
    coinCount = 0;
    radius = 10;
    this.col = col;
  }
  
  void draw() {
    fill(col);
    rect(position.x, position.y, radius, radius);
  }
  
  void move(PVector direction) {
    position.add(direction);
  }
  
  PVector getPos() {
    return position;
  }
  
  void collectCoin(Coin coin) {
    if (!coin.isCollected() && dist(position.x, position.y, coin.position.x, coin.position.y) < radius + coin.radius) {
      coinCount++;
      coin.collect();
    }
  }
}
    
