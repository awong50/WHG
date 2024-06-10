class MainMenu {
  
  Button startButton;
  Button exitButton;
  Button settingsButton;  

  MainMenu() {
    
    startButton = new Button(new PVector(width / 2 - 75, height / 2 - 30), new PVector(150, 60), "Start", "r", color(0, 255, 0), color(0));
    exitButton = new Button(new PVector(width / 2 - 75, height / 2 + 50), new PVector(150, 60), "Exit", "r", color(255, 0, 0), color(0));
  }

  void display() {
    background(200);
    fill(0);
    textAlign(CENTER);
    textSize(32);
    text("Main Menu", width / 2, height / 2 - 100);

    //s.display();
    startButton.draw();
    exitButton.draw();
  }
  
  boolean status(Button b) {
    return b.isMouseClicked();
  }

  void handleMouseClick() {
    //s.soundOption.handleMouseClick();
    if (status(startButton)) {
      showMainMenu = false;
      showLevelSelect = true;
    }

    if (status(exitButton)) {
      exit();
    }
  }
}
