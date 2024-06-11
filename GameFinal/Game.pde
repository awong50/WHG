class Game {
  Player player;
  ArrayList<Level> levels;
  boolean up, down, left, right; // Key presses

  Game() {
    levels = new ArrayList<Level>();
    player = new Player(50, 50, color(255, 0, 0));

    // Level 1
    ArrayList<Coin> coins1 = new ArrayList<Coin>();
    GoalArea goalArea1 = new GoalArea(300, 400, 100, 100, color(0, 255, 0));
    ArrayList<Wall> walls1 = new ArrayList<Wall>();
    walls1.add(new Wall(50, 50, 140, 60)); // Top wall
    walls1.add(new Wall(50, 50, 60, 500));
    walls1.add(new Wall(140, 50, 150, 400));
    
    walls1.add(new Wall(140, 400, 200, 410));
    
    
    walls1.add(new Wall(490, 10, 500, 500)); // Right wall
    walls1.add(new Wall(10, 490, 500, 500)); // Bottom wall
    ArrayList<Obstacle> obstacles1 = new ArrayList<Obstacle>();
    obstacles1.add(new Obstacle(new PVector(2, 0), 100, 100, 10, 490, 10, 490)); // Example obstacle
    Level levelOne = new Level(1, player, goalArea1, coins1, walls1, obstacles1);
    levels.add(levelOne);

    // Level 2
    ArrayList<Coin> coins2 = new ArrayList<Coin>();
    coins2.add(new Coin(150, 150));
    coins2.add(new Coin(250, 250));
    coins2.add(new Coin(350, 350));
    GoalArea goalArea2 = new GoalArea(500, 10, 200, 480, color(0, 255, 0));
    ArrayList<Wall> walls2 = new ArrayList<Wall>();
    walls2.add(new Wall(10, 10, 700, 20)); // Top wall
    walls2.add(new Wall(10, 10, 20, 500)); // Left wall
    walls2.add(new Wall(690, 10, 700, 500)); // Right wall
    walls2.add(new Wall(10, 490, 700, 500)); // Bottom wall
    ArrayList<Obstacle> obstacles2 = new ArrayList<Obstacle>();
    obstacles2.add(new Obstacle(new PVector(1, 1), 200, 200, 10, 690, 10, 490)); // Example obstacle
    Level levelTwo = new Level(2, player, goalArea2, coins2, walls2, obstacles2);
    levels.add(levelTwo);
  }

  void loadLevel(int level) {
    levels.get(level - 1).load();
  }

  void update(int level) {
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
    levels.get(level - 1).player.update(levels.get(level - 1).walls);
    levels.get(level - 1).update();
  }

  void draw(int level) {
    levels.get(level - 1).draw();
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

  void keyReleased(int level) {
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
    levels.get(level - 1).player.stop();
  }
}
