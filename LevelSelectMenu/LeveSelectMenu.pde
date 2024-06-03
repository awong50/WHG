class LevelSelect {
  
  Button[] levelButtons;
  
  public LevelSelect() {
    levelButtons = new Button[2];
  }
  
  void display() {
    for (Button b: levelButtons) {
      b.draw();
    }
  }
  
  boolean status(Button b) {
    return b.isMouseOver() && b.isMouseClicked();
  }
  
}
