class GoalArea {
  PVector position;
  float width;
  float height;
  boolean isActive;
  color fillColor;

  // Constructor to initialize the goal area's position, size, and active state
  GoalArea(float x, float y, float w, float h, color col) {
    position = new PVector(x, y);
    width = w;
    height = h;
    isActive = true;  // Initially active to be visible
    fillColor = col;
  }

  // Method to draw the goal area on the screen
  void draw() {
    if (isActive) {
      fill(fillColor);
      rect(position.x, position.y, width, height);
    }
  }
  
  boolean isActive() {
    return isActive;
  }

  // Method to activate the goal area
  void activate() {
    isActive = true;
  }

  // Method to deactivate the goal area
  void deactivate() {
    isActive = false;
  }

  // Method to check if the mouse is within the goal area
  boolean collisionCheck() {
    if (mouseX > position.x && mouseX < position.x + width &&
        mouseY > position.y && mouseY < position.y + height) {
      return true;
    }
    return false;
  }
}
