class Coin {
  PVector position;
  boolean collected;
  float diameter = 10;
  
  public Coin(float x, float y) {
    position = new PVector(x, y);
    collected = false;
    soundManager.addSoundEffect("coin", dataPath("coin.wav"));  
  }
  
  void draw() {
    if (!isCollected()) {
      fill(255, 204, 0);
      circle(position.x, position.y, diameter);
    }
  }
  
  void collect() {
    if (!collected) {  
      System.out.println("Coin collected at position: " + position);
      if (ui.settings.soundOption.checked) {
        soundManager.playSoundEffect("coin");
      }
      collected = true;
      soundManager.addSoundEffect("coin", dataPath("coin.wav")); 
    }
  }
  
  boolean isCollected() {
    return collected;
  }
  
  void reset() {
    collected = false;  
    soundManager.addSoundEffect("coin", dataPath("coin.wav")); 
  }
}
