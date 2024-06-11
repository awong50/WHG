Game game;
UI ui;
boolean showMainMenu;
boolean showLevelSelect;
boolean showGame;
boolean showResetLevel;
int currentLevel; // Keep track of the current level

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
  System.out.println("MouseX: " + mouseX + " | MouseY: " + mouseY);
  if (showMainMenu) {
    ui.showMainMenu();
  }
  else if (showLevelSelect) {
    background(255);
    ui.showLevelSelect();
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
