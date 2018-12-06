PImage img;
void setup(){
  size(198,123);
  img=loadImage("1.jpg");
  //size(800,485);
  //img=loadImage("2.jpg");
  //size(97,73);
  //img=loadImage("3.jpg");
  noStroke();
  frameRate(200);
}

void draw(){
  //image(img,0,0);
  
  //int w=int(random(0,width));
  //int h=int(random(0,height));
  ////int w=mouseX;
  ////int h=mouseY;
  //color c=img.get(w,h);
  
  //float b=brightness(c);
  //int f;
  //if(b<150){
  //  f=0;
  //}else{
  //  f=255;
  //}
  //fill(c);
  //rect(w,h,1,1);
  
  img.loadPixels();
  for(int i=0;i<img.width;i++){
    for(int j=0;j<img.height;j++){
      int pos=i+j*img.width;
      if(brightness(img.pixels[pos])<150){
        img.pixels[pos]=color(0);
      }else{
        img.pixels[pos]=color(255);
      }
    }
  }
  img.updatePixels();
  image(img,0,0);
}
