
PImage f;
void setup(){
 noStroke();
  size (500,400);
  f= loadImage ("Fountain 2.jpg");
  f.resize(width,height);
  
}

void draw(){

image(f,0,0);
}
