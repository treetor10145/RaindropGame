PVector mouse;   //declare a P
ArrayList<Raindrop> rain = new ArrayList<Raindrop>();      //declare a new Raindrop called r
Bucket b;
Raindrop r;
// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1200, 800);
  b = new Bucket(150);
  mouse = new PVector(); //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  rain.add(new Raindrop(random(width),0));
}
  
void draw() {
  mouse.set(mouseX, mouseY); //set value of mouse as mouseX,mouseY
  println(rain.size());
  background(0, 200, 255);
  b.display2();
  rain.add(new Raindrop(random(width),0));
  for (int i = rain.size(); i < 10; i++){
    Raindrop r = rain.get(i);
    r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    r.display();      //display the raindrop
    if (r.isInContactWith(mouse)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      r.reset();                         //if it is, reset the raindrop
    }
    if (r.loc.y > height + r.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      r.reset();                           //if it does, reset the raindrop
    }
  }
}