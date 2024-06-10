UI u;
boolean showMainMenu;
boolean showLevelSelect;
boolean showResetLevel;
boolean showSettings;

void setup() {
  size(800, 600);
  u = new UI();
  showMainMenu = true;
  showLevelSelect = false;
  showResetLevel = false;
  showSettings = false;
}

void draw() {
  if (showMainMenu) {
    u.showMainMenu();
  }
  else if (showLevelSelect) {
    background(255);
    u.showLevelSelect();
  }
  else if (showResetLevel) {
    background(255);
    u.showResetLevel();
  }
  else background(255);
}
