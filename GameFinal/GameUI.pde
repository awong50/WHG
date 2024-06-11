class UI {
  MainMenu mainMenu = new MainMenu();
  LevelSelect levelSelect = new LevelSelect();
  ResetLevel resetLevel = new ResetLevel();

  UI() {
    levelSelect.levelButtons[0] = new Button(new PVector(50, 50), new PVector(100, 100), "Level 1", "r", color(255), color(0));
    levelSelect.levelButtons[1] = new Button(new PVector(200, 50), new PVector(100, 100), "Level 2", "r", color(255), color(0));
  }

  void showMainMenu() {
    if (showMainMenu) {
      mainMenu.display();
      mainMenu.handleMouseClick();
    }
    else {
      exit();
    }
  }

  void showLevelSelect() {
    if (showLevelSelect) {
      levelSelect.display();
      levelSelect.handleMouseClick();
    }
  }

  void showResetLevel() {
    if (showResetLevel) {
      resetLevel.display();
      resetLevel.handleMouseClick();
    }
  }
}
