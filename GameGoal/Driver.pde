GoalArea goalArea;

void setup() {
  size(800, 600);
  goalArea = new GoalArea(300, 200, 100, 100, color(0, 255, 0));
}

void draw() {
  background(255);
  goalArea.draw();
  
  // Check for mouse collision in the draw loop to update the goalArea state
  if (goalArea.isActive() && goalArea.collisionCheck()) {
    println("Reached Goal!");
    goalArea.deactivate();
  }
}

void mousePressed() {
  goalArea.activate(); // Ensure the goal area can be activated by other means if needed
}
