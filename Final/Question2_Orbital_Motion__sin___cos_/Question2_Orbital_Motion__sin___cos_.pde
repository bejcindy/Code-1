float x, y; 
int theta; 
int orbitRadius; 

void setup(){
  size(600, 600); 
  orbitRadius=100;
}

void draw(){
  background(0, 100, 200); 
  
  theta+=1;
  x = cos(radians(theta))*orbitRadius; 
  y=sin(radians(theta))*orbitRadius;
  
  pushMatrix();
  translate(mouseX,mouseY);
  ellipse(x, y, 25, 25); 
  popMatrix();
}
