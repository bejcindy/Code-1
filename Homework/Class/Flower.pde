class Flower{
  float fHeight;
  float fSize;
  color fColor;
  //int x;
  PVector position;
  PVector gravity;
  Flower(){
    //x=_x;
    position=new PVector(mouseX, mouseY);
    gravity=new PVector(0,.5);
    //fHeight=_fHeight;
  }
  void display(color _fColor,float _fSize){
    fSize=_fSize;
    fColor=_fColor;
    fill(fColor);
    ellipse(position.x, position.y,fSize,fSize);
    rect(position.x, 100,2,500);
  }
  void fall(){
    position.add(gravity);
  }
  void grow(){
    fSize+=5;
  }
  
}
