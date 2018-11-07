Flower flower;
void setup(){
  size(700,700);
  noStroke();
  flower=new Flower(200,350);
}

void draw(){
  background(255);
  flower.grow();
  println(flower.fSize);
  flower.display(color(255,150,50),100);
}
