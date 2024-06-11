class Game {
  Player player;
  Level level;
  boolean up, down, left, right;         // Key presses

  Game() {
    player = new Player(50, 50, color(255, 0, 0));

    ArrayList<Coin> coins = new ArrayList<Coin>();
    coins.add(new Coin(300, 200));
    coins.add(new Coin(400, 250));

    GoalArea goalArea = new GoalArea(300, 400, 100, 100, color(0, 255, 0));

    ArrayList<Wall> walls = new ArrayList<Wall>();
    walls.add(new Wall(10, 10, 500, 20)); // Top wall
    walls.add(new Wall(10, 10, 20, 500)); // Left wall
    walls.add(new Wall(490, 10, 500, 500)); // Right wall
    walls.add(new Wall(10, 490, 500, 500)); // Bottom wall

    level = new Level(1, player, goalArea, coins, walls);
  }

  void update() {
    PVector direction = new PVector(0, 0);
    if (up) {
      direction.y = -1;
    }
    if (down) {
      direction.y = 1;
    }
    if (left) {
      direction.x = -1;
    }
    if (right) {
      direction.x = 1;
    }
    player.move(direction);
    player.update(level.walls);
    level.update();
  }

  void draw() {
    level.draw();
  }

  void keyPressed() {
    if (key == 'w' || keyCode == UP) {
      up = true;
    }
    if (key == 's' || keyCode == DOWN) {
      down = true;
    }
    if (key == 'a' || keyCode == LEFT) {
      left = true;
    }
    if (key == 'd' || keyCode == RIGHT) {
      right = true;
    }
  }

  void keyReleased() {
    if (key == 'w' || keyCode == UP) {
      up = false;
    }
    if (key == 's' || keyCode == DOWN) {
      down = false;
    }
    if (key == 'a' || keyCode == LEFT) {
      left = false;
    }
    if (key == 'd' || keyCode == RIGHT) {
      right = false;
    }
    player.stop();
  }
}
