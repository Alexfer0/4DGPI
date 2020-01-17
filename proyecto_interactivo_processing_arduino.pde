import processing.serial.*;

Serial myPort; 
int valor;   


void setup() {
  //size(800, 600);
  fullScreen();
  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);
  //noLoop(); evita repetición
}

void draw() {
  if (myPort.available() > 0) { 
    valor = myPort.read(); //lee el valor de arduino
    println(valor); // muestra el valor numérico en la consola
  }
  //background(220);
  translate(random(width), random(height));

  scale(random(0.1, 0.3));
  frameRate(20);

  if (valor > 100 ) { //solo cuando el valor está por encima de 100
    pintaflor();
  }
}

void pintaflor() {
  fill(#4D7931);
  rotate(frameCount / 80.0);
  float tamRadio =160;
  float incGrados=0.010;
  float incGradosSinRadio = 25.1; 
  float modifTamSinRadio = 16;
  float gruesoDePunto = 1;






  //figura 1

  fill(#B24D4D); //rojo
  rotate(frameCount / 80.0);
  dibujaFigura(tamRadio, incGrados, incGradosSinRadio, modifTamSinRadio, gruesoDePunto);
  tamRadio =130;
  incGrados=0.02;
  incGradosSinRadio = 23.144; 
  modifTamSinRadio = 24;
  gruesoDePunto = 1;

  //figura 2

  fill(#FCFFFA); //blanco
  rotate(frameCount / 60.0);
  dibujaFigura(tamRadio, incGrados, incGradosSinRadio, modifTamSinRadio, gruesoDePunto);
  tamRadio =110;
  incGrados=0.02;
  incGradosSinRadio = 23.144; 
  modifTamSinRadio = 24;
  gruesoDePunto = 1;

  //figura 2

  fill(#FF71E5); //rosa
  rotate(frameCount / 40.0);
  dibujaFigura(tamRadio, incGrados, incGradosSinRadio, modifTamSinRadio, gruesoDePunto);
  tamRadio =90;
  incGrados=0.02;
  incGradosSinRadio = 23.144; 
  modifTamSinRadio = 24;
  gruesoDePunto = 1;
  //figura 2

  fill(#FF003C); //rojo
  rotate(frameCount / 490.0);
  dibujaFigura(tamRadio, incGrados, incGradosSinRadio, modifTamSinRadio, gruesoDePunto);
  tamRadio =70;
  incGrados=0.02;
  incGradosSinRadio = 23.144; 
  modifTamSinRadio = 24;
  gruesoDePunto = 1;  //figura 2

  fill(#2EC624);
  rotate(frameCount / 480.0);
  dibujaFigura(tamRadio, incGrados, incGradosSinRadio, modifTamSinRadio, gruesoDePunto);
  tamRadio =50;
  incGrados=0.02;
  incGradosSinRadio = 23.144; 
  modifTamSinRadio = 24;
  gruesoDePunto = 1;  

  //figura 2

  fill(#599363);
  rotate(frameCount / 40.0);
  dibujaFigura(tamRadio, incGrados, incGradosSinRadio, modifTamSinRadio, gruesoDePunto);
  tamRadio =30;
  incGrados=0.02;
  incGradosSinRadio = 23.144; 
  modifTamSinRadio = 24;
  gruesoDePunto = 1;

  //figura 3

  fill(#F7C600); //amarillo
  rotate(frameCount / 40.0);
  dibujaFigura(tamRadio, incGrados, incGradosSinRadio, modifTamSinRadio, gruesoDePunto);
  tamRadio =40;
  incGrados=0.02;
  incGradosSinRadio = 23.144; 
  modifTamSinRadio = 24;
  gruesoDePunto = 1;
}
/*
* dibujaFigura - funcion que dibuja una circunferencia con forma de estrella, variando el tamaño del radio a través de la función sin()
 * tamRadio          - Tamaño base del radio de la circunferencia  
 * incGrados         - El incremento de ángulo del radio de la circunferencia
 * incGradosSinRadio - El incremento de ángulo por vuelta de bucle del seno, usado para obtener la variacion de tamaño del radio  
 * modifTamSinRadio  - El multiplicador aplicado a la funcion seno, usado para la variacion del radio. Afecta al tamaño de las ondulaciones.
 *gruesoDePunto      - El tamaño de punto que se pinta en la grafica
 *
 * Valores de ejemplo:
 * float tamRadio =100;
 * float incGrados=0.005;
 * float incGradosSinRadio = 25.1; 
 * float modifTamSinRadio = 10;
 * float gruesoDePunto = 1;
 */
void dibujaFigura(float tamRadio, float  incGrados, float  incGradosSinRadio, float  modifTamSinRadio, float  gruesoDePunto) {
  float incR = TWO_PI/incGradosSinRadio;//incremento de ángulo para el sin del tamaño de radio//
  float vR = 0.0;//Acumulador de incremento

  beginShape();// Para definir una forma
  for (float a = 0; a < TWO_PI; a += incGrados ) { //Bucle para mover el radio como la aguja de un reloj
    float r = tamRadio +(sin(vR) * modifTamSinRadio); //Radio con su variación de longitud
    float x = r * cos(a); //Coordenadas del punto al que alcanza el radio
    float y = r * sin(a);
    strokeWeight(gruesoDePunto);
    //point(x,y); //pintar vertices o puntos
    vertex(x, y); //Añade un punto a la forma
    vR = vR + incR; //Incrementamos el acumulador de ángulo del radio
  }
  endShape(CLOSE);//Para cerrar la forma
}
