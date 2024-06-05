Player player;
Obstacle o1;

void setup() {
  size(800, 600);
  player = new Player(20, 20, 255);
  o1 = new Obstacle(new PVector(5, 0), 100, 100);
}

void draw() {
  background(255);
  
  player.draw();
  o1.draw();
  player.move(player.v());
  o1.move();
  PVector p = new PVector(width,100);
  o1.resetPosition(new PVector(0, 100));
  o1.resetPosition(p);
  if (o1.collisionCheck(player)) player.resetPosition(20, 20);
}
