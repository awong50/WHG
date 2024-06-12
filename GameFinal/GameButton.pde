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
    soundManager.addSoundEffect("boop", dataPath("select.mp3"));  
  }
  
  void draw() {
    textAlign(CENTER, CENTER);
    textSize(12);

    if (shape.equals("r")) {
      fill(backgroundColor);
      rect(position.x, position.y, size.x, size.y, 10);
      fill(labelColor);
      text(label, position.x + size.x / 2, position.y + size.y / 2);
    } else if (shape.equals("e")) {
      fill(backgroundColor);
      ellipse(position.x, position.y, size.x, size.y);
      fill(labelColor);
      text(label, position.x, position.y);
    }
  }
  public boolean isMouseOver() {
    if (shape.equals("r")) {
      return (mouseX >= position.x && mouseX <= position.x + size.x && mouseY >= position.y && mouseY <= position.y + size.y);
    } else if (shape.equals("e")) {
      float dx = mouseX - position.x;
      float dy = mouseY - position.y;
      float distance = sqrt(dx * dx + dy * dy);
      return distance <= size.x / 2;
    }
    return false;
  }
  
  public boolean isMouseClicked() {
    if (ui.settings.soundOption.checked) {
      soundManager.playSoundEffect("boop");
    } 
    return isMouseOver() && mousePressed && mouseButton == LEFT;

  }
  
  public void setFillColor(color c) {
    backgroundColor = c;
  }
}
