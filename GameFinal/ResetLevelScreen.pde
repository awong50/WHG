class ResetLevel {
  Button resetButton;
  Button toLevelSelect;
  
  public ResetLevel() {
    resetButton = new Button(new PVector(350, 200), new PVector(100, 50), "Reset", "r", color(232, 222, 255), color(0));
    toLevelSelect = new Button(new PVector(350, 275), new PVector(100, 50), "Level Select", "r", color(255, 209, 220), color(0));
  }
  
  void display() {
    resetButton.draw();
    toLevelSelect.draw();
  }
  
  boolean status(Button b) {
    return b.isMouseClicked();
  }
  
  void handleMouseClick() {
    if (status(resetButton)) {
      background(255);
      showResetLevel = false;
      showGame = true;
      if (ui.settings.ambient.checked) {
        soundManager.playSoundEffect("background");
      }
    }
    if (status(toLevelSelect)) {
      background(255);
      showResetLevel = false;
      showLevelSelect = true;
    }
  }
}
