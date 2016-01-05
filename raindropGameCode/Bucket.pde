class Bucket {
  float diam; //declare variables
  PVector loc; 
  
  Bucket(float idiam){ //setup the variables 
    diam = idiam; //set diameter as idiam
    loc = new PVector(mouseX,mouseY); //set loc as location of mouse
  }
  void display(){ //draw the bucket at mouse location
    fill(255);
    noStroke();
    loc.set(mouseX,mouseY);
    ellipse(loc.x,loc.y, diam, diam);
  }
}
    