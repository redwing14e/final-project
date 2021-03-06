//boolean for whether or not the back button has been pressed
boolean backC = false;

//counter for keeping the back screen stay on after being pressed
int backCount =0;

void ms() {
  //loads font and aligns text
  textFont(startFont);
  textAlign(LEFT, TOP);
  //makes the boolean of the button to be true when the back button is pressed
  if (mousePressed && mouseX>width/10 && mouseY>height/10 && mouseX< 570 && mouseY< height/10 + height/13) {
    backC=true;
  }
  
  //when back button has not been pressed write the text normally and have the background normal
  if (!backC) {
    fill(150, 250, 255);
    rect(0, 0, width, height);
    fill(0);
    text("BACK", width/10, height/10);
    //sets the counter to zero for it to start
    backCount=0;
  } else {
    //when its been pressed change the text color and background color and start the counter
    fill(0);
    rect(0, 0, width, height);
    fill(255, 0, 0);
    backCount++;
    text("BACK", width/10, height/10);
    //ounce the counter has reached a ceratin point return to game and turn off this screen
    if (backCount>10) {
      game = true;
      backC=false;
      menu = false;
    }
  }
   //if start button is pressed return to start screen
  if (mousePressed && mouseX>width/10 && mouseY>8*height/10 && mouseX< 617 && mouseY< 954) {
    startup = true;
    menu = false;
    origin();
  }
  //fill the text start button black 
  fill(0);
  text("START", width/10, 8 * height/10);
  
  //dispaly all shapes for instructions to be placed on 
  fill(0);
  rect(width/2-240, 580, 680, 240, 30);
  rect(width/2-50, 360, 240, 300, 30);
  fill(255, 245, 160);
  rect(width/2, 600, 200, 200, 30);
  rect(width/2-30, 380, 200, 200, 30);
  rect(width/2-220, 600, 200, 200, 30);
  rect(width/2+220, 600, 200, 200, 30);
  
  //when back button has been pressed change the text color
  if (backC) {
    fill(255, 0, 0);
  } else {
    fill(0);
  }
  
  //display all text involving instructions for player
  textFont(helpFont);
  textAlign(CENTER, CENTER);
  textSize(78);
  text("W", width/2+70, 440);
  text("A", width/2-120, 660);
  text("S", width/2+100, 660);
  text("D", width/2+320, 660);
  textSize(32);
  text("JUMP", width/2+70, 520);
  text("MOVE", width/2-120, 720);
  text("LEFT", width/2-120, 760);
  text("MOVE", width/2+320, 720);
  text("RIGHT", width/2+320, 760);
  text("ABSOLUTELY", width/2+100, 720);
  text("USELESS", width/2+100, 760);
}