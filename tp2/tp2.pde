//Camila Herrera - COM3 - legajo:121272/6

PImage img1;
PImage img2;
PImage img3; 
float posX1, posY1, posX2, posY2, posX3, posY3; // texto en pantalla
float movimiento1 = 0.5, movimiento2 = 0.5, movimiento3 = 0.5; // Movimiento del texto 
int estado; 
PFont miFuente; 

// Textos para cada pantalla
String texto1 = "Machine Hallucinations: Coral es una de las obras más importantes de la historia del arte digital. Es el cruce entre arte, ciencia y tecnología.";
String texto2 = "Basada en la memoria visual colectiva del ambiente urbano y natural. Refik Anadol y su equipo, recolectaron 300 millones de datos centrados en temas de la naturaleza.";
String texto3 = "Usaron 1.742.772 imágenes de coral de plataformas de redes sociales disponibles públicamente y las procesaron con modelos de clasificación de aprendizaje automático.";

// Duración de cada pantalla
int duracionPantalla = 5; // 5 segundos

// Variables para el botón de reinicio
int botonX = 250;
int botonY = 400;
int botonAncho = 140;
int botonAlto = 50;
boolean mostrarBoton = false;

void setup() {
  size(640, 480);
  //  imágenes
  img1 = loadImage("imagen1.png");
  img2 = loadImage("imagen2.png");
  img3 = loadImage("imagen3.png");
  
  // 
  miFuente = createFont("Arial", 27);
  
  // variables del texto
  posX1 = 10;
  posY1 = 320;
  posX2 = 10;
  posY2 = 320;
  posX3 = 10;
  posY3 = 320;
  
  estado = 1; // Iniciar en el estado 1
}

void draw() {
  background(255); 
  
 
  // PANTALLA 1
  if (estado == 1) {
    image(img1, 0, 0, width, height);
    mostrarTexto(texto1, posX1, posY1, color(255, 165, 0)); 
    posX1 += movimiento1;
    // 
    if (frameCount / frameRate > duracionPantalla) {
      estado++;
      posX2 = 10;
      posY2 = 320;
    }
  }
  // PANTALLA 2
  else if (estado == 2) {
    image(img2, 0, 0, width, height);
    mostrarTexto(texto2, posX2, posY2, color(255, 165, 0)); // Color naranja
    posX2 += movimiento2;
    // 
    if (frameCount / frameRate > duracionPantalla * 2) {
      estado++;
      posX3 = 10;
      posY3 = 320;
    }
  }
  // PANTALLA 3
  else if (estado == 3) {
    image(img3, 0, 0, width, height);
    mostrarTexto(texto3, posX3, posY3, color(255, 165, 0)); // 
    posX3 += movimiento3;
    //  botón de reinicio al finalizar
    if (!mostrarBoton) {
      if (posX3 >= width) {
        mostrarBoton = true;
      }
    } else {
      fill(200);
      rect(botonX, botonY, botonAncho, botonAlto);
      fill(0);
      textAlign(CENTER, CENTER);
      text("Reiniciar", botonX + botonAncho/2, botonY + botonAlto/2);
    }
  }
}

//  mostrar el texto en pantalla
void mostrarTexto(String texto, float posX, float posY, color col) {
  fill(255, 165, 0);
  textFont(miFuente);
  textAlign(LEFT);
  text(texto, posX, posY, 590, 200);
}

// reiniciar la presentación 
void mousePressed() {
  if (mostrarBoton && mouseX > botonX && mouseX < botonX + botonAncho &&
      mouseY > botonY && mouseY < botonY + botonAlto) {
    estado = 1;
    posX1 = 10;
    posY1 = 320;
    posX2 = 10;
    posY2 = 320;
    posX3 = 10;
    posY3 = 320;
    mostrarBoton = false;
  }
}
