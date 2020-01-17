//libreria.pdf
import processing.pdf.*;

PFont mifuente;

float rx, rx1, rx2, rx3, rx4;
float ry, ry1, ry2, ry3, ry4;

boolean record;


void setup() {
  background(255);
  frameRate(10);
  size(800, 800);
  mifuente=loadFont("BarlowCondensed-Bold-48.vlw");
}

void draw() {

  if (record==true) {
    beginRecord(PDF, "retratos-##.pdf");
  }


  /*los valores corresponden a height y width
   se podría limitar mediante float rx=random(width-150) por ejemplo*/
  float rx=random(440, 520);
  float rx1=random(850, 930);
  float rx2=random(315, 420);
  float rx3=random(50, 90);
  float rx4=random(500, 700);

  /*//tarjetas
   //columna 1
   rect ( 60, 20, 150, 200);
   rect ( 60, 240, 150, 200);
   rect ( 60, 460, 150, 200);
   //columna 2
   rect ( 230, 20, 150, 200);
   rect ( 230, 240, 150, 200);
   rect ( 230, 460, 150, 200);
   //columna 3
   rect ( 400, 20, 150, 200);
   rect ( 400, 240, 150, 200);
   rect ( 400, 460, 150, 200);
   //columna 4
   rect ( 570, 20, 150, 200);
   */

  background (#D8CDD8);

  laura(500, rx);
  alexis(rx2, rx1);
  sara(600, rx1);
  sergio(400, rx3);
  julio (rx, rx3);
  isabel (122, rx2);
  alba (rx3, 50);
  barbara (-100, rx);
  moha (1100, rx4);
  jorge (rx1, rx2);
}


void laura(float x, float y) {

  pushMatrix();
  scale(0.4);
  translate (-560, -470);
  translate (x, y);
  //cara
  strokeWeight(4);
  line(480, 200, 520, 220);
  line(500, 250, 480, 200);
  line(400, 200, 500, 250);
  line(450, 250, 400, 200);
  line(450, 250, 280, 200);
  line(280, 200, 280, 400);
  line(520, 400, 520, 220);
  noFill();
  arc (400, 400, 240, 150, radians(0), radians(180));

  //orejaizq
  line(280, 270, 260, 240);
  line(260, 240, 250, 240);
  line(250, 240, 250, 320);
  line(250, 320, 280, 350);

  //orejader
  line(520, 280, 540, 250);
  line(540, 250, 550, 250);
  line(550, 250, 550, 330);
  line(550, 330, 520, 360);

  //pelo superior
  line(550, 250, 540, 180);
  line(260, 180, 250, 240);
  noFill();
  arc (400, 180, 280, 140, radians(180), radians(360));


  //pelo parte baja izquierda
  line(250, 320, 230, 380);
  line(230, 380, 255, 370);
  line(255, 370, 230, 430);
  line(230, 430, 260, 410);
  line(260, 410, 245, 450);
  line(245, 450, 290, 430);

  //pelo parte baja derecha
  line(550, 330, 570, 380);
  line(570, 380, 545, 370);
  line(545, 370, 570, 430);
  line(570, 430, 540, 410);
  line(540, 410, 555, 450);
  line(555, 450, 510, 430);

  // pestañas ojo izquierdo
  line(350, 300, 330, 280);
  line(350, 300, 320, 300);
  line(350, 300, 330, 320);
  //pestañas ojo derecho
  line(455, 300, 485, 300);
  line(455, 300, 475, 280);
  line(455, 300, 475, 320);

  //ojos
  fill(0);
  ellipse(350, 300, 30, 30);
  ellipse(455, 300, 30, 30);

  //brillo ojos
  fill(#FFFFFF);
  ellipse(355, 297, 15, 15);
  ellipse(460, 297, 15, 15);

  //boca
  stroke(#000000);
  line(350, 385, 450, 385);

  //nariz
  ellipse(400, 345, 20, 3);
  popMatrix();
}

void alexis(float x, float y) {

  pushMatrix();
  scale(0.45);
  translate (x, y);
  translate (100, -870);
  fill(255);
  rect(140, 80, 230, 300);
  fill(209, 243, 197);
  arc(190, 80, 170, 100, radians(0), radians(180));

  fill(255);
  arc(215, 200, 37, 20, radians(0), radians(180));
  arc(300, 200, 37, 20, radians(0), radians(180));



  arc(250, 300, 100, 80, radians(0), radians(180));

  arc(237, 250, 13, 13, radians(50), radians(280));
  arc(260, 250, 13, 13, radians(280), radians(480));

  fill(209, 243, 197);
  triangle(140, 220, 160, 280, 140, 280);
  triangle(370, 220, 350, 280, 370, 280);

  fill(255);
  arc(140, 237, 36, 36, radians(90), radians(270));
  arc(370, 237, 36, 36, radians(270), radians(360+90));

  triangle(250, 350, 230, 360, 270, 360);
  popMatrix();
}

void sara(float x, float y) {

  pushMatrix();
  scale(0.55);
  translate (x, y);
  translate (-465, -180);
  fill(154, 115, 25);
  ellipse(450, 150, 100, 100);

  fill(154, 115, 25);
  ellipse(400, 250, 200, 200);

  fill(230, 189, 94);
  ellipse(400, 300, 175, 225);


  noFill();
  strokeWeight(1);
  stroke(#7D5A0A);
  arc(360, 270, 30, 30, radians(180), radians(360));

  noFill();
  strokeWeight(1);
  stroke(#7D5A0A);
  arc(440, 270, 30, 30, radians(180), radians(360));

  //ojos
  fill(#8C6E28);
  //Esto es el iris, izquierdo primero, derecho segundo
  ellipse(360, 270, 20, 20);
  ellipse(440, 270, 20, 20);
  //Esto es la pupila, izquierda primera, derecha segunda
  fill(#000000);  
  ellipse(360, 270, 10, 10);
  ellipse(440, 270, 10, 10);

  /*la nariz, primera linia la 
   nariz entera, segunda y tercera linia los agujeros*/
  fill(230, 189, 94);
  arc(400, 320, 30, 30, TWO_PI-PI, TWO_PI);

  fill(#000000);
  arc(393, 320, 5, 5, radians(180), radians(360));
  arc(408, 320, 5, 5, radians(180), radians(360));

  //Esta sección es la boca
  fill(#DD77A2);
  arc(400, 360, 80, 40, PI-PI, PI);
  popMatrix();
}

void sergio(float x, float y) {

  pushMatrix();
  scale(0.45);
  translate (x, y);
  translate (375, -70);
  /*cabeza*/
  fill(255);
  rect(180, 120, 200, 250);


  /*pelo*/
  fill(0);
  triangle(220, 120, 200, 50, 110, 150);
  triangle(350, 120, 200, 50, 220, 120);
  triangle(350, 120, 300, 50, 200, 50);
  triangle(400, 200, 400, 70, 300, 50); 

  strokeWeight(3);
  stroke(0);
  /*oreja*/
  fill(255);
  rect(365, 180, 30, 60);

  /*ojos*/
  noFill();
  arc(220, 200, 40, 40, radians(180), radians(360));
  arc(320, 200, 40, 40, radians(180), radians(360));



  /*barba*/
  fill(0);
  rect(180, 260, 170, 140);
  triangle(340, 260, 350, 400, 365, 240);
  popMatrix();
}

void julio(float x, float y) {

  pushMatrix();
  scale(0.8);
  translate (x, y);
  translate (-80, 180);
  /*monyo*/
  fill(75, 55, 29);
  rect(120, 70, 120, 120);
  /*orelles*/
  fill(214, 187, 151);
  ellipse(115, 175, 20, 40);
  ellipse(245, 175, 20, 40);
  /*cap*/
  fill(214, 187, 151);
  ellipse(180, 180, 120, 170);
  /*nas*/
  arc(180, 190, 15, 10, radians(180), radians(360));
  /*boca*/
  arc(180, 220, 40, 15, radians(0), radians(180));
  /*celles*/
  arc(155, 140, 25, 5, radians(180), radians(360));
  arc(205, 140, 25, 5, radians(180), radians(360));
  /*ulls*/
  fill(255);
  arc(155, 157, 27, 13, radians(0), radians(360));
  arc(205, 157, 27, 13, radians(0), radians(360));
  /*iris*/
  fill(0);
  ellipse(155, 157, 10, 10);
  ellipse(205, 157, 10, 10);
  popMatrix();
}
void isabel (float x, float y) {

  pushMatrix();
  scale(0.5);
  translate (x, y);
  translate (220, 50);
  /*cabells*/
  fill(72, 57, 15);
  noStroke();
  triangle(120, 400, 420, 400, 270, 150);
  ellipse(273, 138, 30, 30);
  /*cara*/
  noStroke();
  fill(255, 241, 201);
  ellipse(272, 274, 200, 270);
  /*ulleres*/
  noFill();
  strokeWeight(3);
  stroke(0);
  arc(273, 257, 15, 20, radians(180), radians(360));
  noFill();
  strokeWeight(7);
  stroke(5, 249, 255);
  rect(203, 221, 60, 60);
  rect(283, 222, 60, 60);
  /*ulls*/
  noStroke();
  fill(0);
  ellipse(231, 251, 8, 8);
  ellipse(308, 251, 8, 8);
  /*nas*/
  noFill();
  strokeWeight(3);
  stroke(0);
  arc(273, 290, 15, 20, radians(0), radians(180));
  /*boca*/
  stroke(0);
  strokeWeight(3);
  arc(270, 360, 25, 32, radians(0), radians(180));
  popMatrix();
}

void alba (float x, float y) {

  pushMatrix();
  scale(1.5);
  translate (x, y);
  translate (-10, 130);
  scale(0.5);
  strokeWeight(1);
  /*monyo*/
  fill(120, 90, 60);
  rect(0, 0, 130, 160);
  /*cap*/
  fill(#FADEC0);
  ellipse(65, 100, 100, 150);
  /*ulls*/
  strokeWeight(2);
  arc(45, 90, 25, 20, radians(200), radians(340));
  arc(85, 90, 25, 20, radians(200), radians(340));
  /*nas*/
  strokeWeight(2);
  arc(65, 120, 20, 20, radians(45), radians(135));
  /*boca*/
  arc(65, 130, 55, 50, radians(45), radians(135));
  popMatrix();
}

void barbara (float x, float y) {

  pushMatrix();
  scale(0.9);
  translate (x, y);
  translate (55, -50);

  //cap
  fill(#FFF0B2);
  ellipse(200, 170, 120, 160);

  //ulleres
  strokeWeight(2);
  ellipse(180, 160, 30, 30);
  ellipse(220, 160, 30, 30);
  arc(200, 160, 10, 10, radians(180), radians(360));


  //ulls
  strokeWeight(8);
  point(180, 160);
  point(220, 160);

  //celles
  strokeWeight(1);
  arc(180, 140, 20, 10, radians(180), radians(360));
  arc(220, 140, 20, 10, radians(180), radians(360));

  //nas
  strokeWeight(1);
  arc(200, 190, 10, 10, radians(180), radians(360));

  //boca
  strokeWeight(1);
  arc(200, 210, 40, 20, radians(0), radians(180));

  //moño
  noFill();
  popMatrix();
}

void moha (float x, float y) {
  pushMatrix();
  scale(0.55);
  translate (x, y);
  translate (-430, 230);
  //careto

  stroke(#030303);
  noFill();
  //
  strokeWeight(6);
  circle(200, 200, 200);

  stroke(#030303);
  noFill();


  //ojo izquierdo
  strokeWeight(2);

  circle(170, 170, 25);


  fill(#030303);
  circle(175, 165, 10);
  noFill();
  //ojo derecho

  circle(230, 170, 25);
  fill(#030303);

  circle(235, 165, 10);
  noFill();

  //boca
  fill(#030303);
  ellipse(200, 240, 50, 25);

  strokeWeight(4);
  noFill();
  ellipse(313, 180, 30, 60);

  strokeWeight(8);


  line(105, 170, 185, 140 );
  line(185, 140, 220, 140 );
  line(220, 140, 290, 160 );
  line(290, 160, 260, 95 );
  line(260, 95, 45, 79 );
  line(45, 79, 90, 100 );
  line(90, 100, 45, 100 );
  line(45, 100, 90, 120 );
  line(90, 120, 45, 130 );
  line(45, 130, 105, 170 );

  popMatrix();
}

void jorge(float x, float y) {
  pushMatrix();
  scale(0.8);
  translate(x, y);
  translate(-300, -400);


  strokeWeight(3);
  fill(125, 55, 29);
  rect(140, 70, 120, 120);

  /*cap*/
  fill(#FFD8D8);
  ellipse(200, 170, 120, 160);


  /*ulls*/
  strokeWeight(5);

  point(180, 160);
  point(220, 160);

  /*celles*/
  strokeWeight(3);
  arc(180, 140, 20, 10, radians(180), radians(360));
  arc(220, 140, 20, 10, radians(180), radians(360));

  /*nas*/
  strokeWeight(3);
  arc(200, 190, 10, 10, radians(180), radians(360));

  /*boca*/
  strokeWeight(3);
  arc(200, 210, 40, 20, radians(0), radians(180));
  popMatrix();

  //TEXTO
  textSize(70);
  fill(#030202);
  text("C", 595, 305);
  text("U", 596, 370);
  text("R", 598, 435);
  text("S", 601, 500);
  textSize(67);
  text("O", 593, 565);

  //AÑO 
  textSize(40);
  text("1", 670, 297);
  text("9", 671, 362);

  text("/", 673, 422);

  text("2", 670, 490);

  text("0", 668, 555);

  if (record==true) {
    endRecord();
    record=false;
  }
}
void mousePressed() {
  record=true;
}
