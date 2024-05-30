Level level;
Player player = new Player(50., 50., color(255, 0, 0));

void setup() {
  size(800, 600);
  
  ArrayList<Coin> coins = new ArrayList<Coin>();
  coins.add(new Coin(300, 200));
  GoalArea goalArea = new GoalArea(700, 500, 100, 100, color(0, 255, 0));
  
  level = new Level(1, player, goalArea, coins);
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
  
  if (keyPressed) {
    PVector direction = new PVector();
    if (key == 'w') { direction.y += -2; }
    if (key == 's') { direction.y += 2; }
    if (key == 'a') { direction.x += -2; }
    if (key == 'd') { direction.x += 2; }
    player.move(direction);
  }
}
