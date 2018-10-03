int circleSize;
float xPos, yPos;
int distance;
color circleColor;
boolean circlePressed;

void setup(){
  size(500,500);
  background(30,50,120);
  
  xPos = width/2;
  yPos = height/2;
  
  circleSize = 100;
}

void draw(){
  distance = int(dist(xPos, yPos, mouseX, mouseY));
  println(distance);
  if(distance<circleSize/2){
   circleColor = color(0,150,255);
  } else {
   circleColor = color(255);
  }
  background(30,50,120);
  fill(circleColor);
  ellipse(xPos, yPos, circleSize, circleSize);
}

void mousePressed(){
  if(distance<circleSize/2){
    circlePressed = true;
    println(circlePressed);
  } else {
    circlePressed = false;
  }
  if(circlePressed == true){
    xPos = random(50,450);
    yPos = random(50,450);
  }
}
