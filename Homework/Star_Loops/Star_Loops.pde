float x,y;
void setup(){
  size(600,600);
  x=0;
  y=1;
}
void draw(){
  background(255);
  int n=15;
  int size=width/n;
  for(int i=size/2;i<width;i+=width/n){
    for(int j=size/2;j<height;j+=height/n){
      int g=int(map(i,0,width,0,255));
      int r=int(map(j,0,height,0,255));
      float d=dist(width/2,height/2,i,j);
      int s = int(map(d,0,width,3,10));
      float o=map(d,0,width,255,0);
      float a=dist(mouseX,mouseY,i,j);
      float b=map(a,0,width,0,n/2);
      fill(r,g,o,o);
      star(i,j,n/2-b,n-b,s);
    }
  }
  for(int i=0;i<=width;i+=40){
    x=int(map(i,0,width,0,200));
    ellipse(i-40,height/2,x,x);
  }
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
