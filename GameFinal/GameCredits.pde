class Credits {
  
  Button backToMenu;
  
  Credits() {
    backToMenu = new Button(new PVector(width - 60, height - 60), new PVector(60, 60), "Back", "r", color(119, 221, 119), color(0));
  }
  
  void display() {
    backToMenu.draw();
    
    textSize(24);
    text("Group Name: The World's Hardest Group", width / 2, height / 2 - 100);
    text("Names: Aidan Wong | William Wang", width / 2, height / 2 - 50);
    text("Period: 02", width / 2, height / 2);
    text("Emails: awong50@stuy.edu | wwang50@stuy.edu", width / 2, height / 2 + 50);
  }
  
  void handleMouseClick() {
    if (backToMenu.isMouseClicked()) {
      showCredits = false;
      showMainMenu = true;
    }
  }
  
}
