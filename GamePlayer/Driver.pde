Player player;
Coin coin;

void setup() {
  size(800, 600);
  player = new Player(50, 50, color(255, 0, 0));
  coin = new Coin(300, 200);
}

void draw() {
  background(255);
  
  player.draw();
  coin.draw();
  
  if (keyPressed) {
    PVector direction = new PVector();
    if (key == 'w') { direction.y += -2; }
    if (key == 's') { direction.y += 2; }
    if (key == 'a') { direction.x += -2; }
    if (key == 'd') { direction.x += 2; }
    player.move(direction);
  }
  
  player.collectCoin(coin);
}
