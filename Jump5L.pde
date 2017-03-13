Spieler s;
Wolke[] vieleWolken;
Staub[] staub;

void setup() {
  size(600, 600);

  s=new Spieler();
  vieleWolken=new Wolke[15];
  staub=new Staub[60];

  for (int i=0; i<5; i++) {
    vieleWolken[i]=new Wolke(s);
  }
  for (int i=5; i<10; i++) {
    vieleWolken[i]=new Bruechig(s);
  }
  for (int i=10; i<vieleWolken.length; i++) {
    vieleWolken[i]=new AufZu(s);
  }

  for (int i=0; i<staub.length; i++) {
    staub[i]=new Staub();
  }
}

void draw() {
  background(#7FDBFF);

  s.zeichne();
  s.bewege();

  for (int i=0; i<vieleWolken.length; i++) {
    vieleWolken[i].zeichne();
    vieleWolken[i].bewege();
    vieleWolken[i].beschleunigtSpieler();
  }

  for (int i=0; i<staub.length; i++) {
    staub[i].zeichne();
    staub[i].bewege();
  }
}