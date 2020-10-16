void game() {
  //Setup
  theme.play();
  image(house, 0, 0, 800, 800);
  fill(252, 232, 38);
  textSize(50);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100); 
  
  //Pause Butoon
  fill(0);
  stroke(0);
  strokeWeight(1);
  tactile(0, 0, 100, 100);
  rect(0, 0, 100, 100);
  stroke(255);
  strokeWeight(10);
  line(30, 25, 30, 75);
  line(70, 25, 70, 75);
 
 
  
  

  
  //display target
  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(x, y, thickness);
  fill(0);


  //Circle Background
  if (selected == 1) {
  image(trump, x - thickness/2, y - thickness/2, thickness, thickness); 
  } else if (selected == 2) {
   image(hilary, x - thickness/2, y - thickness/2, thickness, thickness);
  } else if (selected == 3) {
   image(biden, x - thickness/2, y - thickness/2, thickness, thickness);
  }
  
  
  
  
  
  //Calculating Highscore
    if (highScore < score) {
    highScore = score;
  }
  
  //moving
  x = x + vx;
  y = y + vy;
  
  //bouncing
  if (x < thickness/2 | x > width - thickness/2) {
    vx = vx * -1;
  }
  
  if (y < thickness/2 | y >height - thickness/2) {
    vy = vy * -1;
  }
  

    
  
}

void gameClicks() {
  
   //Game
   if ( dist(mouseX, mouseY, x, y) < thickness/2) {
    score = score + 1;
    click.rewind();
    click.play();
    
    //Toggle On
    if (cap % 2 == 0 && vx < 5) {
    vx = vx * 1.1;
    vy = vy * 1.1;
    
    }
    
    //Toggle Off
    if (cap % 2 != 0) {
    vx = vx * 1.1;
    vy = vy * 1.1;
} 
  //Pause
  } else if (mouseX > 0 && mouseX < 100 && mouseY > 0 && mouseY < 100) {
   mode = PAUSE;
   
  //Lose Lives
  } else {
    lives = lives - 1;
    bump.rewind();
    bump.play();
    
    if (lives == 0) mode = GAMEOVER;
  }
  
  
  
  
}
