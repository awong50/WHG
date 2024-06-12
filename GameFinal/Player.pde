class Player {
  PVector start;
  PVector position;
  PVector velocity;
  int coinCount;
  float radius;
  color col;
  
  Player(float x, float y, color col) {
    start = new PVector(x, y);
    position = new PVector(x, y);
    velocity = new PVector(0, 0);
    coinCount = 0;
    radius = 20;
    this.col = col;
    soundManager.addSoundEffect("death", dataPath("death.wav"));  
  }
  
  void draw() {
    fill(col);
    rect(position.x, position.y, radius, radius);
  }
  
  void move(PVector direction) {
    velocity = direction;
  }
  
  void update(ArrayList<Wall> walls) {
    PVector futurePosition = PVector.add(position, velocity);

    boolean canMoveX = true;
    boolean canMoveY = true;

    for (Wall wall : walls) {
      if (wall.collisionCheck(new PVector(futurePosition.x, position.y), radius)) {
        canMoveX = false;
      }
      if (wall.collisionCheck(new PVector(position.x, futurePosition.y), radius)) {
        canMoveY = false;
      }
    }
    
    if (canMoveX) {
      position.x += velocity.x;
    }
    if (canMoveY) {
      position.y += velocity.y;
    }
  }
  
  void collectCoin(Coin coin) {
    if (!coin.isCollected() && dist(position.x, position.y, coin.position.x, coin.position.y) <= radius) {
      coinCount++;
      coin.collect();
    }
  }
  
  void reset(float x, float y) {
    if (ui.settings.soundOption.checked) {
      soundManager.playSoundEffect("death");
    }
    position.set(x, y);
  }
  
  

  void stop() {
    velocity.set(0, 0);
  }
}
