class Bucket {
  float diam;
  PVector loc;
  
  Bucket(float diam){
    diam = diam; 
    loc = new PVector(mouseX,mouseY);
  }
  void display(){
    fill(255);
    noStroke();
    ellipse(loc.x,loc.y, diam, diam);
  }
}
    