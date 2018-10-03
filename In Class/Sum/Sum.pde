String additionSentence;
i÷nt n1,n2;

void setup(){
  size(500,500);
  println(addition(4,5));
  textSize(50);
}

void draw(){
  background(0);
  //int a = addition(1,2);
  //println(a);
  additionSentence = n1+"+"+n2+"="+addition(n1,n2);
  text(additionSentence,width/2,height/2);
}

void mousePressed(){
  n1=int(random(0,10));
  n2=int(random(0,10));
}

int addition(int x, int y){
  int sum = x+y;
  return sum;
}
