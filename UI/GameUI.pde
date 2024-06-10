class UI {
  
  MainMenu m = new MainMenu();
  LevelSelect l = new LevelSelect();
  ResetLevel r = new ResetLevel();
  Settings s = new Settings();
  
  UI() {
    l.levelButtons[0] = new Button(new PVector(50, 50), new PVector(100, 100), "Level 1", "r", color(255), color(0));
  }
  
  void showMainMenu() {
    if (showMainMenu) {
      m.display();
      s.display();
      m.handleMouseClick();
      s.handleMouseClicked();
    }
    else {
      exit();
    }
  }
  
  void showLevelSelect() {
    if (showLevelSelect) {
      l.display();
      l.handleMouseClick();
    }
  }
  
  void showResetLevel() {
    if (showResetLevel) {
      r.display();
      r.handleMouseClick();
    }
  }
  
  void showSettings() {
    s.display();
  }
  
}
