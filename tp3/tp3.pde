//https://youtu.be/OZA5S5HQnwM
// COM3 121272/6

PImage imagen;
color bg,obj,cursor;
int t,y,x;
void setup(){
  size(800,400);
  bg=color(255);
  obj=color(0);
  cursor=color(48,255,3);
  y=0;
  x=0;
  noCursor();
  t=height/14;
  noStroke();
  imagen=loadImage("imagen.jpg");
}
void draw(){
  pushMatrix();
  translate(400,0); //transladar dibujo para una dirección
  background(bg);
  circulos();
  fill(cursor);
  circle(mouseX,mouseY,10); //cursor
  popMatrix();
  
  image(imagen,0,0);
}
//función que no retorna valor + for
void circulos(){
  for (x=0; x<14; x++)
     {
       for(y=0; y<14; y++)
       {
         fill(obj);
         circle(x*t+18,y*t+18,t);
       }
     }  
    
     
     for (x=0; x<14; x++)
     {
       for(y=0; y<14; y++)
       {
         //calculos
         fill(bg);
         circle(x*t+18,y*t+18,calculos());
         
       }
     }
}
//función que retorna valor, funciones matematicas 
float calculos(){
 float d=dist(mouseX,mouseY,x*t,y*t); 
 println(dist(0,0,400,400));
 float m=map(d,0,565,4,30); //transformo la escala de distancia en escala de tamaño
 return m;
}
//reiniciar variables + condicionales + evento con teclado
  
void keyPressed(){
  if( key == ' ' ){
    setup();                 //reiniciar color
  }
  else if( key == 'a' ){
    bg=color(255,226,0);     //amarillo
    obj=color(169,0,255);    //violeta 
    cursor=color(255,0,0);  //rojo
  }
  else if( key == 'b' ){
    bg=color(0,23,255);      //azul
    obj=color(0,255,0);    //verde
    cursor=color(255,0,255); //rosa
  }
  else if( key == 'c' ){
    bg=color(0);     //negro
    obj=color(0,255,219);    //verde agua
    cursor=color(255);   //blanco
  }
}
