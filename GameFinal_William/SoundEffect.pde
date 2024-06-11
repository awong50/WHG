import ddf.minim.*;

class SoundEffect {
  Minim minim;
  AudioPlayer player;
  String filePath;

  SoundEffect(Minim minim, String filePath) {
    this.filePath = filePath;
    this.minim = minim;
    player = minim.loadFile(filePath);
    if (player == null) {
      println("Error loading sound file: " + filePath);
    }
  }

  void play() {
    if (player != null) {
      if (player.isPlaying()) {
        player.rewind();
      }
      player.play();
    }
  }

  void stop() {
    if (player != null) {
      player.pause();
      player.rewind();
    }
  }

  void close() {
    if (player != null) {
      player.close();
    }
  }
}
