float[] pos = new float[100];

void setup() {
  size(600, 600);
  for(int i = 0; i < pos.length; i++){
    pos[i]=map(i,0,pos.length,0,height);
  }
}

void draw() {
  background(240);
  for (int i = 0; i < pos.length; i++) {
    ellipse(width/2, pos[i], 50, 50);
  }
}
