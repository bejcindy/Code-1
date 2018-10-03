int circleSize;
int xPos, yPos;
color circleColor, bgColor;
int distance;

boolean isCirclePressed;

void setup(){
  size(500,500);
  bgColor = color(30, 200, 200);
  background(bgColor);
  
  xPos = width/2;
  yPos = height/2;
  
  circleSize = 100;
}

void draw(){
  distance = int(dist(xPos, yPos, mouseX, mouseY));
  if(distance<circleSize/2){
    circleColor = color(255,0,150);
  } else {
    circleColor = color(255);
  }
  
  background(bgColor);
  fill(circleColor);
  ellipse(xPos, yPos, circleSize, circleSize);
  
}
 void mousePressed(){
   if(distance<circleSize/2){
     isCirclePressed = !isCirclePressed;
     println(isCirclePressed);
   }
   if (isCirclePressed == true){
    bgColor = 255;
  } else {
    bgColor = 100;
  }
 }
