//float x, y;
PVector position;
int size = 100;
//float xSpeed, ySpeed;
PVector velocity;
float r, b, g;

void setup(){
  size(500,500);
  //xSpeed = random(1,4);
  //ySpeed = random(1,4);
  //x = width/2;
  //y = height/2;
  noStroke();
  position=new PVector(width/2,height/2);
  velocity=new PVector(5,6);
}

void draw(){
  fill(100,0,255,1);
  rect(0,0,width,height);
  //if(xSpeed == ySpeed){
  //  xSpeed = random(1,4);
  //  ySpeed = random(1,4);
  //}
  if(position.x>width-size/2 || position.x<size/2){
    velocity.x = velocity.x*-1;
  }
  //x = x+xSpeed;
  if(position.y>height-size/2 || position.y<size/2){
    velocity.y = velocity.y*-1;
  }
  //y = y+ySpeed;
  position.add(velocity);
  if(position.x>= width-size/2 || position.x<= size/2){
    r = int(random(0, 255));
    g = int(random(0, 255));
    b = int(random(0, 255));
    fill(r,g,b);
  } else {
    fill(r,g,b);
  }
  if(position.y>= height-size/2 || position.y<= size/2){
    r = int(random(0, 255));
    g = int(random(0, 255));
    b = int(random(0, 255));
    fill(r,g,b);
  } else {
    fill(r,g,b);
  }
  ellipse(position.x, position.y, size, size);
  
}
