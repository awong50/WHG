class Settings {
  
  Checkbox soundOption;
  
  public Settings() {
    soundOption = new Checkbox(350, 250, 20, "Enable Sound", color(255), color(0, 255, 0), color(0));
  }
  
  void display() {
    soundOption.draw();
  }
  
  boolean status() {
    return soundOption.checked;
  }
  
}
