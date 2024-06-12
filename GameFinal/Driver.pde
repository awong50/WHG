Game game;
UI ui;
boolean showMainMenu = true;
boolean showLevelSelect = false;
boolean showResetLevel = false;
boolean showSettings = false;
boolean showCredits = false;
boolean showGame = false;
int currentLevel; // Keep track of the current level
import ddf.minim.*;

Minim minim = new Minim(this);
SoundManager soundManager = new SoundManager(minim);

void setup() {
  size(800, 600);
  ui = new UI();
  showMainMenu = true;
  showLevelSelect = false;
  showGame = false;
  game = new Game();
  currentLevel = 0; // Initialize to zero (no level selected)
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
  else if (showGame) {
    background(255);
    game.update(currentLevel);
    game.draw(currentLevel);
  }
}

void keyPressed() {
  if (showGame) {
    game.keyPressed();
  }
}

void keyReleased() {
  if (showGame) {
    game.keyReleased(currentLevel);
  }
}

void mousePressed() {
  if (showMainMenu) ui.mainMenu.handleMouseClick();
  if (showLevelSelect) ui.levelSelect.handleMouseClick();
  if (showResetLevel) ui.resetLevel.handleMouseClick();
  if (showSettings) ui.settings.handleMouseClick();
  if (showCredits) ui.credits.handleMouseClick();
}
