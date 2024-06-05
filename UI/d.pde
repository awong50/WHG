MainMenu mainMenu;
boolean showMainMenu = true;

void setup() {
  size(800, 600);
  mainMenu = new MainMenu();
}

void draw() {
  if (showMainMenu) {
    mainMenu.display();
  } else {
    background(255);
    text("Game would go here", 100, 100);
  }
}

void mousePressed() {
  if (showMainMenu) {
    mainMenu.handleMouseClick();
  }
}
