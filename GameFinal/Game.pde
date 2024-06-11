class Game {
  
  ArrayList<Level> levels;
  boolean up, down, left, right; // Key presses

  Game() {
    levels = new ArrayList<Level>();
    Player playerOne = new Player(70, 70, color(255, 0, 0));

    // Level 1
    ArrayList<Coin> coins1 = new ArrayList<Coin>();
    GoalArea goalArea1 = new GoalArea(560, 50, 100, 360, color(0, 255, 0));
    ArrayList<Wall> walls1 = new ArrayList<Wall>();
    walls1.add(new Wall(50, 300, 140, 310)); // Top wall
    walls1.add(new Wall(50, 300, 60, 500)); // W
    walls1.add(new Wall(140, 300, 150, 400)); // W
    walls1.add(new Wall(140, 400, 200, 410)); // W
    walls1.add(new Wall(200, 200, 210, 410)); // W
    walls1.add(new Wall(210, 200, 550, 210)); // W
    walls1.add(new Wall(550, 50, 560, 210));  
    walls1.add(new Wall(560, 50, 660, 60)); 
    walls1.add(new Wall(660, 50, 670, 410));
    walls1.add(new Wall(560, 400, 670, 410)); 
    walls1.add(new Wall(550, 250, 560, 410));
    walls1.add(new Wall(520, 250, 550, 260));
    walls1.add(new Wall(520, 260, 530, 500));
    walls1.add(new Wall(50, 500, 530, 510));
    
    
    ArrayList<Obstacle> obstacles1 = new ArrayList<Obstacle>();
    obstacles1.add(new Obstacle(new PVector(2, 0), 100, 100, 10, 490, 10, 490)); // Example obstacle
    Level levelOne = new Level(1, playerOne, goalArea1, coins1, walls1, obstacles1);
    levels.add(levelOne);

    // Level 2
    
    Player playerTwo = new Player(70, 50, color(255, 0, 0));
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
    Level levelTwo = new Level(2, playerTwo, goalArea2, coins2, walls2, obstacles2);
    levels.add(levelTwo);
  }

  void loadLevel(int level) {
    levels.get(level - 1).load();
  }

  void update(int level) {
    PVector direction = new PVector(0, 0);
    if (up) {
      direction.y = -10;
    }
    if (down) {
      direction.y = 10;
    }
    if (left) {
      direction.x = -10;
    }
    if (right) {
      direction.x = 10;
    }
    levels.get(level - 1).player.move(direction);
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
