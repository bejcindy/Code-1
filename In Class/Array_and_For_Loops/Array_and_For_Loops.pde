//int intArray[]=new int[100];
//void setup(){
//  for(int i=0;i<100;i++){
//    intArray[i]=i+1;
//    println(intArray[i]);
//  }
//}
float dist;
int n=100;
int[] size=new int[n];
int[] red=new int[255];
int[] blue=new int[255];
int[] o=new int[255];
int[] xPos=new int[n];
int[] yPos=new int[n];

int[] xSpeed=new int[n];
int[] ySpeed=new int[n];

void setup(){
  size(600,600);
  noStroke();
  for(int i=0;i<n;i++){
    size[i]=int(random(10,100));
    red[i]=int(random(100,255));
    blue[i]=int(random(100,255));
    o[i]=255;
    
    xPos[i]=int(random(size[i]/2,width-size[i]/2));
    yPos[i]=int(random(size[i]/2,height-size[i]/2));
    
    xSpeed[i]=int(random(1,5));
    ySpeed[i]=int(random(1,5));
    
    //dist = dist(mouseX, mouseY, xPos[i], yPos[i]);
  }
}

void draw(){
  background(255);
  for(int i=0;i<n;i++){
    xPos[i]=xPos[i]+xSpeed[i];
    yPos[i]=yPos[i]+ySpeed[i];
    dist = dist(mouseX, mouseY, xPos[i], yPos[i]);
    if(dist<=size[i]/2){
      o[i]=0;
    }
    fill(red[i],0,blue[i],o[i]);
    ellipse(xPos[i],yPos[i],size[i],size[i]);
    if(xPos[i]<=size[i]/2||xPos[i]>=width-size[i]/2){
      xSpeed[i]=xSpeed[i]*-1;
    }
    if(yPos[i]<=size[i]/2||yPos[i]>=height-size[i]/2){
      ySpeed[i]=ySpeed[i]*-1;
    }
  }
}
