Player player;
Obstacle o1;

void setup() {
  size(800, 600);
  player = new Player(50, 50, 255);
  PVector p = new PVector(10, 10);
  o1 = new Obstacle(p, 100, 90);
}

void draw() {
  background(255);
  
  o1.draw();
  o1.move();
  player.draw();
  if (o1.getPos().x == width || o1.getPos().y == height || o1.getPos().x == 0 || o1.getPos().y == 0) o1.resetPosition();
}
