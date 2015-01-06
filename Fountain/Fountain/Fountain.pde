ArrayList<Drop> myDrops = new ArrayList<Drop>();
PImage f;
void setup(){
 noStroke();
  size (500,400);
 //loads image 
  f= loadImage ("Fountain 2.jpg");
 //changes size of picture to fit background
  f.resize(width,height);
  
}

void draw(){
//background of fountain
image(f,0,0);
//particle system of water droplets
myDrops.add(new Drop());
for (int i = myDrops.size ()-1; i >= 0; i--) {
    Drop currentDrop = myDrops.get(i);
    currentDrop.display();
    currentDrop.move();
    if (currentDrop. isDead()) {
      myDrops.remove(i);
    }
  }
}

//class of water droplets 
class Drop{
  PVector loc, acc, vel;
  float sz;
 //Parameters for droplets
  Drop(){
    loc = new PVector (270,15);
    vel = new PVector (random(-1,1), random (-3,1));
    acc= new PVector(0,.1);
    sz= 7;
  }
  //droplets diplay
  void display(){
    fill(0,200,230);
    ellipse(loc.x,loc.y, sz, sz);
  }
  //water droplets moving up and then down for gravity effect
  void move(){
    vel.add(acc);
    loc.add(vel);
  }
  //prevents water droplets going and past the fountain and prevents lag
  boolean isDead() {
    if (loc.y+110 > height) {
      return true;
    } else {
      return false;
    }
  }
}

