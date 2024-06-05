Game game;

void setup() {
  size(800, 600);
  game = new Game();
}

void draw() {
  background(255);
  game.update();
  game.draw();
}

void keyPressed() {
  game.keyPressed();
}
