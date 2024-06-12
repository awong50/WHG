class UI {
  
  MainMenu mainMenu = new MainMenu();
  LevelSelect levelSelect = new LevelSelect();
  ResetLevel resetLevel = new ResetLevel();
  Settings settings = new Settings();
  Credits credits = new Credits();
  
  UI() {
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
      soundManager.pauseSoundEffect("background");
    }
  }
  
  void showResetLevel() {
    if (showResetLevel) {
      resetLevel.display();
      soundManager.pauseSoundEffect("background");
    }
  }
  
  void showSettings() {
    if (showSettings) {
      settings.display();
      soundManager.pauseSoundEffect("background");
    }
  }
  
  void showCredits() {
    if (showCredits) {
      credits.display();
    }
  }
  
}
