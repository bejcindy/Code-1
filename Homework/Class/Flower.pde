class Flower{
  float fHeight;
  float fSize;
  color fColor;
  int x;
  Flower(float _fHeight, int _x){
    x=_x;
    fHeight=_fHeight;
  }
  void display(color _fColor,float _fSize){
    fSize=_fSize;
    fColor=_fColor;
    fill(fColor);
    ellipse(x, fHeight,fSize,fSize);
    rect(x, fHeight,2,500);
  }
  void grow(){
    fSize+=5;
  }
  
}
