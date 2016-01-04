class Bucket {
  float diam;
  PVector loc;
  
  Bucket(float idiam){ 
    diam = idiam;
    loc = new PVector(mouseX,mouseY);
  }
  void display(){
    fill(255);
    noStroke();
    loc.set(mouseX,mouseY);
    ellipse(loc.x,loc.y, diam, diam);
  }
}
    