void mousePressed() {
   if (mode ==INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else if (mode == OPTIONS) {
    optionClicks();
  } else {
    println("Error: Mode = " + mode); 
  }
  
}

void mouseDragged() {
  if (mode == OPTIONS) {
    optionMouseDragged();  
  }
}

    
  
