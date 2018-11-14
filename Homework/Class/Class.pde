//Flower flower;
ArrayList<Flower> flowers;

void setup(){
  size(700,700);
  noStroke();
  flowers=new ArrayList<Flower>();
  //flower=new Flower(200,350);
}

void draw(){
  background(255);
  //flower.grow();
  //println(flower.fSize);
  //flower.display(color(255,150,50),100);
  for(int i=0;i<flowers.size();i++){
    Flower f=flowers.get(i);
    f.fall();
    f.display((int(random(0,255))),100);
  }
}

void mousePressed(){
  flowers.add(new Flower());
}
