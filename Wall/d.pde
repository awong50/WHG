Player player;
Wall w1;
Wall w2;

void setup() {
  size(800, 600);
  player = new Player(20, 20, 255);
  w1 = new Wall(10, 10, 500, 500);
  w2 = new Wall(10, 10, 20, 20);
}

void draw() {
  background(255);
  
  w1.draw();
  w2.draw();
  
  player.draw();
  
  if (keyPressed) {
    PVector direction = new PVector();
    if (w1.collisionCheck(player)) {
      if (player.getPos().x == w1.getP(1).x && player.getPos().y == w1.getP(1).y) {
        if (key == 'w') direction.y += 0;
        if (key == 's') direction.y += 2;
        if (key == 'a') direction.x += 0;
        if (key == 'd') direction.x += 2;
      }
      if (player.getPos().x + 20 == w1.getP(1).x + w1.getP(2).x && player.getPos().y == w1.getP(1).y) {
        if (key == 'w') direction.y += 0;
        if (key == 's') direction.y += 2;
        if (key == 'a') direction.x += -2;
        if (key == 'd') direction.x += 0;
      }
      if (player.getPos().x == w1.getP(1).x && player.getPos().y + 20 == w1.getP(1).y + w1.getP(2).y) {
        if (key == 'w') direction.y += -2;
        if (key == 's') direction.y += 2;
        if (key == 'a') direction.x += 0;
        if (key == 'd') direction.x += 0;
      }
      if (player.getPos().x + 20 == w1.getP(1).x + w1.getP(2).x && player.getPos().y + 20 == w1.getP(1).y + w2.getP(2).y) {
        if (key == 'w') direction.y += -2;
        if (key == 's') direction.y += 0;
        if (key == 'a') direction.x += -2;
        if (key == 'd') direction.x += 0;
      }
      if (player.getPos().x == w1.getP(1).x) {
        if (key == 'w') direction.y += -2;
        if (key == 's') direction.y += 2;
        if (key == 'a') direction.x += 0;
        if (key == 'd') direction.x += 2;
      }
      if (player.getPos().x + 20 == w1.getP(1).x + w1.getP(2).x) {
        if (key == 'w') direction.y += -2;
        if (key == 's') direction.y += 2;
        if (key == 'a') direction.x += -2;
        if (key == 'd') direction.x += 0;
      }
      if (player.getPos().y == w1.getP(1).y) {
        if (key == 'w') direction.y += 0;
        if (key == 's') direction.y += 2;
        if (key == 'a') direction.x += -2;
        if (key == 'd') direction.x += 2;
      }
      if (player.getPos().y + 20 == w1.getP(1).y + w1.getP(2).y) {
        if (key == 'w') direction.y += -2;
        if (key == 's') direction.y += 0;
        if (key == 'a') direction.x += -2;
        if (key == 'd') direction.x += 2;
      }
    }
    else {
      if (key == 'w') direction.y += -2;
      if (key == 's') direction.y += 2;
      if (key == 'a') direction.x += -2;
      if (key == 'd') direction.x += 2;
    }
    player.move(direction);
  }
  System.out.println(w1.collisionCheck(player));
}
