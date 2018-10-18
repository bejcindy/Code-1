//you should have a 2d grid of white squares that's opacity changes to black 
//when the mouse hovers over it 

//in this sketch, the grid isn't drawn correctly, and the mouse hovering isn't working
//fix the sketch so that only the square the mouse is over turns black, 
//and the squares are drawn evenly accross the screen

int n = 10; 
int opacity[][] = new int[n][n]; 
int x[][]= new int[n][n];
int y[][]=new int[n][n];
void setup(){
  size(600, 600); 
  noStroke();
  for(int i = 0; i<n; i++){
    for(int j = 0; j<n; j++){
      opacity[i][j] = 0; 
      //x[i][j]=width*i+width/2;
      //y[i][j]=height*j+height/2;
    }
  }
}

void draw(){
  background(255); 
  
  for(int i = 0; i<n; i++){
    for(int j = 0; j<n; j++){
      x[i][j]=width/n*i;
      y[i][j]=height/n*j;
      if(mouseX > i*width/n && mouseX<= (i+1)*width/n && 
      mouseY > j*height/n && mouseY <=(j+1)*height/n){
        opacity[i][j] = 255; 
      }
      
      if(opacity[i][j]>0){
        opacity[i][j] --; 
        println(opacity[i][j]);
      }
      fill(0,0,0, opacity[i][j]); 
      //println(opacity[i][j]);
      rect(x[i][j], y[i][j], width/n, height/n);
    }
  }
}
