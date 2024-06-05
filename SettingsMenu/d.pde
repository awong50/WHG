Settings s;

void setup() {
  size(800, 600);
  s = new Settings();
}

void draw() {
  background(255);
  
  s.draw();
  System.out.println(s.status());
}

void mousePressed() {
  s.soundOption.handleMouseClick();
}
