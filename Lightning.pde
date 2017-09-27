int mouseCounter = 0;
int startX = 300;
int startY = 50;
int endX = 0;
int endY = 300;
int c = (int) (Math.random() * 25 + 100); // sets the C to a random int from (100-124)
int a = (int) (Math.random() * 50 + 100);
int b = (int) (Math.random() * 10 + 200);
void setup() {
  size(900, 600);
   background(0);
}
void draw () {
  stroke(a, b, c); // stroke set to variable and does readom one each time
  endX = startX + (int)(Math.random() * 10);// starts the bolt at a random spot
  endY = startY + (int)(Math.random() * 30 - 9);// ends the bolt at a random spot
  line(startX,startY,endX,endY); // draws the bolt
  startX = endX; // sets start to end
  startY = endY; // sets start to end
}
void mousePressed() {
  mouseCounter = mouseCounter +1; //increases the mousecounter by one each time it is pressed
  startX = (int)(Math.random() * 100 + 300); // starts the bolt at a random spot
  startY = (int)(Math.random() * 30);// end the bolt at a random spot
  if (mouseCounter >= 3){
   clear();// clears the screen
   mouseCounter = 0;// sets mouse counter to Zero
  }
}
