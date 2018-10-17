String[] words= new String[5];
int r,s;
int[] x=new int[10];
int[] y=new int[10];
void setup(){
  size(600,600);
  words[0]="a";
  words[1]="b";
  words[2]="c";
  words[3]="d";
  words[4]="e";
  r=int(random(0,4));
  println(words[r]);
  s=100;
  for(int i=0;i<10;i++){
    x[i]=int(random(s/2,width-s/2));
    y[i]=int(random(s/2,height-s/2));
  }
}
void draw(){
  background(255);
  for(int i=0;i<10;i++){
    ellipse(x[i],y[i],s,s);
  }
}
