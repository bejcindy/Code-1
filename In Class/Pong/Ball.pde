class Ball{
  float x,y;
  float xSpeed, ySpeed;
  int size;
  int lost;
  int Lscore;
  int Rscore;
  
  Ball(float _x,float _y){
    x=_x;
    y=_y;
    xSpeed=random(-10,10);
    ySpeed=random(-10,10);
    size=50;
    Lscore=0;
    Rscore=0;
    lost=0;
    
  }
  //bounce paddle
  void bounceP(){
    xSpeed*=-1.1;
    //score++;
    //ySpeed*=-1.1;
  }
  
  //bounce when reach the sides
  void bounceY(){
    ySpeed=-ySpeed;
  }
  void bounceX(){
    xSpeed=-xSpeed;
  }
  
  //display
  void display(){
    fill(0,0,255);
    ellipse(x,y,size,size);
  }
  
  //move
  void move(){
    x+=xSpeed;
    y+=ySpeed;
  }
  
  //restart
    //reset the ball
    //subtract score
  void reset(){
    lost++;
    //score=0;
    x=width/2;
    y=height/2;
    xSpeed=random(-10,10);
    ySpeed=random(-10,10);
  }
}
