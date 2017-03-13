class AufZu extends Wolke {

  AufZu(Spieler as) {
    super(as);
  }

  void bewege() {
    super.bewege();
    breite++;
    if (breite>100) {
      breite=5;
    }
  }
}