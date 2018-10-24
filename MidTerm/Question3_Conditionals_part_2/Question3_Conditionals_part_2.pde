float xPos;
float yPos;

void setup() {
  size(600, 600);
  xPos = width/2;
  yPos = height/2;
  frameRate(10);
}

void draw() {
  background(50);
  ellipse(xPos, yPos, 30, 30);

  float r = random(0,1);
  if(r <.25){
    xPos +=10; 
  }else if(.25<r && r<=.5){
    xPos -=10; 
  }else if(.5<r && r<=.75){
    yPos +=10;
  }else{
    yPos -=10;
  }
} 
