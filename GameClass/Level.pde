class Level {
  int number;
  Player player;
  ArrayList<Coin> coins;
  GoalArea goalArea;
  ArrayList<Wall> walls;
  
  Level(int number, Player player, GoalArea goalArea, ArrayList<Coin> coins, ArrayList<Wall> walls) {
    this.number = number;
    this.player = player;
    this.coins = coins;
    this.goalArea = goalArea;
    this.walls = walls;
  }
  
  void load() {
    player.resetPosition(50, 50);
  }
  
  void update() {
    for (Coin coin: coins) {
      player.collectCoin(coin);
    }
    for (Wall wall: walls) {
      wall.draw();
    }
    if (player.coinCount == coins.size()) {
      goalArea.setCoinsCollected(true);
    }
    
    if (goalArea.collisionCheck(player) && goalArea.allCoinsCollected) {
      System.out.println("Goal Reached");
      goalArea.deactivate();
    }
  }
  
  boolean isCompleted() {
    return !goalArea.isActive();
  }
  
  void draw() {
    goalArea.draw();
    player.draw();
    for (Coin coin: coins) {
      coin.draw();
    }
  }
}

    
    
  
  
