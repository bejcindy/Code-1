float x,y;
float o;
int n=15;
//float o,d;
int size=width/n;
void setup(){
  size(600,600);
  background(255);
  x=0;
  y=1;
  noStroke();
  //for(int i=size/2;i<width;i+=width/n){
  //  for(int j=size/2;j<height;j+=height/n){
  //     o=map(d,0,width,255,0);
  //     d=dist(width/2,height/2,i,j);
  //  }
  //}
}

void draw(){
  //for(int i=size/2;i<width;i+=width/n){
  //  for(int j=size/2;j<height;j+=height/n){
  //    int g=int(map(i,0,width,0,255));
  //    int r=int(map(j,0,height,0,255));
  //    float d=dist(width/2,height/2,i,j);
  //    int s = int(map(d,0,width,3,10));
  //    float o=map(d,0,width,255,0);
  //    float a=dist(mouseX,mouseY,i,j);
  //    float b=map(a,0,width,0,n/2);
  //    if(o>0){
  //      o-=10;
  //    }
  //    fill(r,g,o,o);
  //    star(i,j,n/2-b,n-b,s);
  //  }
  //}
  if(frameCount%5==0){
    fill(255,50);
    rect(0,0,width,height);
  }
}

void mousePressed(){
  for(int i=size/2;i<width;i+=width/n){
    for(int j=size/2;j<height;j+=height/n){
      float a=dist(mouseX,mouseY,i,j);
      int m=int(random(2,30));
      int g=int(map(i,0,width,0,255));
      int r=int(map(j,0,height,0,255));
      float d=dist(width/2,height/2,i,j);
      int s = int(map(d,0,width,3,10));
      o=map(a,0,m*size,255,0);
      float b=map(a,0,width,0,n/2);
      fill(r,g,o,o);
      star(i,j,n/2-b,n-b,s);
    }
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
