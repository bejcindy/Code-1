void setup(){
  size(800,800);
}

void draw(){
  background(255);
  //good for set number of loops
  for(int i=0;i<=60;i++){
    fill(map(i,0,60,0,255));
    int r = int(random(10,20));
    ellipse(i*r,height/4,10,10);
  }
  //good if your canvas size is variable
  for(int i=0;i<=width;i+=10){
    fill(map(i,0,60,0,255));
    ellipse(i,height/2,10,10);
  }
  //if you want to vary the size of your shapes
  int size=100;
  for(int i=0; i<=width;i+=size){
    int c =int(map(i,0,width,0,255));
    fill(0,c,c);
    ellipse(i,height/1.5,size,size);
  }
}
