int bgColor = 255;
int position;
int size;
int rectsize;
float r;
float g;
float b;
void setup(){
  size(500,500);
  background(bgColor);
  position = int(width*.5);
  size=int(width*.15);
  rectsize=int(width*.15);
  println(position);
  rectMode(CENTER);
}

void draw (){
  
  pushMatrix();
  background(255);
  translate(width*.5, height*.5);
  rotate(radians(mouseY));
  fill(0,100,130);
  ellipse(size*.5-15,size*.5-15,size+30,size+30);
  fill(255,255,255);
  ellipse(size*.5-15,size*.5-15,size,size);
  if(mousePressed==true){
    r=random(255);
    g=random(255);
    b=random(255);
    fill( r, g, b);
  } else {
    fill( r, g, b);
  }
  rect(size-50,size+20,rectsize *2,rectsize * 2 -20);
  line(size-80,size+30,size,size+30);
  popMatrix();
}  

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP){
      rectsize ++;
    }
    if(keyCode == DOWN){
      rectsize --;
    }
  }
}
  
