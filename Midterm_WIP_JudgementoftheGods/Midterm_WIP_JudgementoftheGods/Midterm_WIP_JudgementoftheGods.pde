// Judgment of the Gods by Nicholas Ramdin

// press and hold left button on your mouse for Atreus to release his energy orb

// attack Zeus with Kratos by moving your mouse

// click your mouse to cycle through different attacks from Kratos

// holding down the up key will power up kratos and will also transform his blades into ice blades

// inspired from popular video game God of War.

// The theme for this sketch is a battle between mankind vs God(s).

// Defeat Zeus by hitting him with Kratos's blades (move blades into Zeus with mouse)



String state = "titlescreen";

// for Atreus floating orb attack: triggered by mousePressed
int circleX = 150;
float circleY = 210.8;
int x = 50;
float r= 0;
float g= 255;
float b= 0;
int explosionX = 150;
//____________________________


PImage img;
PFont font;

PImage ZeusWins;

PImage[] attack= new PImage[3]; //creating attack array with 3 images

PImage[] Zeusgif = new PImage[16];

PImage[] Kratosgif = new PImage[12];

PImage[] Spellgif = new PImage[15];

int whichAttack=0; // creates variable for tracking position in attack array

int whichZeusgif;

int whichKratosgif;

int whichSpellgif;
//____________________________




void setup() {
  size(1080, 720);
  frameRate(30);
  img = loadImage("KratosWins.jpg");
  ZeusWins = loadImage("ZeusWins.png");
  font = createFont("SourceSansPro-Regular.ttf", 32); //load font file from data folder
  textFont(font);



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


  Spellgif[0] = loadImage ("spellframe0.png");
  Spellgif[1] = loadImage ("spellframe1.png");
  Spellgif[2] = loadImage ("spellframe2.png");
  Spellgif[3] = loadImage ("spellframe3.png");
  Spellgif[4] = loadImage ("spellframe4.png");
  Spellgif[5] = loadImage ("spellframe5.png");
  Spellgif[6] = loadImage ("spellframe6.png");
  Spellgif[7] = loadImage ("spellframe7.png");
  Spellgif[8] = loadImage ("spellframe8.png");
  Spellgif[9] = loadImage ("spellframe9.png");
  Spellgif[10] = loadImage ("spellframe10.png");
  Spellgif[11] = loadImage ("spellframe11.png");
  Spellgif[12] = loadImage ("spellframe12.png");
  Spellgif[13] = loadImage ("spellframe13.png");
  Spellgif[14] = loadImage ("spellframe14.png");
}

//____________________________




void draw() {
  if (state=="titlescreen") {
    titlescreen();
  } else if (state=="game") {
    game();
  } else if (state=="gameover") {
    gameover();
  } else if (state=="defeatscreen") {
    defeatscreen();
  }

  println(state);
}




//____________________________




void game() {

  background(102, 202, 255);
  stroke(0);
  fill(0, 166, 15);
  font = createFont("SourceSansPro-Regular.ttf", 32); //load font file from data folder
  textFont(font, 20);

  text("HELP! POWER UP AND STRIKE HIM BEFORE THE ORB GETS ME!!!", 860, 40, 240, 100);

  image(attack[whichAttack], width/2, height/2, 200, 200); //drawing attack image from array and setting parameters

  println (whichAttack);
  //ground under Kratos
  rect(600, 600, 500, 500);

  //high ground under Atreus
  rect(920, 210, 400, 400);






  //____________________________

  atreus();
  //____________________________


  kratos();

  //____________________________



  //Atreus's floating orb attack
/*
  if (mousePressed == true) { //if mouse is pressed, create growing moving ellipse and color them hot pink)
    stroke(255);
    fill(240, 255, 45);
    ellipse(circleX, circleY, x++, x++);
    circleX = circleX + 6;
    spellrunes(); // when mouse is pressed activate user function to draw charging spellrune circles
  } else if (mousePressed == false) { //Atreus on standby with energy orb stored in box. Fill is hot pink.
    stroke(255);
    fill(255, 0, 151);
    rect(935, 180, 30, 60);
    ellipse(950, 160, 40, 40);
    rect(900, 210, 50, 50);

    fill(255);
    ellipse(940, 160, 10, 10);
    ellipse(950, 160, 10, 10);
  }
*/

 stroke(255);
    fill(240, 255, 45);
    ellipse(circleX, circleY, 100, 300);
    circleX = circleX + 6;
    spellrunes(); 




  if (circleX < 800) {

    state="game";
  }else if (circleX > 800){
    
    state = "defeatscreen";
    circleX=150;
    
  }


  //else if (explosionX) {

  //state =  "gameover()";


  //____________________________






  // if Kratos has not defeated Zeus


  if (mouseX > 150) {


    Zeus();
  }

  // if Kratos's fireblades hit Zeus, load Defeated Zeus

  else {
    state="gameover";
  }
}

//____________________________




//void explosion() {


//defeatscreen();
//}






//____________________________







void spellrunes() {

  //Ellipses drawn to charge Atreus orb. Will animate this further later with timing functions + fill(). Orb will change color as it passes through each ellipse. Measured by timing fuction.

  for (int i = 500; i < 600; i=i+100) {
    stroke(0);
   
    image(Spellgif[frameCount%15], 250, 50);
  }
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
    if (keyCode == UP) {

      kratosPOWERUP();
    } else {
      kratos();
    }
  }
}

//____________________________




// mousePress function to click to start game from titlescreen to game and from gameover and return

void mousePressed() {

  if (state== "titlescreen") {
    state="game";
  } else if (state=="gameover") {
    state= "titlescreen";
  } else if (state=="defeatscreen") {
    state = "titlescreen";
  }

  whichAttack=int(random(attack.length));
}




//____________________________



//titlescreen

void titlescreen() {

  background(255);
  PFont Guazhiru;
  Guazhiru = createFont("Guazhiru.ttf", 86);

  fill(0);
  textFont(Guazhiru, 50);
  text("Nicholas Ramdin", 150, 700);

  textFont(Guazhiru);
  text("JUDGEMENT OF THE GODS", 500, 200);
  text("CLICK TO START GAME", 550, 300);


  image(Zeusgif[frameCount%16], 110, 130);
  image(Kratosgif[frameCount%12], 680, 450);
}




//____________________________



void defeatscreen() {
  background(255, 0, 0);

  image(ZeusWins, 100, 100); // load win image if blades hit Zeus
  font = createFont("SourceSansPro-Regular.ttf", 32); //load font file from data folder
  textFont(font, 25);
  text("YOU LOSE!", 200, 150);
  text("CLICK TO RETURN TO THE TITLE SCREEN", 200, 200);
}























//____________________________


//gameover

void gameover() {
  background(0, 255, 0);
  for (int i = 60; i < 200; i=i+20) { //rain from cloud when Zeus is defeated
    stroke(0, 0, 255);
    line(i, 250, 100+i, 500);
    image(img, 200, 100); // load win image if blades hit Zeus
    font = createFont("SourceSansPro-Regular.ttf", 32); //load font file from data folder
    textFont(font, 25);
    text("YOU WIN!", 700, 550);
    text("CLICK TO RETURN TO THE TITLE SCREEN", 600, 600);
  }

  defeatedZeus();
}





//____________________________




/* Citations
 
 IMAGES
 ____________
 Kratos Wins image source:
 https://www.deviantart.com/dimension-dino/art/Death-Battle-Kratos-vs-Guts-314452257
 
 Kratos.Gif image source:
 https://www.pinterest.com/pin/11259067793894929/
 
 ZeusWins image source screenshot from this video:
 https://www.youtube.com/watch?v=OyrFbtlSSSw
 __________________
 
 Title screen Guazhiru Font
 license: Freeware, Non-Commercial
 link: https://www.fontspace.com/guazhiru-font-f24042
 
 
 */
