class Checkbox {
  PVector position;
  float size;
  String label;
  boolean checked;
  color boxColor;
  color checkColor;
  color labelColor;

  Checkbox(float x, float y, float s, String l, color bc, color cc, color lc) {
    position = new PVector(x, y);
    size = s;
    label = l;
    checked = false;
    boxColor = bc;
    checkColor = cc;
    labelColor = lc;
  }

  void draw() {
    fill(boxColor);
    rect(position.x, position.y, size, size);
    
    if (checked) {
      fill(checkColor);
      rect(position.x + 3, position.y + 3, size - 6, size - 6);
    }
    
    fill(labelColor);
    textSize(12);
    textAlign(LEFT, CENTER);
    text(label, position.x + size + 10, position.y + size / 2);
  }

  boolean isMouseOver() {
    return mouseX >= position.x && mouseX <= position.x + size && mouseY >= position.y && mouseY <= position.y + size;
  }

  void handleMouseClick() {
    if (isMouseOver() && mousePressed && mouseButton == LEFT) {
      checked = !checked;
    }
  }
}
