MainMenu mainMenu;
Game game;
boolean showMainMenu = true;

void setup() {
  size(800, 600);
  mainMenu = new MainMenu();
  game = new Game();
}

void draw() {
  if (showMainMenu) {
    mainMenu.display();
  } else {
    background(255);
    game.update();
    game.draw();
  }
}

void mousePressed() {
  if (showMainMenu) {
    mainMenu.handleMouseClick();
  }
}

void keyPressed() {
  if (!showMainMenu) {
    game.keyPressed();
  }
}

void keyReleased() {
  if (!showMainMenu) {
    game.keyReleased();
  }
}
