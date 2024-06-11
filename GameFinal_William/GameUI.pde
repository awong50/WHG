class UI {
  
  MainMenu mainMenu = new MainMenu();
  LevelSelect levelSelect = new LevelSelect();
  ResetLevel resetLevel = new ResetLevel();
  Settings settings = new Settings();
  Credits credits = new Credits();
  
  UI() {
    levelSelect.levelButtons[0] = new Button(new PVector(50, 50), new PVector(100, 100), "Level 1", "r", color(255), color(0));
  }
  
  void showMainMenu() {
    if (showMainMenu) {
      mainMenu.display();
    }
    else {
      exit();
    }
  }
  
  void showLevelSelect() {
    if (showLevelSelect) {
      levelSelect.display();
    }
  }
  
  void showResetLevel() {
    if (showResetLevel) {
      resetLevel.display();
    }
  }
  
  void showSettings() {
    if (showSettings) {
      settings.display();
    }
  }
  
  void showCredits() {
    if (showCredits) {
      credits.display();
    }
  }
  
}
