class Bucket {
  float diam;
  PVector loc;
  
  Bucket(float idiam){ 
    idiam = diam;
    loc = new PVector(mouseX,mouseY);
  }
  void display2(){
    fill(255);
    noStroke();
    loc.set(mouseX,mouseY);
    ellipse(loc.x,loc.y, diam, diam);
  }
}
    