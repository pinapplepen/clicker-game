void intro() {
  //Setup
  background(59, 172, 255);
  textFont(normal);
  fill(128, 255, 103);
  textSize(60);
  text("The", 75, 100);
  text("Preposterous", 300, 200);
  text("Political", 350, 300);
  text("Misadventure", 550, 400);
  
  //Play
  fill(37, 64, 229);
  strokeWeight(3);
  tactile(150, 500, 200, 100);
  textSize(40);
  rect(150, 500, 200, 100);
  fill(128, 255, 103);
  text("Play", 250, 550);
  
  //Options
  fill(37, 64, 229);
  strokeWeight(3);
  tactile(450, 500, 200, 100);
  rect(450, 500, 200, 100);
  fill(128, 255, 103);
  text("Options", 550, 550);
  
  //Music
  theme.play();
}

void introClicks() {
  if (mouseX > 150 && mouseX < 350 && mouseY > 500 && mouseY < 600) {
    mode = GAME;
  }
     if (mouseX > 450 && mouseX < 650 && mouseY > 500 && mouseY < 600) {
    mode = OPTIONS;
     }
}
 

void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+w) {
    stroke(tact);
  } else {
    stroke(0);
  }
}
