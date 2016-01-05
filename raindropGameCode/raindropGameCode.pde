PVector mouse;   //declare a P
ArrayList<Raindrop> rain = new ArrayList<Raindrop>();      //declare a new Raindrop called r
Bucket b;


void setup() {
  size(1200, 800);
  b = new Bucket(10);
  mouse = new PVector();
}

void draw() {
  println(rain.size());
  rain.add(new Raindrop(random(width), 0));
  mouse.set(b.loc.x, b.loc.y); //set value of mouse as mouseX,mouseY
  background(0, 200, 255);
  b.display();
  rain.add(new Raindrop(random(0, width), 0));
  for (int i = rain.size()-1; i >= 10; i--) {
    Raindrop r = rain.get(i);
    r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    r.display();      //display the raindrop
    if (r.isInContactWith(b)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      rain.remove(i);                         //if it is, reset the raindrop
    }
    if (r.loc.y > height + r.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      rain.remove(i);                           //if it does, reset the raindrop
    }
  }
}