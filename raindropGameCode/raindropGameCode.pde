PVector mouse;   //declare a P
Raindrop [] r = new Raindrop [10];      //declare a new Raindrop called r
Bucket b;
// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1200, 800);
  b = new Bucket(150);
  mouse = new PVector(); //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  for (int i = 0; i < 10; i++){
    r[i] = new Raindrop(random(width), 0);//Initialize r. The parameters used are the initial x and y positions
  }
}

void draw() {
  mouse.set(mouseX, mouseY); //set value of mouse as mouseX,mouseY
  background(0, 200, 255);
  b.display();
  for (int i = 0; i < 10; i++){
    r[i].fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    r[i].display();      //display the raindrop
    if (r[i].isInContactWith(mouse)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      r[i].reset();                         //if it is, reset the raindrop
    }
    if (r[i].loc.y > height + r[i].diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      r[i].reset();                           //if it does, reset the raindrop
    }
  }
}