import java.util.HashMap;

class SoundManager {
  HashMap<String, SoundEffect> soundEffects;

  SoundManager() {
    soundEffects = new HashMap<String, SoundEffect>();
  }

  void addSoundEffect(String name, String filePath) {
    soundEffects.put(name, new SoundEffect(filePath));
  }

  void playSoundEffect(String name) {
    SoundEffect soundEffect = soundEffects.get(name);
    if (soundEffect != null) {
      soundEffect.play();
    } else {
      println("Sound effect '" + name + "' not found.");
    }
  }

  void stopSoundEffect(String name) {
    SoundEffect soundEffect = soundEffects.get(name);
    if (soundEffect != null) {
      soundEffect.stop();
    } else {
      println("Sound effect '" + name + "' not found.");
    }
  }

  void closeAllSoundEffects() {
    for (SoundEffect soundEffect : soundEffects.values()) {
      soundEffect.close();
    }
  }
}
