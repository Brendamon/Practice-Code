PVector loc;
PVector vel;
PVector acc;

int sz=100;

void setup(){
 background(0,150,0);
  size(500,500);
  
  
  loc= new PVector(width/2,height/2);
  
  acc= new PVector(random(-1,1), random(-1,1));
  
  vel = new PVector(0,0);
}

void draw(){
  background(0,150,0);
  acc. set (random(-1,1), random(-1,1));
  
  vel.add(acc);
  
  loc.add(vel);
  
  ellipse(loc.x,loc.y, sz,sz);
  
  if(loc.x- sz/2 > width){
    loc.x = -sz/2;
  }
  if(loc.x + sz/2 <0){
  loc.x= width + sz/2;
  }
  if(loc.y- sz/2 > height){
    loc.y = -sz/2;
  }
  if(loc.y + sz/2 < 0){
    loc.y= height + sz/2;
  }
}
