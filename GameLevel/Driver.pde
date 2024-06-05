Level level;
Player player = new Player(50., 50., color(255, 0, 0));
ArrayList<Wall> walls = new ArrayList<Wall>();

GoalArea goalArea; 

void setup() {
  size(800, 600);
  
  ArrayList<Coin> coins = new ArrayList<Coin>();
  coins.add(new Coin(300, 200));
  
  walls.add(new Wall(10, 10, 500, 500));
  goalArea = new GoalArea(700, 500, 100, 100, color(0, 255, 0));
  
  level = new Level(1, player, goalArea, coins, walls);
  level.load();
}

void draw() {
  background(255);
  
  
  level.update();
  level.draw();
  
  text(level.number, 100, 100);
  
  if (level.isCompleted()) {
    System.out.println("Level completed");
  }
  
  for (Wall wall: walls) {
    player.move(player.wallCollision(wall));
  }
  
  
}
