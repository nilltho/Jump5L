class Bild {

  PImage erscheinung;
  float xPosition;
  float yPosition;
  float breite;
  float hoehe;
  float richtung;


  Bild(PImage a_erscheinung, float a_x, float a_y, float a_breite, float a_hoehe) {
    erscheinung=a_erscheinung;
    xPosition=a_x;
    yPosition=a_y;
    breite=a_breite;
    hoehe=a_hoehe;
    richtung=-1;
  }

  void zeichne() {
    imageMode(CENTER);
    pushMatrix();
    translate(xPosition, yPosition);
    scale(richtung,1);
    image(erscheinung, 0, 0, breite, hoehe);
    popMatrix();
  }
}