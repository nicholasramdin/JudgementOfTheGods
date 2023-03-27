// Judgment of the Gods by Nicholas Ramdin

// Protect the boy

// attack Zeus with Kratos by moving your mouse

// click your mouse to cycle through different attacks from Kratos

// holding down the up key will power up kratos and will also transform his blades into ice blades

// inspired from popular video game God of War.

// The theme for this sketch is a battle between mankind vs God(s).

// Striking Zeus will reset the orb attack

// Defeat Zeus by hitting him with Kratos's blades (move blades into Zeus with mouse) while powered up (while holding the up key)

// Left arrow key to turn music off in game() Right arrow key to turn music back on in game() (toggle music on/off function available only within game state) **for development/testing**

import processing.sound.*;

SoundFile music;


String state = "titlescreen";



// for Zeus's orb attack
float circleX = 150;
float circleY = 210.8;
int x = 50;
float r= 0;
float g= 255;
float b= 0;
int explosionX = 150;
//____________________________


PImage img; // Kratos Wins Image
PFont font; // SourceSansPro Font

PImage ZeusWins; // Image on defeat screen

PImage[] attack= new PImage[3]; //creating attack array with 3 images

PImage[] Zeusgif = new PImage[16]; // Zeus gif array for titlescreen

PImage[] Kratosgif = new PImage[12]; //Kratos gif for titlescreen

PImage[] Lightning =  new PImage[9]; // Lightning bolts for game state

int whichAttack=0; // creates variable for tracking position in attack array

int whichZeusgif;

int whichKratosgif;



int whichLightning;


//____________________________




void setup() {
  size(1080, 720);
  frameRate(30);
  img = loadImage("KratosWins.jpg");
  ZeusWins = loadImage("ZeusWins.png");
  font = createFont("SourceSansPro-Regular.ttf", 32); //load font file from data folder
  textFont(font);

  music = new SoundFile(this, "music.mp3");
  music.play();
  music.amp(.1);
  music.loop();


  //loading each image individually

  attack[0]= loadImage ("charge.gif");
  attack[1]= loadImage ("slash.gif");
  attack[2]= loadImage ("sword.gif");


  Kratosgif[0] = loadImage ("Kratosgif0.png");
  Kratosgif[1] = loadImage ("Kratosgif1.png");
  Kratosgif[2] = loadImage ("Kratosgif2.png");
  Kratosgif[3] = loadImage ("Kratosgif3.png");
  Kratosgif[4] = loadImage ("Kratosgif4.png");
  Kratosgif[5] = loadImage ("Kratosgif5.png");
  Kratosgif[6] = loadImage ("Kratosgif6.png");
  Kratosgif[7] = loadImage ("Kratosgif7.png");
  Kratosgif[8] = loadImage ("Kratosgif8.png");
  Kratosgif[9] = loadImage ("Kratosgif9.png");
  Kratosgif[10] = loadImage ("Kratosgif10.png");
  Kratosgif[11] = loadImage ("Kratosgif11.png");



  Zeusgif[0] = loadImage ("zeusframe0.png");
  Zeusgif[1] = loadImage ("zeusframe1.png");
  Zeusgif[2] = loadImage ("zeusframe2.png");
  Zeusgif[3] = loadImage ("zeusframe3.png");
  Zeusgif[4] = loadImage ("zeusframe4.png");
  Zeusgif[5] = loadImage ("zeusframe5.png");
  Zeusgif[6] = loadImage ("zeusframe6.png");
  Zeusgif[7] = loadImage ("zeusframe7.png");
  Zeusgif[8] = loadImage ("zeusframe8.png");
  Zeusgif[9] = loadImage ("zeusframe9.png");
  Zeusgif[10] = loadImage ("zeusframe10.png");
  Zeusgif[11] = loadImage ("zeusframe11.png");
  Zeusgif[12] = loadImage ("zeusframe12.png");
  Zeusgif[13] = loadImage ("zeusframe13.png");
  Zeusgif[14] = loadImage ("zeusframe14.png");
  Zeusgif[15] = loadImage ("zeusframe15.png");





  Lightning[0] = loadImage ("lightningframe0.png");
  Lightning[1] = loadImage ("lightningframe1.png");
  Lightning[2] = loadImage ("lightningframe2.png");
  Lightning[3] = loadImage ("lightningframe3.png");
  Lightning[4] = loadImage ("lightningframe4.png");
  Lightning[5] = loadImage ("lightningframe5.png");
  Lightning[6] = loadImage ("lightningframe6.png");
  Lightning[7] = loadImage ("lightningframe7.png");
  Lightning[8] = loadImage ("lightningframe8.png");
}





//____________________________





void draw() {
  if (state=="titlescreen") {
    titlescreen();
  } else if (state=="game") {
    game();
  } else if (state=="win") {
    win();
  } else if (state=="lose") {
    lose();
  }

  println(state);
}




//____________________________




void game() {
  background(0);
  stroke(0);
  fill(0, 166, 15);
  PFont Guazhiru;
  PFont font;
  font = createFont("SourceSansPro-Regular.ttf", 32); //load font file from data folder
  textFont(font, 20);
  fill(255);
  text("HELP! POWER UP AND STRIKE HIM BEFORE THE ORB GETS ME!!!", 860, 40, 240, 100); //Atreus text

  image(attack[whichAttack], width/2, height/2, 200, 200); //drawing attack image from array and setting parameters
  Guazhiru = createFont("Guazhiru.ttf", 86);
  textFont(font, 40);
  fill(181, 0, 0);
  text("PROTECT THE BOY", 100, 600);
  println (whichAttack);



  //____________________________

  //ground under Kratos

  fill(0, 181, 0);
  rect(600, 600, 500, 500);

  //high ground under Atreus
  rect(920, 210, 400, 400);


  //____________________________


  // if Kratos has not defeated Zeus

  if (mouseX > 150) {
    Zeus();
  }


  // if Kratos's fireblades hit Zeus, load Defeated Zeus
  else if (mouseX < 150) {

    defeatedZeus();
    circleX=150;
  }



  //____________________________



  atreus();
  //____________________________


  kratos();

  //____________________________




  stroke(255);
  fill(240, 255, 45);
  ellipse(circleX, circleY, 100, 300);
  circleX = circleX + 10;

  lightning();


  //____________________________



  if (circleX < 900) {

    state="game";
  } else if (circleX > 900) {

    state = "lose";
    circleX=150;
  }
}


//____________________________



void lightning() {


  image(Lightning[frameCount%9], 250, 5);
  image(Lightning[frameCount%9], 550, 5);
}



//____________________________



//Kratos

void kratos() {



  //Kratos's Head
  strokeWeight(6);
  stroke(255);
  fill(182, 0, 0);
  ellipse(700, 520, 60, 60);

  //Kratos's eyes
  fill(255);
  ellipse(710, 510, 10, 10);
  ellipse(690, 510, 10, 10);


  //Kratos's eyebrow
  stroke(255);
  line(680, 500, 720, 500);

  //Kratos's body
  stroke(255);
  fill(182, 0, 0);
  rect(680, 550, 50, 90);

  //Kratos's fireblades
  stroke(185, 37, 0);
  fill(249, 89, 0); //fireblades color
  triangle(680, 600, mouseX, mouseY, mouseX, 200); //move mouse to control fireblades
}



//____________________________







//Kratos Power Up Form


void kratosPOWERUP() {

  //Kratos's Power Up Head
  strokeWeight(6);
  stroke(255);
  fill(0, 0, 182);
  ellipse(700, 320, 120, 120);

  //Kratos's Power Up  eyes
  fill(255);
  ellipse(710, 310, 20, 20);
  ellipse(680, 310, 20, 20);


  //Kratos's Power Up  eyebrow
  stroke(255);
  line(650, 300, 750, 300);

  //Kratos's Power Up  body
  stroke(255);
  fill(0, 0, 182);
  rect(620, 385, 200, 300);

  //Kratos's  Power Up iceblades
  stroke(185, 37, 0);
  fill(0, 255, 255); //iceblades color
  triangle(680, 600, mouseX, mouseY, mouseX, 200); //move mouse to control iceblades
}




//____________________________




// Atreus




void atreus() {





  //Atreus's Head
  strokeWeight(2);

  stroke(255);
  fill(182, 0, 0);
  ellipse(950, 160, 40, 40);

  //Atreus's Eyes

  fill(255);
  ellipse(940, 160, 10, 10);
  ellipse(950, 160, 10, 10);


  //Atreus's Body
  stroke(255);
  fill(182, 0, 0);
  rect(935, 180, 30, 60);
}




//____________________________







void Zeus() {
  //Zeus



  //Zeus's head
  strokeWeight(4);
  stroke(240, 255, 45);
  fill(254, 216, 150);
  ellipse(100, 100, 60, 60);


  //Zeus's eyebrows
  stroke(0);
  line(90, 70, 100, 80); //left brow (your left not Zeus's)
  line(120, 70, 100, 80); //right brow (your right not Zeus's)

  //Zeus's eyes
  fill(0);
  ellipse(90, 90, 10, 10);
  ellipse(120, 90, 10, 10);



  //Zeus's body
  stroke(240, 255, 45);
  fill(254, 216, 150);
  rect(70, 130, 50, 90);


  //Zeus's Cloud

  noStroke();
  fill(255);
  ellipse(100, 210, 40, 40);
  ellipse(80, 210, 40, 40);
  ellipse(110, 210, 40, 40);
  ellipse(120, 210, 40, 40);
  ellipse(70, 210, 40, 40);
  ellipse(140, 210, 40, 40);
  ellipse(60, 210, 40, 40);

  //Zeus's bolts
  stroke(40, 255, 255);
  fill(240, 255, 45); //bolt color
  triangle(200, 130, mouseX, 300, 440, 460); //third bolt furthest from Zeus
  triangle(440, mouseY, 300, 160, 280, 320); //middle bolt
  triangle(90, 120, 80, 150, 300, 200); // bolt closest to Zeus, the one he's holding
}




//____________________________






void defeatedZeus() {

  //Defeated Zeus


  //Defeated Zeus's head
  strokeWeight(4);
  stroke(240, 255, 45);
  fill(255, 0, 0);
  ellipse(100, 100, 60, 60);


  //Defeated Zeus's eyebrows
  stroke(0);
  line(90, 70, 100, 80); //left brow (your left not his)
  line(120, 70, 100, 80); //right brow (your right not his)

  //Defeated Zeus's eyes
  fill(0);
  line(90, 90, 110, 100);
  line(120, 90, 80, 100);



  //Defeated Zeus's body
  stroke(240, 255, 45);
  fill(255, 0, 0);
  rect(70, 130, 50, 90);


  //Defeated Zeus's cloud

  noStroke();
  fill(0);
  ellipse(100, 210, 40, 40);
  ellipse(80, 210, 40, 40);
  ellipse(110, 210, 40, 40);
  ellipse(120, 210, 40, 40);
  ellipse(70, 210, 40, 40);
  ellipse(140, 210, 40, 40);
  ellipse(60, 210, 40, 40);
}





//____________________________






// if up arrow key is held down, kratos will power up, else kratos is normal

void keyPressed() {
  if (key == CODED) {
    if(keyCode == LEFT){
      
      music.stop();
    }
    if(keyCode == RIGHT){
      music.play();
    }
    
    if (keyCode == UP) {
      // if Kratos has not defeated Zeus


      if (mouseX > 150) {


        Zeus();
      }

      // if Kratos's fireblades hit Zeus, load Defeated Zeus

      else {
        state="win";
      }
      kratosPOWERUP();
    } else {
      kratos();
    }
  }
}

//____________________________




// mousePress function to click to start game from titlescreen to game and from gameover and return also implementing victoryscreen and defeatscreen on win and lose conditions

void mousePressed() {

  if (state== "titlescreen") {
    state="game";
  } else if (state=="win") {
    state= "titlescreen";
  } else if (state=="lose") {
    state = "titlescreen";
  }

  whichAttack=int(random(attack.length));
}




//____________________________



//titlescreen

void titlescreen() {

  background(255);
  PFont Guazhiru;
  PFont font;
  Guazhiru = createFont("Guazhiru.ttf", 86);
  font = createFont("SourceSansPro-Regular.ttf", 32); //load font file from data folder


  fill(255, 0, 0);
  textFont(Guazhiru, 40);
  text("Controls", 100, 500);
  fill(0);
  textFont(font, 20);
  text("Move the mouse to control your blades", 100, 550);
  text("Hold down the UP arrow key to Power Up", 100, 600);
  text("Click the mouse to cycle through different attacks", 100, 650);
  textFont(font, 15);
  text("Nicholas Ramdin", 900, 700);
  textFont(Guazhiru);
  text("JUDGEMENT OF THE GODS", 500, 200);
  text("CLICK TO START GAME", 550, 300);


  image(Zeusgif[frameCount%16], 110, 130);
  image(Kratosgif[frameCount%12], 680, 450);
}




//____________________________


//if the player loses

void lose() {
  background(255, 0, 0);
  PFont Guazhiru;
  PFont font;
  Guazhiru = createFont("Guazhiru.ttf", 86);
  image(ZeusWins, 100, 100); // load win image if blades hit Zeus
  font = createFont("SourceSansPro-Regular.ttf", 32); //load font file from data folder
  fill(181, 0, 0);
  textFont(Guazhiru, 100);
  text("YOU LOSE!", 300, 250);
  fill(0, 181, 181);
  textFont(font, 30);
  text("CLICK TO RETURN TO THE TITLE SCREEN", 120, 300);
}



//____________________________


//if the player wins

void win() {
  background(0, 255, 0);
  for (int i = 60; i < 200; i=i+20) { //rain from cloud when Zeus is defeated
    stroke(0, 0, 255);
    line(i, 250, 100+i, 500);
    image(img, 200, 100); // load win image if blades hit Zeus
    font = createFont("SourceSansPro-Regular.ttf", 32); //load font file from data folder
    textFont(font, 25);
    text("YOU WIN!", 100, 550);
    text("CLICK TO RETURN TO THE TITLE SCREEN", 100, 600);
  }

  defeatedZeus();
}





//____________________________




/* Citations
 
 IMAGES
 
 //____________________________
 Kratos Wins image source:
 https://www.deviantart.com/dimension-dino/art/Death-Battle-Kratos-vs-Guts-314452257
 
 
 ZeusWins image source screenshot from this video:
 https://www.youtube.com/watch?v=OyrFbtlSSSw
 
 slash.gif/sword.gif/charge.gif image source:
 https://ceotrendsummitjibril.blogspot.com/2022/02/view-21-animated-sword-slash-gif.html
 
 
 
 //____________________________
 
 
 GIFS
 
 Kratos Gif  on titlescreen image source:
 https://www.pinterest.com/pin/11259067793894929/
 
 Lightning GIF image source:
 https://i.gifer.com/origin/58/580173ef50289fd49e55e77e6690fe46_w200.gif
 
 Zeus Gif on title screen image source:
 https://www.thelastdialogue.org/article/quran-miracle-it-mentions-one-god-without-any-partner/
 
 
 //____________________________
 
 FONT
 
 Title screen Guazhiru Font
 license: Freeware, Non-Commercial
 link: https://www.fontspace.com/guazhiru-font-f24042
 
 
 
 //____________________________
 
 MUSIC
 
 
 music.mp3:
 https://www.fesliyanstudios.com/royalty-free-music/downloads-c/8-bit-music/6
 
 */
