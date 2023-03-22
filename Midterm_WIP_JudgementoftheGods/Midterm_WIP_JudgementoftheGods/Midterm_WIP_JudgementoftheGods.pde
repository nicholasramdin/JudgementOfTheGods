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
int circleX = 900;
float circleY = 210.8;
int x = 50;
float r= 0;
float g= 255;
float b= 0;


PImage img;
PFont font;

PImage[] attack= new PImage[3]; //creating attack array with 3 images

int whichAttack=0; // creates variable for tracking position in attack array

void setup() {
  size(1080, 720);
  frameRate(30);
  img = loadImage("KratosWins.jpg");
  font = createFont("SourceSansPro-Regular.ttf", 32); //load font file from data folder
  textFont(font);


  //loading each image individually

  attack[0]= loadImage ("charge.gif");
  attack[1]= loadImage ("slash.gif");
  attack[2]= loadImage ("sword.gif");
}



void draw() {
  if (state=="titlescreen") {
    titlescreen();
  } else if (state=="game") {
    game();
  } else if (state=="gameover") {
    gameover();
  }
  println(state);
}

void game(){
  
  background(102, 202, 255);
  stroke(0);
  fill(0, 166, 15);
  textSize(32);
  text("Strike Zeus with your blades!", 860, 40, 240, 100);

  image(attack[whichAttack], width/2, height/2, 200, 200); //drawing attack image from array and setting parameters

  println (whichAttack);
  //ground under Kratos
  rect(600, 600, 500, 500);

  //high ground under Atreus
  rect(920, 210, 400, 400);

  //____________________________

  // Atreus


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

  //____________________________

  //Kratos

  //Kratos's Body
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

  //____________________________



  //Atreus's floating orb attack

  if (mousePressed == true) { //if mouse is pressed, create growing moving ellipse and color them green)
    stroke(255);
    fill(0, 255, 119);
    ellipse(circleX, circleY, x++, x++);
    circleX = circleX - 6;
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

  //____________________________


  // if Kratos has not defeated Zeus
  if (mouseX > 150) {


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
  } else { // if Kratos's fireblades hit Zeus, load Defeated Zeus
state="game over";
    for (int i = 60; i < 200; i=i+20) { //rain from cloud when Zeus is defeated
      stroke(0, 0, 255);
      line(i, 250, 100+i, 500);
      image(img, 200, 100); // load win image if blades hit Zeus
    }

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
}

//on each mouse press, load different attack image from array
//void mousePressed() {

//  whichAttack=int(random(attack.length));
//}



void spellrunes() {

  //Ellipses drawn to charge Atreus orb. Will animate this further later with timing functions + fill(). Orb will change color as it passes through each ellipse. Measured by timing fuction.

  for (int i = 400; i < 800; i=i+100) {
    stroke(0);
    ellipse(i, 190, 100, 100);
  }
}


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

void mousePressed(){
  
if (state== "titlescreen") {
    state="game";
  } else if (state=="game over") {
    state= "titlescreen";
  }
                   }

void titlescreen(){
  background(0);
  text("click to start game", width/2, height/2);
}

void gameover(){
  background(255, 0, 0);
  text("everyone loses.", width/2, height/2);
  text("click to play again.", width/2, height/2 + 50);
}
  
