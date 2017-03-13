class Bruechig extends Wolke {

  Bruechig(Spieler as) {
    super(as);
  }

  void beschleunigtSpieler() {
    if (beruehrtSpieler() && s.holeVY()>0 ) {
      s.setzeVY(-8);
      respawn();
    }
  }
}