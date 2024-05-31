Player player;
Wall w1;

void setup() {
  size(800, 600);
  player = new Player(20, 20, 255);
  w1 = new Wall(10, 10, 500, 500);
}

void draw() {
  background(255);
  
  w1.draw();
  
  player.draw();
  player.move(player.wallCollision(w1));
}
