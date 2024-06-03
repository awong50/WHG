class ResetLevel {
  Button resetButton;
  Button exitButton;
  
  public ResetLevel() {
    color white = color(255, 255, 255);
    color black = color(0, 0, 0);
    resetButton = new Button(new PVector(10, 10), new PVector(200, 100), "Reset?", "r", white, black);
    exitButton = new Button(new PVector(10, 200), new PVector(100, 50), "Exit?", "r", white, black);
  }
  
  void draw() {
    resetButton.draw();
    exitButton.draw();
  }
  
  boolean display(Button b) {
    return b.isMouseOver() && b.isMouseClicked();
  }
  
}
