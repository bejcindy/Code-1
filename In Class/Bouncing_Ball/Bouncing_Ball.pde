float x, y;
int size = 100;
float xSpeed, ySpeed;
float r, b, g;

void setup(){
  size(500,500);
  xSpeed = random(1,4);
  ySpeed = random(1,4);
  x = width/2;
  y = height/2;
  noStroke();
}

void draw(){
  fill(100,0,255,1);
  rect(0,0,width,height);
  if(xSpeed == ySpeed){
    xSpeed = random(1,4);
    ySpeed = random(1,4);
  }
  if(x>width-size/2 || x<size/2){
    xSpeed = xSpeed*-1;
  }
  x = x+xSpeed;
  if(y>height-size/2 || y<size/2){
    ySpeed = ySpeed*-1;
  }
  y = y+ySpeed;
  if(x>= width-size/2 || x<= size/2){
    r = int(random(0, 255));
    g = int(random(0, 255));
    b = int(random(0, 255));
    fill(r,g,b);
  } else {
    fill(r,g,b);
  }
  if(y>= height-size/2 || y<= size/2){
    r = int(random(0, 255));
    g = int(random(0, 255));
    b = int(random(0, 255));
    fill(r,g,b);
  } else {
    fill(r,g,b);
  }
  ellipse(x, y, size, size);
  
}
