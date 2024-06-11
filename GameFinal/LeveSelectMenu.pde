class LevelSelect {
  Button back;
  Button reset;
  Button[] levelButtons;

  public LevelSelect() {
    levelButtons = new Button[2]; // Adjust size for two levels
    reset = new Button(new PVector(width - 100, height - 50), new PVector(100, 50), "Reset?", "r", color(255), color(0));
    back = new Button(new PVector(10, 10), new PVector(150, 60), "Back", "r", color(255), color(0));
    
    // Initialize Level Buttons
    levelButtons[0] = new Button(new PVector(50, 50), new PVector(100, 100), "Level 1", "r", color(255), color(0));
    levelButtons[1] = new Button(new PVector(200, 50), new PVector(100, 100), "Level 2", "r", color(255), color(0));
  }

  void display() {
    back.draw();
    reset.draw();
    for (int i = 0; i < levelButtons.length; i++) {
      // Change button color based on completion status
      if (game.levels.get(i).isCompleted()) {
        levelButtons[i].setFillColor(color(0, 255, 0)); 
      } else {
        levelButtons[i].setFillColor(color(255)); 
      }
      levelButtons[i].draw();
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
    for (int i = 0; i < levelButtons.length; i++) {
      if (status(levelButtons[i])) {
        showLevelSelect = false;
        showGame = true;
        currentLevel = i + 1; // Set the current level to the selected level
        game.loadLevel(currentLevel); // Load the selected level
      }
    }
  }
}
