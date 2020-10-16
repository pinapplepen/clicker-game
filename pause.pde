void pause() {
  theme.pause();
  textSize(100);
  fill(252, 232, 38);
  text("PAUSED", 400, 400);
  
  //Pause Button
  fill(0);
  stroke(0);
  strokeWeight(1);
  tactile(0, 0, 100, 100);
  rect(0, 0, 100, 100);
  stroke(255);
  strokeWeight(10);
  triangle(25, 25, 25, 75, 75, 50);
}

void pauseClicks() {
  if (mouseX > 0 && mouseX < 100 && mouseY > 0 && mouseY < 100) {
  mode = GAME;
}
}
