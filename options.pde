void options() {
  background(250, 103, 209);
  textSize(50);
  fill(255);
  text("Politician Select", 400, 50);
  

  //Trump
  stroke(5);
  tactileCircle(408, 188, 177);
  circle(408, 188, 177);
  image(trump, 320, 100, 175, 175);
  
  //Hilary
  stroke(5);
  tactileCircle(687, 188, 177);
  circle(687, 188, 177);
  image(hilary, 600, 100, 175, 175);
  
   
  //Biden
  stroke(5);
  tactileCircle(137, 188, 177);
  circle(137, 188, 177);
  image(biden, 50, 100, 175, 175);
  
  //Selected
  if (selected == 1) {
  stroke(0);
  fill(69, 252, 248);
  circle(408, 188, 177);
  fill(37, 64, 229);
  textSize(30);
  text("Selected", 408, 188);
  
  } else if (selected == 2) {
  stroke(0);
  fill(69, 252, 248);
  circle(687, 188, 177);
  fill(37, 64, 229);
  textSize(30);
  text("Selected", 687, 188);
  
  } else if (selected == 3) {
  stroke(0);
  fill(69, 252, 248);
  circle(137, 188, 177);
  fill(37, 64, 229);
  textSize(30);
  text("Selected", 137, 188);
  }
  
  
  
  
  //Back Button
  tactile(300, 650, 200, 100);
  fill(69, 252, 248);
  rect(300, 650, 200, 100);
  textFont(normal);
  fill(37, 64, 229);
  textSize(50);
  text("Back", 400, 700);
 
  
  //Speed Cap
  fill(255);
  textSize(50);
  text("Speed:", 300, 575);
  
  //Capped
  if (cap % 2 == 0); {
  tactile(400, 555, 125, 40);
  fill(0, 255, 0);
  rect(400, 555, 125, 40);
  fill(0);
  textSize(25);
  fill(0);
  text("Capped", 462, 575);
  }
  
  if (cap % 2 != 0) { 
  tactile(385, 555, 150, 40);
  fill(255, 0, 0);
  rect(385, 555, 150, 40);
  fill(0);
  textSize(25);
  fill(0);
  text("Uncapped", 462, 575);
  }
  
  //Slider
  tactileCircle(sliderX, 450, thickness/2);
  line(250, 450, 550, 450);
  fill(255);
  circle(sliderX, 450, thickness);
  textSize(50);
  text("Clicker Size", 400, 325);


  
  
  
}  


void optionClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 650 && mouseY < 750) {
   mode = INTRO;
  }
  
  //Trump
  if (dist(408, 188, mouseX, mouseY) < 176) { 
    selected = 1;
  }
  
  //Hilary
  if (dist(687, 188, mouseX, mouseY) < 176) { 
    selected = 2;
  }
  
  //Biden
  if (dist(137, 188, mouseX, mouseY) < 176) { 
    selected = 3;
}


  
  //Cap
  if (mouseX > 385 && mouseX < 535 && mouseY > 555 && mouseY < 590) {
  cap = cap + 1;
  }
 
}


void optionMouseDragged(){
  controlSlider();
  
}

//Slider
void controlSlider() {
  if (mouseX > 250 && mouseX < 650 && mouseY > 350 && mouseY < 550) {
    sliderX = mouseX;
    
    thickness = mouseX - 200;
  }
}

//Slider Button 
void tactileCircle (float x, float y, float r) {
  if (dist(x, y, mouseX, mouseY) < r) { 
    stroke(tact);
  } else {
    stroke(0);
  }
}
//Even or Odd
boolean even(int cap){
  return cap % 2 == 0;
}
 
boolean odd(int cap){
  return cap % 2 != 0;
}
