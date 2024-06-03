LevelSelect l;

void setup() {
  size(800, 600);
  
  l = new LevelSelect();
  color white = color(255);
  color black = color(0);
  l.levelButtons[0] = new Button(new PVector(50, 50), new PVector(100, 100), "Level 1", "r", white, black);
  l.levelButtons[1] = new Button(new PVector(500, 500), new PVector(100, 100), "Level 2", "r", white, black);
}

void draw() {
  background(255);
  
  l.display();
  for (Button b : l.levelButtons) {
    System.out.println(b + " : " + l.status(b));
  }
}
