UI ui;
Game game;
boolean showMainMenu = true;
boolean showLevelSelect = false;
boolean showResetLevel = false;
boolean showSettings = false;
boolean showCredits = false;

void setup() {
  size(800, 600);
  ui = new UI();
  game = new Game();
}

void draw() {
  if (showMainMenu) {
    background(200);
    ui.showMainMenu();
  }
  else if (showLevelSelect) {
    background(200);
    ui.showLevelSelect();
  }
  else if (showResetLevel) {
    background(200);
    ui.showResetLevel();
  }
  else if (showSettings) {
    background(200);
    ui.showSettings();
  }
  else if (showCredits) {
    background(200);
    ui.showCredits();
  }
  else background(255);
}

void mousePressed() {
  if (showMainMenu) ui.mainMenu.handleMouseClick();
  if (showLevelSelect) ui.levelSelect.handleMouseClick();
  if (showResetLevel) ui.resetLevel.handleMouseClick();
  if (showSettings) ui.settings.handleMouseClick();
  if (showCredits) ui.credits.handleMouseClick();
}
