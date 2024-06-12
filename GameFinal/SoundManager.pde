class SoundManager {
  Minim minim;
  HashMap<String, SoundEffect> soundEffects;

  SoundManager(Minim minim) {
    this.minim = minim;
    soundEffects = new HashMap<String, SoundEffect>();
  }

  void addSoundEffect(String name, String filePath) {
    soundEffects.put(name, new SoundEffect(minim, filePath));
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

  void pauseSoundEffect(String name) {
    SoundEffect soundEffect = soundEffects.get(name);
    if (soundEffect != null) {
      soundEffect.pause();
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
