import ddf.minim.*;

class SoundEffect {
  Minim minim;
  AudioPlayer player;
  String filePath;

  SoundEffect(String filePath) {
    this.filePath = filePath;
    minim = new Minim(this);
    player = minim.loadFile(filePath);
  }

  void play() {
    if (player.isPlaying()) {
      player.rewind();
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
