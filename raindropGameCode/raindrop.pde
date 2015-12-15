class Raindrop {
    int diam;
    PVector vel, loc, acel;
    
    Raindrop(float x, float y) {
      diam = 50;
      loc = new PVector(x,y);
      vel = new PVector(0,random(0,3));
      acel = new PVector(0,0.1);
    }
    void fall(){
      loc.add(vel);
      vel.add(acel);
    }
    void display(){
      fill(0,0,255);
      noStroke();
      ellipse(loc.x,loc.y,diam,diam);
    }
    void reset (){
      loc.x = random(width);
      loc.y = 0;
      vel.y = 1;
    }
    boolean isInContactWith(PVector mouse){
      if (dist(loc.x,loc.y,mouseX,mouseY) <= diam/2){
        return true;
      } else {
        return false;
      }
    }
}