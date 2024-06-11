class MainMenu {
  
  Button startButton;
  Button exitButton;
  Button settings;
  Button credits;

  MainMenu() {
    startButton = new Button(new PVector(width / 2 - 200, height / 2), new PVector(100, 60), "Start", "r", color(0, 255, 0), color(0));
    credits = new Button(new PVector(width / 2 - 50, height / 2), new PVector(100, 60), "Credits", "r", color(145, 221, 242), color(0));
    settings = new Button(new PVector(width / 2 +100, height / 2), new PVector(100, 60), "Settings", "r", color(253, 253, 150), color(0));
    exitButton = new Button(new PVector(width / 2 - 50, height / 2 + 100), new PVector(100, 60), "Exit", "r", color(255, 0, 0), color(0));
  }

  void display() {
    fill(0);
    textAlign(CENTER);
    textSize(32);
    text("The World's Hardest Game", width / 2, height / 2 - 100);
    
    credits.draw();
    settings.draw();
    startButton.draw();
    exitButton.draw();
  }
  
  boolean status(Button b) {
    return b.isMouseClicked();
  }

  void handleMouseClick() {
    if (status(startButton)) {
      showMainMenu = false;
      showLevelSelect = true;
    }
    if (status(exitButton)) {
      exit();
    }
    if (status(settings)) {
      showMainMenu = false;
      showSettings = true;
    }
    if (status(credits)) {
      showMainMenu = false;
      showCredits = true;
    }
  }
}
