class LevelSelect {
  Button back;
  Button[] levelButtons;

  public LevelSelect() {
    levelButtons = new Button[5];
    back = new Button(new PVector(0, height - 60), new PVector(60, 60), "Back", "r", color(119, 221, 119), color(0));
    
    // Level Buttons
    levelButtons[0] = new Button(new PVector(50, 50), new PVector(100, 100), "Level 1", "r", color(255), color(0));
    levelButtons[1] = new Button(new PVector(200, 50), new PVector(100, 100), "Level 2", "r", color(255), color(0));
    levelButtons[2] = new Button(new PVector(350, 50), new PVector(100, 100), "Level 3", "r", color(255), color(0));
    levelButtons[3] = new Button(new PVector(500, 50), new PVector(100, 100), "Level 4", "r", color(255), color(0));
    levelButtons[4] = new Button(new PVector(650, 50), new PVector(100, 100), "Level 5", "r", color(255), color(0));
  }

  void display() {
    back.draw();
    for (int i = 0; i < levelButtons.length; i++) {
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
    for (int i = 0; i < levelButtons.length; i++) {
      if (status(levelButtons[i])) {
        showLevelSelect = false;
        showGame = true;
        currentLevel = i + 1; 
        game.loadLevel(currentLevel); 
      }
    }
  }
}
