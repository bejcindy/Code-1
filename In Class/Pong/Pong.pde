//player
//ball
Paddle player1;
Paddle player2;
Ball ball;
int startT;

PVector playPos[]=new PVector[2];
void setup(){
  size(800,600);
  playPos[0]=new PVector(width-100,height/2);
  playPos[1]=new PVector(100,height/2);
  player1=new Paddle(playPos[0]);
  player2=new Paddle(playPos[1]);
  ball=new Ball(width/2,height/2);
  startT=millis();
}

void draw(){
  background(0);
  int elapsedT = millis() - startT;
  textSize(32);
  fill(255);
  //text("Lost "+ball.lost,width/2-100, height-30);
  text("Score "+ball.Rscore,width/2+100, 30);
  text("Score "+ball.Lscore,100,30);
  text("Time "+elapsedT/1000,width/2-100,30);
  
  player1.update();
  player1.display();
  
  player2.display();
  
  ball.display();
  ball.move();
  
  //if ball goes outside of y boundaries
  if(ball.y>height-ball.size/2||ball.y<ball.size/2){
    ball.bounceY();
  }
  if(ball.x<ball.size/2){
    ball.bounceX();
  }
  if(ball.x>=width-ball.size/2){
    startT=millis();
    ball.Lscore++;
    ball.reset();
  }
  if(ball.x<=ball.size/2){
    startT=millis();
    ball.Rscore++;
    ball.reset();
  }
  
  //need to check if the ball position is within the
  //boundaries of the player paddle
  if(ball.x>=player1.position.x-5-ball.size/2
  &&ball.y>=player1.position.y-player1.rectSize/2
  &&ball.y<=player1.position.y+player1.rectSize/2){
    ball.bounceP();
    //ball.Lscore++;
  }
  if(ball.x<=player2.position.x+5+ball.size/2
  &&ball.y>=player2.position.y-player2.rectSize/2
  &&ball.y<=player2.position.y+player2.rectSize/2){
    ball.bounceP();
    //ball.Rscore++;
  }
  
  if(keyPressed){
    if(key=='w'){
      player2.position.y-=10;
    }
    if(key=='s'){
      player2.position.y+=10;
    }
    //if(keyCode==UP){
    //  player1.position.y-=10;
    //}
    //if(keyCode==DOWN){
    //  player1.position.y+=10;
    //}
  }
}

//void keyPressed(){
//    if(key=='w'){
//      player2.position.y-=10;
//    }
//    if(key=='s'){
//      player2.position.y+=10;
//    }
//    if(key==CODED){
//          if(keyCode==UP){
//      player1.position.y-=10;
//    }
//    if(keyCode==DOWN){
//      player1.position.y+=10;
//    }
//  }
//}
