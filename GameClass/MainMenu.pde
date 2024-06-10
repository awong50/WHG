class MainMenu {
  Button startButton;
  Button exitButton;

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

    startButton.draw();
    exitButton.draw();
  }

  void handleMouseClick() {
    if (startButton.isMouseClicked()) {
      println("Start button clicked!");
      showMainMenu = false;
    }

    if (exitButton.isMouseClicked()) {
      println("Exit button clicked!");
      exit();
    }
  }
}
