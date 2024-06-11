class Level {
  int number;
  Player player;
  ArrayList<Coin> coins;
  GoalArea goalArea;
  ArrayList<Wall> walls;
  ArrayList<Obstacle> obstacles; // Add a list of obstacles

  Level(int number, Player player, GoalArea goalArea, ArrayList<Coin> coins, ArrayList<Wall> walls, ArrayList<Obstacle> obstacles) {
    this.number = number;
    this.player = player;
    this.coins = coins;
    this.goalArea = goalArea;
    this.walls = walls;
    this.obstacles = obstacles; // Initialize obstacles
  }

  void load() {
    player.resetPosition(player.start.x, player.start.y);
  }

  void update() {
    player.update(walls);

    for (Coin coin : coins) {
      player.collectCoin(coin);
    }

    for (Obstacle obstacle : obstacles) {
      obstacle.move();
      if (obstacle.collisionCheck(player)) {
        println("Player hit an obstacle!");
        // Handle what happens when player hits an obstacle (e.g., reset player position)
        player.resetPosition(player.start.x, player.start.y);
      }
    }

    if (player.coinCount == coins.size()) {
      goalArea.setCoinsCollected(true);
    }

    if (goalArea.collisionCheck(player) && goalArea.allCoinsCollected) {
      println("Goal Reached");
      goalArea.deactivate();
      showMainMenu = true;
    }
  }

  boolean isCompleted() {
    return !goalArea.isActive();
  }

  void draw() {
    background(200); // Adjust this as needed
    goalArea.draw();
    player.draw();
    for (Wall wall : walls) {
      wall.draw();
    }
    for (Coin coin : coins) {
      coin.draw();
    }
    for (Obstacle obstacle : obstacles) {
      obstacle.draw();
    }
  }
}
