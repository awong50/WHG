/*

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
}*/

UI u;
boolean showMainMenu = false;
boolean showLevelSelect = false;
boolean showResetLevel = false;
boolean showSettings = false;

void setup() {
  size(800, 600);
  u = new UI();
}

void draw() {
  u.draw();
}
