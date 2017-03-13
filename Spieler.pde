class Spieler extends Objekt {


  Spieler() {
    super(loadImage("doodle.png"), 300, 400, 40, 40, -10);
  }

  void bewege() {
    if (keyCode==LEFT && keyPressed) {
      xPosition=xPosition-3;
      richtung=1;
    }
    if (keyCode==RIGHT && keyPressed) {
      xPosition=xPosition+3;
      richtung=-1;
    }

    yPosition=yPosition+vy;        //<--------- Y-Bewegung <-> Änderung der Position

    vy=vy+0.15;    //<--------Beschleunigung <-> Änderung der Geschwindigkeit

    if (yPosition>600) {        //<--------Am Boden Abprallen
      vy=-10;
    }
  }
}