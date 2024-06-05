class UI {
  
  MainMenu m = new MainMenu();
  LevelSelect l = new LevelSelect();
  ResetLevel r = new ResetLevel();
  Settings s = new Settings();
  
  UI() {}
  
  void showMainMenu() {
    MainMenu.display();
  }
  
}
