ResetLevel r;

void setup() {
  size(800, 600);
  
  r = new ResetLevel();
}

void draw() {
  background(255);
  
  r.draw();
  System.out.println("status for reset: " + r.display(r.resetButton));
  System.out.println("status for exit: " + r.display(r.exitButton));
}
