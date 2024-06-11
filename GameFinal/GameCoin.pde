import ddf.minim.*;

Minim minim = new Minim(this);
SoundManager soundManager = new SoundManager(minim);

class Coin {
  PVector position;
  boolean collected;
  float diameter = 10;
  
  public Coin(float x, float y) {
    position = new PVector(x, y);
    collected = false;
    soundManager.addSoundEffect("AHHH", dataPath("haha.mp3"));  
  }
  
  void draw() {
    if (!isCollected()) {
      fill(255, 204, 0);
      circle(position.x, position.y, diameter);
    }
  }
  
  
  void collect() {
    System.out.println("Coin collected at position: " + position);
    soundManager.playSoundEffect("AHHH");
    collected = true;
  }
  
  boolean isCollected() {
    return collected;
  }
  
}
