class Raindrop {
    int diam; //declare variables
    PVector vel, loc, acel;
    
    Raindrop(float x, float y) { //setup the variables
      diam = 50;
      loc = new PVector(x,y);
      vel = new PVector(0,random(0,3));
      acel = new PVector(0,0.1);
    }
    void fall(){ //set the raindrop to fall
      loc.add(vel);
      vel.add(acel);
    }
    void display(){ //display the raindrop
      fill(0,0,255);
      noStroke();
      ellipse(loc.x,loc.y,diam,diam);
    }
    void reset (){ //reset the raindrop
      loc.x = random(width);
      loc.y = 0;
      vel.y = 1;
    }
    boolean isInContactWith(Bucket b){ //if the bucket is in contact with the raindrop, indicate a true reading
      if (loc.dist(b.loc) <= diam/2 + b.diam/2){
        return true;
      } else {
        return false;
      }
    }
}