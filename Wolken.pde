class Wolke extends Objekt {
  Spieler s;

  Wolke(Spieler as) {
    super(loadImage("wolke.png"), random(100, 500), random(400), 100, 30, random(1, 3));
    s=as;
  }

  void aendereBreite(float ab) {
    breite=ab;
  }

  void bewege() {
    yPosition=yPosition+vy;
    if(yPosition>height){
      respawn();
    }
  }

  void respawn() {
    xPosition=random(0,600);
    yPosition=0;
    vy=random(1,3);
    
  }

  boolean beruehrtSpieler() {
    return   s.holeX()>xPosition-0.5*breite &&
      s.holeX()<xPosition+0.5*breite &&
      s.holeY()>yPosition && 
      s.holeY()<yPosition+hoehe ;
  }

  void beschleunigtSpieler() {
    if (beruehrtSpieler() && s.holeVY()>0 ) {
        s.setzeVY(-8);
    }
  }
}