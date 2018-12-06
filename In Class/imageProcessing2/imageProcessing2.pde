PImage img;
int pixelSize=2;
int cols, rows;

void setup(){
  noStroke();
  //size(198,123,P3D);
  //img=loadImage("1.jpg");
  size(97,73,P3D);
  img=loadImage("3.jpg");
  
  cols=width/pixelSize;
  rows=height/pixelSize;
}

void draw(){
  background(0);
  loadPixels();
  for(int i=0;i<cols;i++){
    for(int j=0;j<rows;j++){
      int x=i*pixelSize+pixelSize/2;
      int y=j*pixelSize+pixelSize/2;
      
      int loc=x+y*width;
      color c=img.pixels[loc];
      
      float z=(mouseX/(float(width)))*brightness(img.pixels[loc]);
      fill(c);
      
      pushMatrix();
        translate(x,y,z);
        rectMode(CENTER);
        rect(0,0,pixelSize,pixelSize);
      popMatrix();
    }
  }
}
