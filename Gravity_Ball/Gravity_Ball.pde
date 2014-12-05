float x,y,velX,velY, gravity;
int sz =50;
void setup(){
  size (500,500);
  x=width/2;
  y=height*.5;
  velX=0;
  velY=0;
  gravity= 1;
  textSize(17);
}
void draw(){
  background(0,150,0);
  text("Location: " + y + "    Velocity: " + velY + "    Acceleration: " + gravity, 5, 30);
  ellipse(x,y,sz,sz);
  velY += gravity;
   x += velX;
   y += velY;
   
   if(y + sz/2 > height){
     y = height - sz/2;
     velY = -abs(velY);
   }
  if(x + sz/2> width){
    velX= -abs(velX);
  }
}
