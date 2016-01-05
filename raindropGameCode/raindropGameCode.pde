PVector mouse;   //declare a PCevtor
ArrayList<Raindrop> rain = new ArrayList<Raindrop>();      //declare a new Raindrop called r
Bucket b; //declare a new Bucket
int life; //declare an int to hold life
int timeStart; //declare an int to hold the starting time
int time; //declare an int to hold the current time and score

void setup() { //setup the variables
  size(1200, 800); 
  b = new Bucket(10); //set the bucket variable to a new bucket with a diameter of 10
  mouse = new PVector(); //set the mouse to a new PVector
  life = 10; //Set the life to 10
  textAlign(CENTER); 
  textSize(100); 
  timeStart = millis(); //set the timeStart to the current time for future calculations
  time = 0; //set the time to 0
}

void draw() {
  
  if (life > 0){ //if you are still alive
  time = millis() - timeStart; //set the time to the difference of the current time and the start
  rain.add(new Raindrop(random(width), 0)); //add rain to the game
  mouse.set(b.loc.x, b.loc.y); //set value of mouse as mouseX,mouseY
  background(0, 200, 255); 
  b.display(); //display the bucket
  fill(255,0,0); 
  text(life, width/2, height/2); //draw the life
  fill(0);
  text(time, width/2, height/2 + 100); //draw the time/score
  for (int i = rain.size()-1; i >= 10; i--) { //For loop for all rain
    Raindrop r = rain.get(i); //Set up rain variable
    r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    r.display();      //display the raindrop
    if (r.isInContactWith(b)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      rain.remove(i);  //remove selected rain
      life--; 
    }
    if (r.loc.y > height + r.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      rain.remove(i);                           //if it does, reset the raindrop
    }
  }
  }
  else {
    background(0, 200, 255); //Set the background
    text("YOU HAVE LOST\nCLICK TO PLAY AGAIN\nTime: " + time, width/2, height/2); //display game over
    if(mousePressed){ //if user clicks, restart the game
      life = 10; 
      timeStart = millis(); 
    }
  }
}