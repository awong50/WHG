class UI {
  
  MainMenu m = new MainMenu();
  LevelSelect l = new LevelSelect();
  ResetLevel r = new ResetLevel();
  Settings s = new Settings();
  
  UI() {
    l.levelButtons[0] = new Button(new PVector(50, 50), new PVector(100, 100), "Level 1", "r", color(255), color(0));
  }
  
  void showMainMenu() {
    m.display();
  }
  
  void showLevelSelect() {

    l.display();
  }
  
  void showResetScreen() {
    r.display();
  }
  
  void showSettings() {
    s.display();
  }
  
  void draw() {
    if (showMainMenu) showMainMenu();
  }
  
}
