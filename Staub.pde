class Staub extends Objekt {


  Staub() {
    super(loadImage("stein.png"), random(0, 600), random(0, 600), 3, 3, random(6, 10));
  }

  void bewege() {
    yPosition=yPosition+vy;
    if (yPosition>height) {
      respawn();
    }
  }
  void respawn() {
    xPosition=random(0, 600);
    yPosition=0;
    vy=random(1, 3);
  }
}