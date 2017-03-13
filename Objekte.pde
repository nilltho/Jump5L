abstract class Objekt extends Bild{
  
  float vy;

  Objekt(PImage a_erscheinung, float a_x, float a_y, float a_breite, float a_hoehe, float avy){
    super(a_erscheinung,a_x,a_y,a_breite,a_hoehe);
    vy=avy;
  }
  
    
  void aendereX(float ax){
    xPosition=ax;
  }
  
  void aendereY(float ay){
    yPosition=ay;
  }
  
  void zeichne(){
      super.zeichne();
  }
  
  abstract void bewege();
  
  void setzeVY(float avy){
    vy=avy;
  }
  
  float holeVY(){
    return vy;
  }
  
  float holeX(){
    return xPosition;
  }
  
  float holeY(){
    return yPosition;
  }

}