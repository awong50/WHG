class Button {
 
  private PVector position;
  private PVector size;
  private String label;
  private String shape;
  private color backgroundColor;
  private color labelColor;
  
  public Button(PVector pos, PVector s, String l, String str, color c1, color c2) {
    position = pos;
    size = s;
    label = l;
    shape = str;
    backgroundColor = c1;
    labelColor = c2;
  }
  
  void draw() {
    String[] shapes = new String[] {"r", "e"};
    if (shape.equals(shapes[0])) {
      color(backgroundColor);
      rect(position.x, position.y, size.x, size.y);
      textSize(12);
      fill(labelColor);
      text(label, position.x, position.y, position.x + size.x, position.y + size.y);
      textAlign(CENTER);
    }
    if (shape.equals(shapes[1])) {
      color(backgroundColor);
      ellipse(position.x, position.y, size.x, size.y);
      textSize(12);
      fill(labelColor);
      text(label, position.x, position.y, position.x + size.x, position.y + size.y);
      textAlign(CENTER);
    }
  }
  
  public boolean isMouseOver() {
    if (mouseX == 1) {
    return true;
  }
    return false;
  }
  
}
