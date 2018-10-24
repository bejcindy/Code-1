int x = 15;
void setup() {
  size(600, 600);
  background(150);
  noStroke();
}

void draw() {
  for (int i = 0; i < 10; i++) {
    rect(x, 150, 30, 300);
    x += 60;
  }
}
