int bgColor = 255;
int position;
int size;
void setup(){
  size(500,500);
  background(bgColor);
  position = int(width*.5);
  size=int(width*.15);
  println(position);
}

void draw (){
  fill(0,100,130);
  ellipse(position,position,size+30,size+30);
  fill(255,255,255);
  ellipse(position,position,size,size);
  fill(0,100,180);
  rect(position*.7,position,size *2,size * 2 -20);
  line(position*.9,position*1.1,position*1.1,position*1.1);
}
