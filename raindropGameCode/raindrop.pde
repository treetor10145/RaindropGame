class raindrop {
    int diam;
    PVector vel, loc, acel;
    
    raindrop(float x, float y) {
      diam = 100;
      loc = new PVector(x,y);
      vel = new PVector(0,1);
      acel = new PVector(0,5);
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
    boolean isInContactWith = true;
      if (dist(x,y,mouseX,mouseY) <= diam){
        isInContactWith = true;
      } else{
        isInContactWith = false;
      }
    void reset (){
      loc.x = random(width);
      loc.y = 0;
    }
}