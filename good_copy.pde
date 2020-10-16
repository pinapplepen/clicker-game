//Tutorial Game
//William Cheng
//Block 2-2B

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Variables
int mode; 
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3; 
final int OPTIONS = 4;


//Target Variables
float x, y, d;
float vx, vy; 
int cap;
int selected; 
int score, lives, highScore; 

//Images
PImage trump;
PImage hilary;
PImage biden;
PImage shoe;
PImage house;

//Slider
float sliderX;
float thickness;

//Fonts
PFont normal;

//Sound Variables
Minim minim;
AudioPlayer theme, click, bump, gameover;

//Color Pallet
color tact = #FFD767;

void setup() { // Start Setup ===============================
  size(800, 800);
  mode = INTRO;
  textSize(50);
  textAlign(CENTER, CENTER); 
  normal = createFont("Valorent.ttf", 150);
  trump = loadImage("trump.png");
  hilary = loadImage("hilary.png");
  biden = loadImage("biden.png");
  shoe = loadImage("shoe.jpg");
  house = loadImage("whitehouse.jpg");

  
  //Target initialization 
  thickness = 200;
  sliderX = 400;
  x = width/2;
  y = height/2;
  vx = random(-5, 5);
  vy = random(-5, 5); 
  score = 0;
  lives = 3;
  highScore = 0;
  selected = 1;
  cap = 0;
  
  //Minim
  minim = new Minim(this);
  theme = minim.loadFile("beach.mp3");
  click = minim.loadFile("hitmarker.mp3");
  bump = minim.loadFile("oof.mp3");
  gameover = minim.loadFile("gameovermusic.mp3");
  
} //End Setup ===============================================


void draw() { // Start Setup ================================

  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error: Mode = " + mode); 
  }
} // End Setup ==============================================
