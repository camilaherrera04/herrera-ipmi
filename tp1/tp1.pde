//Camila Herrera COM3 121272/6

PImage img;

void setup() {  
  size(800, 400);
  img = loadImage("minion.jpg") ;
 }  

void draw () {  
  
  background(173, 216, 230);
  image(img,465,0) ;
 
 //SILUETA 

noFill();
stroke(4,0,0);
rect(250,250,95,5,90);
noFill();
stroke(4,0,0);
rect(250,250,35,5,95);

//ROPA
fill(0, 105, 240);
stroke(4,0,0);
ellipse(300,250,150,150);

//PIERNAS
fill(0,105,250);
noStroke();
rect(259,250,30,100);
fill(0,105,250);
noStroke();
rect(304,250,30,100);

//ZAPATOS
fill(2,0,0);
noStroke();
rect(258,350,36,19);
fill(2,0,0);
noStroke();
rect(303,350,36,19);

fill(4,0,0);
noStroke();
ellipse(259,360,18.5,19);
fill(4,0,0);
noStroke();
ellipse(341.5,360,18.5,19);

//SILUETA CABEZA
noFill();
stroke(2,0,0);
ellipse(300,149.5,151.5,150);

//BRAZOS
noFill();
stroke(2,0,0);
rect(300,124,70,16);
noFill();
stroke(2,0,0);
rect(300,124,70,16);

//CUERPO
fill(232,250,0);
stroke(4,0,0);
rect(224,140,151,105);

//BRAZOS
fill(233,250,0);
noStroke();
rect(377,225,70,15);
fill(233,250,0);
noStroke();
rect(154,225,70,15);

//MANOS
fill(4,0,0);
noStroke();
ellipse(439,232,25,25);
fill(4,0,0);
noStroke();
ellipse(160,232,25,25);

fill(4,0,0);
noStroke();
ellipse(153,222.75,20,7.5);
fill(4,0,0);
noStroke();
ellipse(151,232,20,7.5);
fill(4,0,0);
noStroke();
ellipse(153,241,20,7.5);

fill(4,0,0);
noStroke();
ellipse(445,222.75,20,7.5);
fill(4,0,0);
noStroke();
ellipse(449.5,232,20,7.5);
fill(4,0,0);
noStroke();
ellipse(445,241,20,7.5);

//CABEZA 
fill(230,250,0);
noStroke();
ellipse(300,150,150,149);

//BOCA
fill(3,0,0);
noStroke();
ellipse(297,155,92,93);

fill(232,250,0);
noStroke();
rect(248,100,100,74);

fill(255,255,255);
stroke(3,0,0);
rect(303.5,175,10,10);
fill(255,255,255);
stroke(3,0,0);
rect(283,175,10,10);
fill(255,255,255);
stroke(3,0,0);
rect(293,189,10,10);

//ANTEOJOS
fill(4,0,0);
noStroke();
rect(225,135,150,10);

fill(3,0,0);
noStroke();
ellipse(273.5,141,57,57);
fill(3,0,0);
noStroke();
ellipse(323.5,141,57,57);

fill(255,255,255);
noStroke();
ellipse(273.5,140,43.5,43.5);
fill(255,255,255);
noStroke();
ellipse(323.5,140,43.5,43.5);

fill(111,68,0);
noStroke();
ellipse(273.5,140,25,25);
fill(111,68,0);
noStroke();
ellipse(323.5,140,25,25);

fill(3,0,0);
noStroke();
ellipse(273.5,140,13,13);
fill(3,0,0);
noStroke();
ellipse(323.5,140,13,13);

fill(255,255,255);
noStroke();
ellipse(270.75,137.75,5,5);
fill(255,255,255);
noStroke();
ellipse(320.75,137.75,5,5);

fill(255,255,255,200);
noStroke();
ellipse(270.5,152.75,10,10);
fill(255,255,255,200);
noStroke();
ellipse(326.5,152.75,10,10);

//ROPA // BOTONES
fill(0,100,250);
stroke(5,0,0);
rect(262.5,210,70,70);
noFill();
stroke(4,0,0);
rect(275,225,50,30);

fill(0,100,250);
stroke(5,0,0);
rect(223,210,50,10);
fill(0,100,250);
stroke(3,0,0);
rect(324,210,50,10);

fill(3,0,0);
noStroke();
ellipse(267.5,215,5,5);
fill(3,0,0);
noStroke();
ellipse(332.5,215,5,5);

fill(0,100,250);
noStroke();
rect(260,260,0,80,30);
fill(0,100,250);
noStroke();
rect(260,248,8,10);
fill(0,100,250);
noStroke();
rect(335,269,11,10);
}  
