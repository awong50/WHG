Player player;
Coin coin;

void setup() {
  size(800, 600);
  player = new Player(50, 50);
  coin = new Coin(300, 200);
}

void draw() {
  background(255);
  
  player.draw();
  coin.draw();
}
