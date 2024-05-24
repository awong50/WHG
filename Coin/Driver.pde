PImage coinImage;
Coin coin;

void setup() {
  size(800,  600);
  coinImage = loadImage("coin.png");
  coin = new Coin(100, 100, coinImage);
}

void draw() {
  background(255);
  coin.draw();
}

void mousePressed() {         // to test coin collect function
  if (dist(mouseX, mouseY, coin.position.x + coin.image.width / 2, coin.position.y + coin.image.height / 2) < coin.image.width / 2) {
    coin.collect();
  }
}
