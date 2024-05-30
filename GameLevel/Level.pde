class Level {
  int number;
  Player player;
  ArrayList<Coin> coins;
  GoalArea goalArea;
  
  Level(int number, Player player, GoalArea goalArea, ArrayList<Coin> coins) {
    this.number = number;
    this.player = player;
    this.coins = coins;
    this.goalArea = goalArea;
  }
  
  void load() {
    player.resetPosition(50, 50);
  }
  
  void update() {
    for (Coin coin: coins) {
      player.collectCoin(coin);
    }
    if (goalArea.collisionCheck(player)) {
      System.out.println("Goal Reached");
      goalArea.deactivate();
    }
  }
  
  boolean isCompleted() {
    return !goalArea.isActive();
  }
  
  void draw() {
    player.draw();
    for (Coin coin: coins) {
      coin.draw();
    }
  }
}

    
    
  
  
