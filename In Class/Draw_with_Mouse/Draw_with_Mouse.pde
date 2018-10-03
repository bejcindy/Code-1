//boolean to dect if my mouse is pressed
//if booleann true, want to draw ellipse where mouseX + mouseY
//change the size of my drawing ellipse when arrows clicked

int size;
int x,y;

void setup(){
  size(500,500);
  size = 10;
  noStroke();
}

void draw(){
  fill(100,0,255,1);
  rect(0,0,width,height);
  x = mouseX;
  y = mouseY;
  //happens continuously
  //if(mouseX>0 && mouseX<width/2 && mouseY>0 && mouseY<width/2){
  //  if(mousePressed){
  //    fill(255);
  //    ellipse(x,y,size,size);
  //  }
  //}
  if(mousePressed){
    fill(255);
    ellipse(x,y,size,size);
  }
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP){
      size += 1;
      //size ++;
    }
    if(keyCode == DOWN){
      size --;
    }
  }
}
