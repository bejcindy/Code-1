int num = 30; 
float xPos [] = new float[num]; 
int size = 20; 
float theta;

int waveOffset; 

void setup(){
  size(500, 500); 
  
  int spacing = width/num; 
  
  for(int i = 0; i<num; i++){
    xPos[i] = i +spacing*i; 
  }
}

void draw(){
  background(100); 
  
  theta += .01;
  for(int i = 0; i<num; i++){
    ellipse(xPos[i], height/2+sin(theta + i*.2)*height/2, size, size );  
  }
   
}
