Player player;
Wall w1;
Wall w2;

void setup() {
  size(800, 600);
  player = new Player(50, 50, 255);
  w1 = new Wall(10, 10, 500, 500);
}

void draw() {
  background(255);
  
  w1.draw();
  player.draw();
  
  if (keyPressed) {
    PVector direction = new PVector();\
    if (w1.collision
    if (key == 'w') { direction.y += -2; }
    if (key == 's') { direction.y += 2; }
    if (key == 'a') { direction.x += -2; }
    if (key == 'd') { direction.x += 2; }
    player.move(direction);
  }
  System.out.println(w1.collisionCheck(player));
}
