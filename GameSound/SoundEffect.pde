import ddf.minim.*;

class SoundEffect {
  Minim minim;
  AudioPlayer player;
  
  SoundEffect(String filepath) {
    minim = new Minim(this);
    player = minim.loadFile(filepath);
  }
  
  void play() {
    if (player.isPlaying()) {
      player.rewind;
    }
    player.play();
  }
  
  void stop() {
    player.pause();
    player.rewind();
  }
  
  void close() {
    player.close();
    minim.stop();
  }
}
