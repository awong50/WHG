import java.util.HashMap;
import ddf.minim.*;

class SoundEffect {
  AudioPlayer player;
  boolean isPaused;
  int pausePosition;

  SoundEffect(Minim minim, String filePath) {
    player = minim.loadFile(filePath);
    isPaused = false;
    pausePosition = 0;
  }

  void play() {
    if (isPaused) {
      player.cue(pausePosition);
      player.play();
      isPaused = false;
    } else {
      player.rewind();
      player.play();
    }
  }

  void stop() {
    player.pause();
    player.rewind();
    isPaused = false;
    pausePosition = 0;
  }

  void pause() {
    if (player.isPlaying()) {
      pausePosition = player.position();
      player.pause();
      isPaused = true;
    }
  }

  void close() {
    player.close();
  }
}
