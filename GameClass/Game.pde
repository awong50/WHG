class Game {
  Player player;
  Level level;

  Game() {
    // Initialize player and level
    player = new Player(50, 50, color(255, 0, 0));

    ArrayList<Coin> coins = new ArrayList<Coin>();
    coins.add(new Coin(300, 200)); // Example coin position
    coins.add(new Coin(400, 250)); // Additional coins as needed

    GoalArea goalArea = new GoalArea(700, 500, 100, 100, color(0, 255, 0)); // Example goal area position

    ArrayList<Wall> walls = new ArrayList<Wall>();
    walls.add(new Wall(100, 100, 200, 200)); // Example wall position

    level = new Level(1, player, goalArea, coins, walls);
  }

  void update() {
    level.update();
  }

  void draw() {
    level.draw();
  }

  void keyPressed() {
    PVector direction = new PVector();
    if (key == 'w' || keyCode == UP) {
      direction.y = -2;
    } else if (key == 's' || keyCode == DOWN) {
      direction.y = 2;
    } else if (key == 'a' || keyCode == LEFT) {
      direction.x = -2;
    } else if (key == 'd' || keyCode == RIGHT) {
      direction.x = 2;
    }
    player.move(direction);
  }
}
