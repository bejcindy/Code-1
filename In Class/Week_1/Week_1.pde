int bgColor = 255;
int bgColor2=100;
int treePosition;
int treeSize;
void setup (){
  //first parameter is width, seconnd is height
 size(500, 500); 
 background(bgColor);
 treePosition = int(width*random(0,1));
 treeSize=int(width*.15);
 //this can print out the value in the black box below
 println(treePosition);
}

void draw(){
  background(bgColor2);
  //ellipse(x position, y position, wicth, height)
  //top left corner is (0,0)
  //fill(0, 100, 100);
  //ellipse(100, 100, 50, 50);
  //fill(200, 0, 0);
  //rect(100, 100, 100, 50);
  //"CENTER" draws the rectanngle from the center
  rectMode(CENTER);
  fill(150,100,50);
  rect(treePosition,treePosition+50,treeSize*.25,treeSize);
  fill(0, 150, 0);
  ellipse(treePosition,treePosition, treeSize, treeSize);
}
