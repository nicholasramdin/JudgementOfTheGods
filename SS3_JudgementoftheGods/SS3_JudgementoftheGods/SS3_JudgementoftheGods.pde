// Judgment of the Gods by Nicholas Ramdin

// press and hold left button on your mouse for Atreus to release his energy orb

// attack Zeus with Kratos by moving your mouse 

// inspired from popular video game God of War.

// The theme for this sketch is a battle between mankind vs God(s).

// Defeat Zeus by hitting him with Kratos's blades (move blades into Zeus with mouse)



// for Atreus floating orb attack: triggered by mousePressed
int circleX = 900;
float circleY = 210.8;
int x = 50;
float r= 0;
float g= 255;
float b= 0;



void setup() {
  size(1080, 720);
  frameRate(30);
}



void draw() {
  background(102, 202, 255);
  stroke(0);
  fill(0, 166, 15);



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

  if (mousePressed == true) { //if mouse is pressed, create growing moving ellipse, fill with random rgb parameters(all 5 ellipses)
    stroke(255);
    fill(r, g, b);
    r= random (255);
    g= random (0);
    b= random (181);
    ellipse(circleX, circleY, x++, x++);
    circleX = circleX - 6;
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

  //Ellipses drawn to charge Atreus orb. Will animate this further later with timing functions + fill(). Orb will change color as it passes through each ellipse. Measured by timing fuction.
      
  for (int i = 400; i < 800; i=i+100) {
    stroke(0);
    ellipse(i, 190, 100, 100);
  }

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

    for (int i = 60; i < 200; i=i+20) { //rain from cloud when Zeus is defeated
      stroke(0, 0, 255);
      line(i, 250, 100+i, 500);
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
