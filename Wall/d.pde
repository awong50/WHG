Player player;
Wall w1;
Wall w2;

void setup() {
  size(800, 600);
  player = new Player(50, 50, 255);
  w1 = new Wall(10, 10, 500, 500);
  w2 = new Wall(510, 250, 50, 50);
}

void draw() {
  background(255);
  
  w2.draw();
  w1.draw();
  player.draw();
}
