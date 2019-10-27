class Bullets {
  float Pos;
  int Speed=25;
  boolean Hit=false; //true bullet hit, false not hit
  boolean Direction;//true bullet goes right, false bullet goes left
  Bullets(float tempPos, boolean tempDir) {
    Pos=tempPos;
    Direction=tempDir;
  }
  void shoot() {
    if (Direction){
    Pos=Pos+Speed;
    }
    if (!Direction){
    Pos=Pos-Speed; 
    }
  }
  boolean didHit() {
    return Hit;
  }
  void drawBullet(){
   fill(0);
   noStroke();
   if (!Direction){
   rect(Pos,1450,45,30);
   }
   if (Direction){
   rect(Pos+900,1450,45,30); 
   }
  }
  void Hit(){
   Hit=true; 
  }
  float getPos(){
    return Pos; 
  }
  
}
