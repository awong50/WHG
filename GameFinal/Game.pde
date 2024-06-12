class Game {
  Player player1, player2, player3, player4, player5;
  ArrayList<Level> levels;
  boolean up, down, left, right; // Key presses
  Button pause;
  Button levelSelect;

  Game() {
    pause = new Button(new PVector(width - 50, height - 50), new PVector(50, 50), "Pause", "r", color(164, 216, 216), color(0));
    
    int o = 3;
    levels = new ArrayList<Level>();
    player1 = new Player(85, 345, color(255, 0, 0));

    // Level 1
    ArrayList<Coin> coins1 = new ArrayList<Coin>();
    GoalArea goalArea1 = new GoalArea(560, 50, 100, 360, color(0, 255, 0));
    ArrayList<Wall> walls1 = new ArrayList<Wall>();
    walls1.add(new Wall(50, 300, 140, 310));
    walls1.add(new Wall(50, 300, 60, 500));
    walls1.add(new Wall(140, 300, 150, 400));
    walls1.add(new Wall(140, 400, 200, 410));
    walls1.add(new Wall(200, 200, 210, 410));
    walls1.add(new Wall(210, 200, 550, 210));
    walls1.add(new Wall(550, 50, 560, 210));  
    walls1.add(new Wall(560, 50, 660, 60)); 
    walls1.add(new Wall(660, 50, 670, 410));
    walls1.add(new Wall(560, 400, 670, 410)); 
    walls1.add(new Wall(550, 250, 560, 410));
    walls1.add(new Wall(520, 250, 550, 260));
    walls1.add(new Wall(520, 260, 530, 500));
    walls1.add(new Wall(50, 500, 530, 510));
    ArrayList<Obstacle> obstacles1 = new ArrayList<Obstacle>();
    obstacles1.add(new Obstacle(new PVector(o, 0), 230, 230, 210, 520, 0, 0));
    obstacles1.add(new Obstacle(new PVector(-o, 0), 500, 270, 210, 520, 0, 0));
    obstacles1.add(new Obstacle(new PVector(o, 0), 230, 310, 210, 520, 0, 0));
    obstacles1.add(new Obstacle(new PVector(-o, 0), 500, 350, 210, 520, 0, 0));
    obstacles1.add(new Obstacle(new PVector(o, 0), 230, 390, 210, 520, 0, 0));
    obstacles1.add(new Obstacle(new PVector(-o, 0), 500, 430, 210, 520, 0, 0));
    obstacles1.add(new Obstacle(new PVector(o, 0), 230, 470, 210, 520, 0, 0));
    Level level1 = new Level(1, player1, goalArea1, coins1, walls1, obstacles1);
    levels.add(level1);
    
    // Level 2
    player2 = new Player(400, 415, color(255, 0, 0));
    ArrayList<Coin> coins2 = new ArrayList<Coin>();
    GoalArea goalArea2 = new GoalArea(width/2 - 55, 5, 110, 110, color(0, 255, 0));
    ArrayList<Wall> walls2 = new ArrayList<Wall>();
    // Goal Area Walls
    walls2.add(new Wall(width/2 - 55, 5, width/2 + 55, 10));
    walls2.add(new Wall(width/2 - 55, 10, width/2 - 50, 110));
    walls2.add(new Wall(width/2 + 50, 10, width/2 + 55, 110));
    // Map Walls
    walls2.add(new Wall(width/2 - 300, 110, width/2 - 50, 115));
    walls2.add(new Wall(width/2 + 50, 110, width/2 + 300, 115));
    walls2.add(new Wall(width/2 - 305, 110, width/2 - 300, 365));
    walls2.add(new Wall(width/2 + 300, 110, width/2 + 305, 365));
    walls2.add(new Wall(width/2 - 305, 365, width/2 - 50, 370));
    walls2.add(new Wall(width/2 + 50, 365, width/2 + 305, 370));
    // Spawn Area
    walls2.add(new Wall(width/2 - 55, 370, width/2 - 50, 470));
    walls2.add(new Wall(width/2 + 50, 370, width/2 + 55, 470));
    walls2.add(new Wall(width/2 - 55, 470, width/2 + 55, 475));
    // Obstacles
    ArrayList<Obstacle> obstacles2 = new ArrayList<Obstacle>();
    // Vertical Obstacles
    obstacles2.add(new Obstacle(new PVector(0, o), 120, 345, 0, 0, 114, 366));
    obstacles2.add(new Obstacle(new PVector(0, -o), 160, 135, 0, 0, 114, 366));
    obstacles2.add(new Obstacle(new PVector(0, o), 200, 345, 0, 0, 114, 366));
    obstacles2.add(new Obstacle(new PVector(0, -o), 240, 135, 0, 0, 114, 366));
    obstacles2.add(new Obstacle(new PVector(0, o), 280, 345, 0, 0, 114, 366));
    obstacles2.add(new Obstacle(new PVector(0, -o), 320, 135, 0, 0, 114, 366));
    obstacles2.add(new Obstacle(new PVector(0, o), 360, 345, 0, 0, 114, 366));
    obstacles2.add(new Obstacle(new PVector(0, -o), 400, 135, 0, 0, 114, 366));
    obstacles2.add(new Obstacle(new PVector(0, o), 440, 345, 0, 0, 114, 366));
    obstacles2.add(new Obstacle(new PVector(0, -o), 480, 135, 0, 0, 114, 366));
    obstacles2.add(new Obstacle(new PVector(0, o), 520, 345, 0, 0, 114, 366));
    obstacles2.add(new Obstacle(new PVector(0, -o), 560, 135, 0, 0, 114, 366));
    obstacles2.add(new Obstacle(new PVector(0, o), 600, 345, 0, 0, 114, 366));
    obstacles2.add(new Obstacle(new PVector(0, -o), 640, 135, 0, 0, 114, 366));
    obstacles2.add(new Obstacle(new PVector(0, o), 680, 345, 0, 0, 114, 366));
    // Horizontal Obstacles
    obstacles2.add(new Obstacle(new PVector(o, 0), 120, 135, 99, 701, 0, 0));
    obstacles2.add(new Obstacle(new PVector(-o, 0), 680, 175, 99, 701, 0, 0));
    obstacles2.add(new Obstacle(new PVector(o, 0), 120, 215, 99, 701, 0, 0));
    obstacles2.add(new Obstacle(new PVector(-o, 0), 680, 255, 99, 701, 0, 0));
    obstacles2.add(new Obstacle(new PVector(o, 0), 120, 295, 99, 701, 0, 0));
    obstacles2.add(new Obstacle(new PVector(-o, 0), 680, 345, 99, 701, 0, 0));
    Level level2 = new Level(2, player2, goalArea2, coins2, walls2, obstacles2);
    levels.add(level2);
    
    // Level 3
    player3 = new Player(75, 420, color(255, 0, 0));
    ArrayList<Coin> coins3 = new ArrayList<Coin>();
    coins3.add(new Coin(275, 170));
    coins3.add(new Coin(540, 420));
    GoalArea goalArea3 = new GoalArea(620, 135, 50, 60, color(0, 255, 0));
    ArrayList<Wall> walls3 = new ArrayList<Wall>();
    walls3.add(new Wall(50, 450, 100, 455));
    walls3.add(new Wall(45, 400, 50, 455));
    walls3.add(new Wall(100, 400, 105, 455));
    walls3.add(new Wall(45, 195, 50, 400));
    walls3.add(new Wall(45, 190, 250, 195));
    walls3.add(new Wall(245, 140, 250, 190));
    walls3.add(new Wall(245, 135, 300, 140));
    walls3.add(new Wall(300, 135, 305, 190));
    walls3.add(new Wall(300, 190, 620, 195));
    walls3.add(new Wall(615, 140, 620, 190));
    walls3.add(new Wall(615, 135, 670, 140));
    walls3.add(new Wall(670, 135, 675, 395));
    walls3.add(new Wall(570, 395, 675, 400));
    walls3.add(new Wall(565, 395, 570, 450));
    walls3.add(new Wall(515, 445, 565, 450));
    walls3.add(new Wall(515, 395, 520, 450));
    walls3.add(new Wall(100, 395, 515, 400));
    ArrayList<Obstacle> obstacles3 = new ArrayList<Obstacle>();
    // Horizontal Obstacles
    obstacles3.add(new Obstacle(new PVector(o, 0), 65, 375, 50, 670, 0, 0));
    obstacles3.add(new Obstacle(new PVector(-o, 0), 655, 335, 50, 670, 114, 366));
    obstacles3.add(new Obstacle(new PVector(o, 0), 65, 295, 50, 670, 0, 0));
    obstacles3.add(new Obstacle(new PVector(-o, 0), 655, 255, 50, 670, 114, 366));
    obstacles3.add(new Obstacle(new PVector(o, 0), 65, 215, 50, 670, 0, 0));
    // Vertical Obstacles
    obstacles3.add(new Obstacle(new PVector(0, o), 65, 215, 0, 0, 195, 395));
    obstacles3.add(new Obstacle(new PVector(0, -o), 105, 375, 0, 0, 195, 395));
    obstacles3.add(new Obstacle(new PVector(0, o), 145, 215, 0, 0, 195, 395));
    obstacles3.add(new Obstacle(new PVector(0, -o), 185, 375, 0, 0, 195, 395));
    obstacles3.add(new Obstacle(new PVector(0, o), 225, 215, 0, 0, 195, 395));
    obstacles3.add(new Obstacle(new PVector(0, -o), 265, 375, 0, 0, 195, 395));
    obstacles3.add(new Obstacle(new PVector(0, o), 305, 215, 0, 0, 195, 395));
    obstacles3.add(new Obstacle(new PVector(0, -o), 345, 375, 0, 0, 195, 395));
    obstacles3.add(new Obstacle(new PVector(0, o), 385, 215, 0, 0, 195, 395));
    obstacles3.add(new Obstacle(new PVector(0, -o), 425, 375, 0, 0, 195, 395));
    obstacles3.add(new Obstacle(new PVector(0, o), 465, 215, 0, 0, 195, 395));
    obstacles3.add(new Obstacle(new PVector(0, -o), 505, 375, 0, 0, 195, 395));
    obstacles3.add(new Obstacle(new PVector(0, o), 545, 215, 0, 0, 195, 395));
    obstacles3.add(new Obstacle(new PVector(0, -o), 595, 375, 0, 0, 195, 395));
    obstacles3.add(new Obstacle(new PVector(0, o), 635, 215, 0, 0, 195, 395));
    Level level3 = new Level(3, player3, goalArea3, coins3, walls3, obstacles3);
    levels.add(level3);
    
    // Level 4
    player4 = new Player(190, 250, color(255, 0, 0));
    ArrayList<Coin> coins4 = new ArrayList<Coin>();
    GoalArea goalArea4 = new GoalArea(635, 200, 85, 120, color(0, 255, 0));
    ArrayList<Wall> walls4 = new ArrayList<Wall>();
    walls4.add(new Wall(150, 200, 155, 320));
    walls4.add(new Wall(150, 195, 235, 200));
    walls4.add(new Wall(230, 150, 235, 195));
    walls4.add(new Wall(235, 150, 640, 155));
    walls4.add(new Wall(635, 155, 640, 200));
    walls4.add(new Wall(640, 195, 725, 200));
    walls4.add(new Wall(720, 200, 725, 325));
    walls4.add(new Wall(635, 320, 720, 325));
    walls4.add(new Wall(635, 325, 640, 370));
    walls4.add(new Wall(230, 365, 635, 370));
    walls4.add(new Wall(230, 320, 235, 365));
    walls4.add(new Wall(150, 320, 230, 325));
    ArrayList<Obstacle> obstacles4 = new ArrayList<Obstacle>();
    obstacles4.add(new Obstacle(new PVector(0, o), 255, 175, 0, 0, 155, 365));
    obstacles4.add(new Obstacle(new PVector(0, -o), 295, 345, 0, 0, 155, 365));
    obstacles4.add(new Obstacle(new PVector(0, o), 335, 175, 0, 0, 155, 365));
    obstacles4.add(new Obstacle(new PVector(0, -o), 375, 345, 0, 0, 155, 365));
    obstacles4.add(new Obstacle(new PVector(0, o), 415, 175, 0, 0, 155, 365));
    obstacles4.add(new Obstacle(new PVector(0, -o), 455, 345, 0, 0, 155, 365));
    obstacles4.add(new Obstacle(new PVector(0, o), 495, 175, 0, 0, 155, 365));
    obstacles4.add(new Obstacle(new PVector(0, -o), 535, 345, 0, 0, 155, 365));
    obstacles4.add(new Obstacle(new PVector(0, o), 575, 175, 0, 0, 155, 365));
    obstacles4.add(new Obstacle(new PVector(0, -o), 615, 345, 0, 0, 155, 365));
    obstacles4.add(new Obstacle(new PVector(o, -o), 255, 175, 235, 635, 155, 365));
    obstacles4.add(new Obstacle(new PVector(-o, o), 255, 345, 235, 635, 155, 365));
    Level level4 = new Level(4, player4, goalArea4, coins4, walls4, obstacles4);
    levels.add(level4);
    
    // Level 5
    player5 = new Player(670, 130, color(255, 0, 0));
    ArrayList<Coin> coins5 = new ArrayList<Coin>();
    coins5.add(new Coin(350, 390));
    coins5.add(new Coin(365, 390));
    coins5.add(new Coin(380, 390));
    coins5.add(new Coin(395, 390));
    coins5.add(new Coin(410, 390));
    coins5.add(new Coin(350, 405));
    coins5.add(new Coin(365, 405));
    coins5.add(new Coin(380, 405));
    coins5.add(new Coin(395, 405));
    coins5.add(new Coin(410, 405));
    coins5.add(new Coin(350, 420));
    coins5.add(new Coin(365, 420));
    coins5.add(new Coin(380, 420));
    coins5.add(new Coin(395, 420));
    coins5.add(new Coin(410, 420));
    coins5.add(new Coin(350, 435));
    coins5.add(new Coin(365, 435));
    coins5.add(new Coin(380, 435));
    coins5.add(new Coin(395, 435));
    coins5.add(new Coin(410, 435));
    coins5.add(new Coin(350, 450));
    coins5.add(new Coin(365, 450));
    coins5.add(new Coin(380, 450));
    coins5.add(new Coin(395, 450));
    coins5.add(new Coin(410, 450));
    GoalArea goalArea5 = new GoalArea(80, 100, 80, 85, color(0, 255, 0));
    ArrayList<Wall> walls5 = new ArrayList<Wall>();
    walls5.add(new Wall(640, 95, 725, 100));
    walls5.add(new Wall(720, 100, 725, 470));
    walls5.add(new Wall(75, 465, 720, 470));
    walls5.add(new Wall(75, 95, 80, 465));
    walls5.add(new Wall(80, 95, 165, 100));
    walls5.add(new Wall(160, 100, 165, 185));
    walls5.add(new Wall(165, 180, 640, 185));
    walls5.add(new Wall(635, 95, 640, 180));
    ArrayList<Obstacle> obstacles5 = new ArrayList<Obstacle>();
    obstacles5.add(new Obstacle(new PVector(o, 0), 100, 205, 80, 720, 0, 0));
    obstacles5.add(new Obstacle(new PVector(-o, 0), 700, 245, 80, 720, 0, 0));
    obstacles5.add(new Obstacle(new PVector(o, 0), 100, 285, 80, 720, 0, 0));
    obstacles5.add(new Obstacle(new PVector(-o, 0), 700, 325, 80, 720, 0, 0));
    obstacles5.add(new Obstacle(new PVector(o, 0), 100, 365, 80, 720, 0, 0));
    obstacles5.add(new Obstacle(new PVector(-o, 0), 700, 405, 80, 720, 0, 0));
    obstacles5.add(new Obstacle(new PVector(o, 0), 100, 445, 80, 720, 0, 0));
    obstacles5.add(new Obstacle(new PVector(0, o), 100, 205, 0, 0, 185, 465));
    obstacles5.add(new Obstacle(new PVector(0, -o), 140, 445, 0, 0, 185, 465));
    obstacles5.add(new Obstacle(new PVector(0, o), 180, 205, 0, 0, 185, 465));
    obstacles5.add(new Obstacle(new PVector(0, -o), 220, 445, 0, 0, 185, 465));
    obstacles5.add(new Obstacle(new PVector(0, o), 260, 205, 0, 0, 185, 465));
    obstacles5.add(new Obstacle(new PVector(0, -o), 300, 445, 0, 0, 185, 465));
    obstacles5.add(new Obstacle(new PVector(0, o), 340, 205, 0, 0, 185, 465));
    obstacles5.add(new Obstacle(new PVector(0, -o), 380, 445, 0, 0, 185, 465));
    obstacles5.add(new Obstacle(new PVector(0, o), 420, 205, 0, 0, 185, 465));
    obstacles5.add(new Obstacle(new PVector(0, -o), 460, 445, 0, 0, 185, 465));
    obstacles5.add(new Obstacle(new PVector(0, o), 500, 205, 0, 0, 185, 465));
    obstacles5.add(new Obstacle(new PVector(0, -o), 540, 445, 0, 0, 185, 465));
    obstacles5.add(new Obstacle(new PVector(0, o), 580, 205, 0, 0, 185, 465));
    obstacles5.add(new Obstacle(new PVector(0, -o), 620, 445, 0, 0, 185, 465));
    obstacles5.add(new Obstacle(new PVector(0, o), 660, 205, 0, 0, 185, 465));
    obstacles5.add(new Obstacle(new PVector(0, -o), 700, 445, 0, 0, 185, 465));
    Level level5 = new Level(5, player5, goalArea5, coins5, walls5, obstacles5);
    levels.add(level5);
    
  }

  void loadLevel(int level) {
    levels.get(level - 1).load();
  }

  void update(int level) {
    PVector direction = new PVector(0, 0);
    int v = 1;
    if (up) {
      direction.y = -v;
    }
    if (down) {
      direction.y = v;
    }
    if (left) {
      direction.x = -v;
    }
    if (right) {
      direction.x = v;
    }
    player1.move(direction);
    player2.move(direction);
    player3.move(direction);
    player4.move(direction);
    player5.move(direction);
    levels.get(level - 1).player.update(levels.get(level - 1).walls);
    levels.get(level - 1).update();
  }

  void draw(int level) {
    levels.get(level - 1).draw();
    pause.draw();
  }
  
  void handleMouseClick() {
    if (pause.isMouseClicked()) {
      background(255);
      showGame = false;
      showResetLevel = true;
    }
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
