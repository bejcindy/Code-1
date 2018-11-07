//Plant daryl;
//Plant eugene;
Plant[] plants=new Plant[10];
void setup(){
  size(700,700);
  noStroke();
  for(int i=0;i<10;i++){
      plants[i]=new Plant(i*10,i*80);
  }
  //daryl=new Plant(int(random(100,200)));
  //eugene=new Plant(int(random(100,200)));
  //eugene.display(10,4,color(random(0,255)));
}

void draw(){
  background(255);
  pushMatrix();
  translate(0,150);
  for(Plant plants:plants){
    for(int h=0;h<10;h++){
        plants.display(h,color(0,h*20,100));
        plants.grow();
        println(plants.plantHeight);
    }
  }
  popMatrix();
  //eugene.display(10,4,color(0,150,50));
  //daryl.display(100,5,color(0,100,100));
}
