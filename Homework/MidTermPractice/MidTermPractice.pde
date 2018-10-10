//create a button that generates the product of two random integers
//the multiplication sentence should be displayed somewhere on the screen 

//the sketch is started for you, but isn't quite right 


int x, y; 
int size; 
float dist; 
boolean buttonClicked; 


int result; 
int num1, num2; 

void setup(){
  size(600, 600); 
  x = width/2; 
  y = height/2; 
  size = 50; 
  background(0); 
  buttonClicked=false;
}

void draw(){
  background(255);
  //num1 = int(random(0,100)); 
  //num2 = int(random(0,100));
  result = multiply(num1, num2); 

  textSize(32); 
  String question=num1+" x "+num2+" = ";
  String answer = num1 + " x " + num2 + " = " + result;
  
  if(buttonClicked==true){
     text(answer, 0, height*.8);
     fill(0, 255, 0); 
  }else{
     text(question, 0, height*.8);
     fill(255, 0, 0); 
  }
   
 
  ellipse(x, y, size, size);  
}

void mousePressed(){
  dist = dist(mouseX, mouseY, x, y); 
  if(dist <= size/2){
    buttonClicked = !buttonClicked; 
  }
  if(buttonClicked==false){
    num1 = int(random(0,100)); 
    num2 = int(random(0,100));
  }
}

int multiply (int a, int b){
    int product; 
    product = a * b; 
    return(product);
}
