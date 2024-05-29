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
    if (shape.equals("r")) {
      fill(backgroundColor);
      rect(position.x, position.y, size.x, size.y, 10);
      textSize(12);
      fill(labelColor);
      text(label, position.x + size.x/2, position.y + size.y/2);
      textAlign(CENTER);
    }
    if (shape.equals("e")) {
      fill(backgroundColor);
      ellipse(position.x, position.y, size.x, size.y);
      textSize(12);
      fill(labelColor);
      text(label, position.x, position.y);
      textAlign(CENTER);
    }

  }
  
  public boolean isMouseOver() {
    if (shape.equals("r")) {
      if ((mouseX <= position.x + size.x && position.x <= mouseX) && (mouseY >= position.y && position.y + size.y >= mouseY)) {
        return true;
      }
    }
    if (shape.equals("e")) {
      if ((mouseX <= position.x + size.x && mouseX >= position.x - size.x) && (mouseY <= position.y + size.y && mouseY >= position.y - size.y)) {
        return true;
      }
    }
    return false;
  }
  
  public boolean isMouseClicked() {
    if (mouseButton == LEFT) {
      return true;
    }
    return false;
  }
  
}
