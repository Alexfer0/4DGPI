void setup() {
  background(255);
  size(800, 600);

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
}
