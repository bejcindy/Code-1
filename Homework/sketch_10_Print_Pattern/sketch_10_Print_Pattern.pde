void draw() {
  int x = frameCount%20*5;
  int c = int(random(2))*5;
  line(x+c,89,x+5-c,94);
  if (x==95) copy(0,0,100,100,0,-5,100,100);
}
