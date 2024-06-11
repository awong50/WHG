class Settings {
  
  Button back;
  Checkbox soundOption;
  
  public Settings() {
    soundOption = new Checkbox(width / 2 - 40, height / 2 - 20, 20, "Enable Sound", color(255), color(0, 255, 0), color(0));
    back = new Button(new PVector(width / 2 - 25, height / 2 + 50), new PVector(50, 50), "Back", "r", color(119, 221, 119), color(0));
  }
  
  void display() {
    textSize(24);
    text("Settings", width / 2, height / 2 - 75);
    soundOption.draw();
    back.draw();
  }
  
  boolean status() {
    return soundOption.checked;
  }
  
  void handleMouseClick() {
    soundOption.handleMouseClick();
    if (back.isMouseClicked()) {
      showSettings = false;
      showMainMenu = true;
    }
  }
  
}
