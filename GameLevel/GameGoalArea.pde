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
    isActive = true;  
    fillColor = col;
  }

  void draw() {
    if (isActive) {
      fill(fillColor);
      rect(position.x, position.y, width, height);
    }
  }
  
  boolean isActive() {
    return isActive;
  }

  void activate() {
    isActive = true;
  }

  void deactivate() {
    isActive = false;
  }

  boolean collisionCheck(Player player) {
    if (player.position.x > position.x && player.position.x < position.x + width &&
    player.position.y > position.y && player.position.y < position.y + height) {
      return true;
    }
    return false;
  }
}
