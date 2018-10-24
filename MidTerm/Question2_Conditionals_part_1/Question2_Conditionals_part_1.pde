float d = 100;
float incr = 5;

boolean shrink; 

void setup() {
  size(600, 600);
  shrink=false;
}

void draw() {
  background(150);
  if(d>=width){
    shrink=true;
  }else if(d<=0){
    shrink=false;
  }
  if(shrink==false){
    d += incr;
  }else{
    d-=incr;
  }
  ellipse(width/2, height/2, d, d);  

}
