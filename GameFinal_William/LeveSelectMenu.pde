class LevelSelect {
  
  Button back;
  Button reset;
  Button[] levelButtons;
  
  public LevelSelect() {
    levelButtons = new Button[1];
    reset = new Button(new PVector(width - 60, height - 60), new PVector(60, 60), "Reset", "r", color(232, 222, 255), color(0));
    back = new Button(new PVector(0, height - 60), new PVector(60, 60), "Back", "r", color(119, 221, 119), color(0));
  }
  
  void display() {
    back.draw();
    reset.draw();
    for (Button b: levelButtons) {
      b.draw();
    }
  }
  
  boolean status(Button b) {
    return b.isMouseClicked();
  }
  
  void handleMouseClick() {
    if (status(back)) {
      background(255);
      showLevelSelect = false;
      showMainMenu = true;
    }
    if (status(reset)) {
      background(255);
      showLevelSelect = false;
      showResetLevel = true;
    }
    for (Button b: levelButtons) {
      if (status(b)) {
        showLevelSelect = false;
      }
    }
  }
  
}
