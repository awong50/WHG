Button b1;

void setup() {
 size(800, 600);
 PVector pos = new PVector(400, 300);
 PVector size = new PVector(50, 50);
 String l = "Levels";
 String s = "r";
 color c1 = color(#FFFFFF);
 color c2 = color(#000000);
 b1 = new Button(pos, size, l, s, c1, c2);
}

void draw() {
 background(255);
 
 b1.draw();
}
