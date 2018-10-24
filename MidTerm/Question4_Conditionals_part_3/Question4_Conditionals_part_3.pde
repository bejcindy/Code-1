float d;
void setup() {
  size(600, 600);
}

void draw() {
  background(150);
  d=dist(mouseX,mouseY,width/2,height/2);
  fill(150);
  if(d<=100){
    if (mousePressed) {
      fill(255);
    } 
  }
  ellipse(width/2, height/2, 200, 200);
}
