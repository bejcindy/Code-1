void setup(){
  size(800,800);
  
  noStroke();
}

void draw(){
  int nCircles=20;
  int size = width/nCircles;
  background(255);
  for(int i=size/2;i<width;i+=width/nCircles){
    for(int j=size/2;j<height;j+=height/nCircles){
      int g=int(map(i,0,width,0,255));
      int r=int(map(j,0,height,0,255));
      float d=dist(mouseX,mouseY,i,j);
      float s = map(d,0,width,20,40);
      float o=map(d,0,width,255,0);
      fill(r,g,o,o);
      ellipse(i,j,s,s);
    }
  }
}
