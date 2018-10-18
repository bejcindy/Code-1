int n=10;
int s;
boolean b[][]=new boolean[n][n];
color c[][]=new color[n][n];
int y[][]=new int[n][n];
void setup(){
  noStroke();
  size(500,500);
  s=width/n;
  for(int i=n-1;i>-1;i--){
    for(int j=n-1;j>-1;j--){
      c[i][j]=color(random(200,255),random(200,255),random(200,255));
      y[i][j]=0;
      b[i][j]=false;
    }
  }
}

void draw(){
  background(255);
  for(int i=n-1;i>-1;i--){
    for(int j=n-1;j>-1;j--){
      fill(c[i][j]);
      if(mouseX>i*s && mouseX<=(i+1)*s && mouseY>j*s && mouseY<=(j+1)*s){
        println("i is: "+i+" j is: "+j);
        //c[i][j]=color(random(50,150),random(50,100),random(100,255));
      }
      if(b[i][j]==true){
        y[i][j]+=1;
      }
      rect(i*s,j*s+y[i][j],s,s);
    }
  }
}
void mousePressed(){
  for(int i=n-1;i>-1;i--){
    for(int j=n-1;j>-1;j--){
      if(mouseX>i*s && mouseX<=(i+1)*s && mouseY>j*s && mouseY<=(j+1)*s){
        println("i is: "+i+" j is: "+j);
        c[i][j]=color(random(200,255),random(200,255),random(200,255));
        //y[i][j]+=1;
        b[i][j]=true;
      }
    }
  }
}
//int num[][]={{1,2,3,4},{5,6,7,8},{9,10,11,12}};

//void setup(){
//  println(num[2][0]);
  
//  for(int i=0;i<3;i++){
//    for(int j=0;j<4;j++){
//      println(num[i][j]+" at "+i+" at "+j);
//    }
//  }
//}
