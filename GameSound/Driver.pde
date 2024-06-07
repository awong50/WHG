import ddf.minim.*;

SoundManager soundManager;
Button playButton, stopButton;

Minim minim;

void setup() {
  size(800, 600);
  
  minim = new Minim(this);
  soundManager = new SoundManager(minim);
  soundManager.addSoundEffect("AHHH", dataPath("haha.mp3"));  

  playButton = new Button(new PVector(width / 2 - 75, height / 2 - 30), new PVector(150, 60), "Play Sound", "r", color(0, 255, 0), color(0));
}

void draw() {
  background(220);
  fill(0);
  textAlign(CENTER);
  textSize(32);
  text("Sound Manager Test", width / 2, 100);

  playButton.draw();
}

void mousePressed() {
  if (playButton.isMouseClicked()) {
    soundManager.playSoundEffect("AHHH");
  }
}

void keyPressed() {
  if (key == 's' || key == 'S') {
    soundManager.stopSoundEffect("AHHH");
  }
}

void stop() {
  soundManager.closeAllSoundEffects();
  minim.stop();
}
