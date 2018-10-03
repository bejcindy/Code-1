float p,q,p1,q1;
boolean z;
void setup(){
  size(600,600);
}

void returnAString(String string1){
  println(string1);
} 

void draw(){
  float a = 70;
  float b = 530;
  float c = lerp(a, b, .25);
  float d = lerp(a, b, .5);
  float e = lerp(a, b, .75);
  int bgColor;
  int blue;
  bgColor = int(map(calcDist(p,b),0,width,0,255));
  blue = int(map(calcDist(p1,q1),0,width/2,100,255));
  background(bgColor,0,blue);
  println(calcDist(p,q));
  if (calcDist(p,q)<=70){
    z = true;
    println(z);
  } else {
    z=false;
    println(z);
  }
  pushMatrix();
  translate(a, height*0.5);
  rotate(frameCount / 200.0);
  fill(blue,0,bgColor);
  star(0, 0, 30, 70, 5); 
  popMatrix();
  //pushMatrix();
  //translate(-a,height*0.5);
  //popMatrix();
  pushMatrix();
  translate(b, height*0.5);
  rotate(frameCount / 200.0);
  fill(blue,0,bgColor);
  star(0, 0, 30, 70, 5); 
  popMatrix();
  pushMatrix();
  translate(c, height*0.5);
  rotate(frameCount / 200.0);
  fill(blue,0,bgColor);
  star(0, 0, 30, 70, 5); 
  popMatrix();
  pushMatrix();
  translate(d, height*0.5);
  rotate(frameCount / 200.0);
  fill(blue,0,bgColor);
  star(0, 0, 30, 70, 5); 
  popMatrix();
  pushMatrix();
  translate(e, height*0.5);
  rotate(frameCount / 200.0);
  fill(blue,0,bgColor);
  star(0, 0, 30, 70, 5); 
  popMatrix();
  returnAString("I'm a Star !");
}

float calcDist(float xPos, float yPos){
  float dist = dist(mouseX, mouseY, 300, 300);
  return dist;
}

void star(float x, float y, float r1, float r2, int n) {
  float angle = TWO_PI / n;
  float halfAngle = angle/2.0;
  noStroke();
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * r2;
    float sy = y + sin(a) * r2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * r1;
    sy = y + sin(a+halfAngle) * r1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
