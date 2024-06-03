Checkbox soundCheckbox;

void setup() {
  size(800, 600);
  soundCheckbox = new Checkbox(350, 250, 20, "Enable Sound", color(255), color(0, 255, 0), color(0));
}

void draw() {
  background(220);
  fill(0);
  textAlign(CENTER);
  textSize(32);
  text("Checkbox Test", width / 2, 100);

  soundCheckbox.draw();
}

void mousePressed() {
  soundCheckbox.handleMouseClick();
}
