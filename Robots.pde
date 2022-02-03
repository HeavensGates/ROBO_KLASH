class Robots {
  float xMove, yMove, Speed;
  int RoboHealth=5;
  boolean RoboDirection=true; //true guns point right, false guns point left
  boolean Alive=true;//true the robo appears, false the robo is gone
  Robots(int tempDir) {
    if (tempDir==1){
      RoboDirection=true;
      xMove=-500;
    }
    if (tempDir==2){
     RoboDirection=false; 
     xMove=3500;
    }
    
    yMove=1000;
    Speed=3;
  }
  float getX() {
    return xMove;
  }
  void Shot(){
   RoboHealth=RoboHealth-1; 
  }
  int getHP(){
   return RoboHealth; 
  }
  boolean getDir(){
    return RoboDirection; 
  }
  void move(){
   if (RoboDirection){
     xMove=xMove+Speed; 
   }
   if (!RoboDirection){
     xMove=xMove-Speed;
   }
  }
  boolean isAlive() {
    return Alive;
  }
  void Kill(){
   Alive=false; 
  }
  void RobotDraw() {
    fill(255);
    rect(200+xMove, 250+yMove, 225, 125, 25);
    fill(50);
    rect(235+xMove, 375+yMove, 155, 40);
    arc(315+xMove, 415+yMove, 75, 75, 0, radians(180));
    fill(255);
    arc(315+xMove, 505+yMove, -140, -125, 0, radians(180));
    fill(#BC0000);
    ellipseMode(CENTER);
    ellipse(315+xMove, 730+yMove, 150, 150);
    fill(255);
    ellipse(315+xMove, 730+yMove, 100, 100);
    rect(245+xMove, 505+yMove, 140, 200);
    rect(265+xMove, 680+yMove, 100, 50);
    fill(#FFE308);
    ellipse(315+xMove, 730+yMove, 75, 75);
    fill(50);
    ellipse(315+xMove, 730+yMove, 45, 45);
    //Right
    if (RoboDirection) {
      fill(#BC0000);
      ellipse(315+xMove, 550+yMove, 150, 150);
      fill(50);
      rect(255+xMove, 525+yMove, 160, 50);
      ellipse(315+xMove, 550+yMove, 90, 90);
      fill(#BC0000);
      rect(350+xMove, 510+yMove, 65, 30);
      rect(350+xMove, 560+yMove, 65, 30);
      fill(50);
      rect(400+xMove, 540+yMove, 100, 20);
      rect(500+xMove, 535+yMove, 50, 30);
      fill(255);
      rect(500+xMove, 535+yMove, 10, 30);
      fill(#FFE308);
      ellipse(455+xMove, 310+yMove, 50, 50);
      fill(#BC0000);
      rect(425+xMove, 275+yMove, 30, 75);
    }
    //Left
    if (!RoboDirection) {
      fill(#BC0000);
      ellipse(315+xMove, 550+yMove, 150, 150);
      fill(50);
      rect(215+xMove, 525+yMove, 160, 50);
      ellipse(315+xMove, 550+yMove, 90, 90);
      fill(#BC0000);
      rect(215+xMove, 510+yMove, 65, 30);
      rect(215+xMove, 560+yMove, 65, 30);
      fill(50);
      rect(115+xMove, 540+yMove, 100, 20);
      rect(65+xMove, 535+yMove, 50, 30);
      fill(255);
      rect(105+xMove, 535+yMove, 10, 30);
      fill(#FFE308);
      ellipse(170+xMove, 310+yMove, 50, 50);
      fill(#BC0000);
      rect(170+xMove, 275+yMove, 30, 75);
    }
  }
}
