sSettings ss;

void setup() {
  size(800, 600);
  
  ss = new sSettings();
}

void draw() {
  background(255);
  
  System.out.println(ss.isSoundOn);
  ss.soundSwitch();
}
