// Judgment of the Gods by Nicholas Ramdin


void setup() {
  size(1080,720);
  frameRate(30);
}

void draw() {
  background(102, 202, 255);
    stroke(0);
    fill(0, 166, 15);
      rect(600, 600,500,500);
  
  //ZEUS
  
  
    
  //ZEUShead
  strokeWeight(4);
  stroke(240, 255, 45);
  fill(254, 216, 150);
  ellipse(100,100,60,60);
  
  
  //ZEUSeyebrows
    stroke(0);
  line(90, 70, 100, 80); //left brow (your left not his)
  line(120, 70, 100, 80); //right brow (your right not his)

  //ZEUSeyes
  fill(0);
  ellipse(90,90,10,10);
  ellipse(120,90,10,10);
  

  
  //ZEUSbody
   stroke(240, 255, 45);
  fill(254, 216, 150);
  rect(70, 130,50,90);
  
  
  //ZEUScloud
  
 noStroke();
  fill(255);
    ellipse(100,210,40,40);
   ellipse(80,210,40,40);
    ellipse(110,210,40,40);
    ellipse(120,210,40,40);
    ellipse(70,210,40,40);
     ellipse(140,210,40,40);
     ellipse(60,210,40,40);
     
   

  
  //kratos
  
  strokeWeight(6);
  //kratos head
   stroke(255);
  fill(182, 0, 0);
  ellipse(700,520,60,60);
  
 //kratos eyes
  fill(255);
  ellipse(710,510,10,10);
  ellipse(690,510,10,10);
  
  
  //kratos eyebrow 
  stroke(255);
  line(680, 500, 720, 500);
  
  //kratos body
  stroke(255);
fill(182, 0, 0);
  rect(680, 550,50,90);
  
    //fireblades
    stroke(185, 37, 0);
  fill(249, 89, 0); //fireblades color
  //triangle(200,130,360, 300, 440, 460); //bigger bolt 
  //triangle(440,90,300, 160, 280, 320); //big bolt 
  triangle(680,600,mouseX,mouseY,mouseX,200); //closer bolt 
  
    
  //bolts
  stroke(40, 255, 255);
  //stroke(103, 39, 130);
  fill(240, 255, 45); //bolt color
  triangle(200,130,mouseX, 300, 440, 460); //bigger bolt 
  triangle(440,mouseY,300, 160, 280, 320); //big bolt 
  triangle(90,120,80,150,300,200); //closer bolt 
  
  
}


// //bolts


  //stroke(40, 255, 255);
  //stroke(103, 39, 130);
//  fill(240, 255, 45); //bolt color
 // triangle(200,130,360, 300, 440, 460); //bigger bolt 
 // triangle(440,90,300, 160, 280, 320); //big bolt 
 // triangle(90,120,80,150,300,200); //closer bolt 
  
  

//kratos clr (182, 0, 0)
//bolt clr  fill(240, 255, 45);

// potential bolt   triangle(80,90,100, 120, 140, 160);


// line clash to indicate action 
// line(710, 510, 100, 80); //left brow (your left not his)
//  line(690, 510, 100, 80); //right brow (your right not his)
