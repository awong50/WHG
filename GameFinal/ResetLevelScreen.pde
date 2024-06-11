class ResetLevel {
  Button resetButton;
  Button toLevelSelect;
  Button exitButton;
  
  public ResetLevel() {
    resetButton = new Button(new PVector(350, 200), new PVector(100, 100), "Reset", "r", color(232, 222, 255), color(0));
    //toLevelSelect = new Button(new PVector(width / 2 - 50, height / 2 - 100), new PVector(100, 100), "Reset", "r", color(232, 222, 255), color(0));
    exitButton = new Button(new PVector(width / 2 - 25, height / 2 + 25), new PVector(50, 50), "Back", "r", color(119, 221, 119), color(0));
  }
  
  void display() {
    resetButton.draw();
    backButton.draw();
  }
  
  boolean status(Button b) {
    return b.isMouseClicked();
  }
  
  void handleMouseClick() {
    if (status(backButton)) {
      background(255);
      showResetLevel = false;
      showLevelSelect = true;
    }
    if (status(resetButton)) {
      background(255);
      showResetLevel = false;
      showLevelSelect = true;
    }
  }
  
}
