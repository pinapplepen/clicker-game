void gameover() {
  //Background
  image(shoe, 0, 0, 800, 800);
  
  //Music
  theme.pause();
  bump.pause();
  click.pause();
  gameover.play();
  
  //Highscore
  textSize(50);
  fill(38, 252, 240);
  text("Highscore: " + highScore, 400, 300);
 
 //Game Over
 textSize(120);
 text("Game Over", 400, 100);
 
 //Back to Menu
 fill(37, 64, 229);
 strokeWeight(3);
 tactile(150, 500, 200, 100);
 rect(150, 500, 200, 100);
 fill(128, 255, 103);
 textSize(50);
 text("Menu", 250, 550);
 
 //Quit
 fill(37, 64, 229);
 strokeWeight(3);
 tactile(450, 500, 200, 100);
 rect(450, 500, 200, 100);
 fill(128, 255, 103);
 textSize(50);
 text("Exit", 550, 550);
 
}



void gameoverClicks() {
  if (mouseX > 150 && mouseX < 350 && mouseY > 500 && mouseY < 600) {
   mode = INTRO;
   reset();
  }
  
   if (mouseX > 450 && mouseX < 650 && mouseY > 500 && mouseY < 600) {
   exit();
  }
}

void reset() {
  //Reset
  x = width/2;
  y = height/2;
  d = 200;
  vx = random(-5, 5);
  vy = random(-5, 5);
  gameover.pause();
  gameover.rewind();
 
  score = 0;
  lives = 3;
}
