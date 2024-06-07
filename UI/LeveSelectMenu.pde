class LevelSelect {
  
  Button[] levelButtons;
  
  public LevelSelect() {
    levelButtons = new Button[1];
  }
  
  void display() {
    for (Button b: levelButtons) {
      b.draw();
    }
  }
  
  boolean status(Button b) {
    return b.isMouseClicked();
  }
  
}
