PVector position;
float theta=0;
float orbitSize;
float yIncrement;

void setup(){
  size(600,600);
  position=new PVector(width/2,0);
  orbitSize=100;
}

void draw(){
  background(0);
  theta+=.1;
  //theta=frameCount;
  
  //Orbit Movement
  position.x=width/2+sin(theta)*orbitSize;
  //position.y=height/2+cos(theta)*orbitSize;
  
  //Wave Movement
  position.y+=yIncrement;
  if(position.y>=height-25){
    yIncrement=-5;
  }
  if(position.y<=25){
    yIncrement=+5;
  }
  ellipse(position.x,position.y,50,50);
}
