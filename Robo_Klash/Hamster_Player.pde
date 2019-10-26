class Hamster {
  float xMove, yMove, Speed;
  boolean GunDirection=true; //true guns point right, false guns point left
  Hamster() {
    xMove=1400;
    yMove=0;
    Speed=6;
  }
  float getX() {
    return xMove;
  }
  float getY() {
    return yMove;
  }
  boolean GunDirection(){
    return GunDirection;
  }
  void moveRight() {
    xMove=xMove+Speed;
    xMove=constrain(xMove,-200,3000);
  }
  void moveLeft() {
    xMove=xMove-Speed;
    xMove=constrain(xMove,-200,3000);
    
  }
  void dropDown() {
    yMove=yMove+10;
  }
  void setY(float y) {
    yMove = y;
  }
  void setx(float x) {
    xMove = x;
  }
  void setGunDirection(boolean tempDir){
     GunDirection=tempDir; 
  }
  void ballChange() {
  pushMatrix();
  scale(0.5);
  if (ballState==true) {
    this.openBall();
    this.setY(800);
  } else if (ballState==false) {
    this.closeBall();
    if (this.getY()<900) {
      this.dropDown();
      if (this.getY()>899) {
        drop.play();
      }
    }
  } 
  popMatrix();
}

  void closeBall() {   
    ellipseMode(CENTER);
    ellipse(490+xMove, 750+yMove, 500, 500);
    triangle(xMove+490,yMove+750,xMove+600,yMove+750,xMove+550,yMove+650);
  }
  void openBall() {
    noStroke();

    //base face and outer ear
    fill(255, 221, 126);
    bezier(375+xMove, 500+yMove, 450+xMove, 530+yMove, 550+xMove, 530+yMove, 625+xMove, 500+yMove);//chin
    bezier(625+xMove, 500+yMove, 725+xMove, 450+yMove, 675+xMove, 325+yMove, 600+xMove, 250+yMove);//right cheek   
    bezier(375+xMove, 500+yMove, 275+xMove, 450+yMove, 325+xMove, 325+yMove, 400+xMove, 250+yMove);//left cheek
    bezier(400+xMove, 250+yMove, 450+xMove, 200+yMove, 550+xMove, 200+yMove, 600+xMove, 250+yMove);//head top 
    quad(375+xMove, 500+yMove, 625+xMove, 500+yMove, 600+xMove, 250+yMove, 400+xMove, 250+yMove );//inside
    bezier(350+xMove, 310+yMove, 50+xMove, 200+yMove, 370+xMove, 100+yMove, 400+xMove, 250+yMove);//outer ear left
    bezier(650+xMove, 310+yMove, 950+xMove, 200+yMove, 630+xMove, 100+yMove, 600+xMove, 250+yMove);//outer ear right

    //White area face
    fill(255);
    bezier(425+xMove, 515+yMove, 385+xMove, 505+yMove, 350+xMove, 425+yMove, 425+xMove, 385+yMove);//left cheek
    bezier(575+xMove, 515+yMove, 615+xMove, 505+yMove, 650+xMove, 425+yMove, 575+xMove, 385+yMove);//right cheek
    bezier(425+xMove, 515+yMove, 425+xMove, 525+yMove, 575+xMove, 525+yMove, 575+xMove, 515+yMove);//bottom chin
    quad(425+xMove, 385+yMove, 575+xMove, 385+yMove, 575+xMove, 515+yMove, 425+xMove, 515+yMove);//inside middle
    bezier(425+xMove, 385+yMove, 465+xMove, 360+yMove, 535+xMove, 360+yMove, 575+xMove, 385+yMove);//top white mouth
    bezier(450+xMove, 220+yMove, 475+xMove, 300+yMove, 525+xMove, 300+yMove, 550+xMove, 220+yMove);//forehead-bottom
    bezier(450+xMove, 220+yMove, 475+xMove, 210+yMove, 525+xMove, 210+yMove, 550+xMove, 220+yMove);//forehead-top
    //eyebrows
    strokeWeight(20);
    stroke(255);
    line(425+xMove, 385+yMove, 370+xMove, 340+yMove);//left eyebrow bottom
    line(460+xMove, 380+yMove, 420+xMove, 320+yMove);//left eyebrow top
    line(370+xMove, 340+yMove, 405+xMove, 340+yMove);//left eyebrow middle 1
    line(420+xMove, 320+yMove, 405+xMove, 340+yMove);//left eyebrow middle 2
    line(425+xMove, 385+yMove, 405+xMove, 340+yMove);//left fill 1
    line(460+xMove, 380+yMove, 405+xMove, 340+yMove);//left fill 2
    line(575+xMove, 385+yMove, 630+xMove, 340+yMove);//right eyebrow bottom
    line(540+xMove, 380+yMove, 580+xMove, 320+yMove);//right eyebrow top
    line(630+xMove, 340+yMove, 595+xMove, 340+yMove);//right eyebrow middle 1
    line(580+xMove, 320+yMove, 595+xMove, 340+yMove);//right eyebrow middle 2
    line(575+xMove, 385+yMove, 595+xMove, 340+yMove);//right fill 1
    line(540+xMove, 380+yMove, 595+xMove, 340+yMove);//right fill 2

    noStroke();

    //eyes
    fill(128, 90, 70);
    ellipseMode(CENTER);
    ellipse(425+xMove, 385+yMove, 50, 50);
    ellipse(575+xMove, 385+yMove, 50, 50);

    //whiskers and mouth
    noFill();
    stroke(128, 90, 70);
    strokeWeight(11);
    line(650+xMove, 385+yMove, 715+xMove, 375+yMove);//top right
    line(650+xMove, 425+yMove, 715+xMove, 435+yMove);//middle right
    line(640+xMove, 460+yMove, 685+xMove, 500+yMove);//bottom right
    line(350+xMove, 385+yMove, 285+xMove, 375+yMove);//top left
    line(350+xMove, 425+yMove, 285+xMove, 435+yMove);//middle left
    line(360+xMove, 460+yMove, 310+xMove, 500+yMove);//bottom left
    bezier(500+xMove, 460+yMove, 500+xMove, 460+yMove, 480+xMove, 490+yMove, 460+xMove, 460+yMove);//mouth left
    bezier(500+xMove, 460+yMove, 500+xMove, 460+yMove, 520+xMove, 490+yMove, 540+xMove, 460+yMove);//mouth right
    bezier(480+xMove, 475+yMove, 490+xMove, 500+yMove, 510+xMove, 500+yMove, 520+xMove, 475+yMove);//tooth
    noStroke();

    //nose and ears
    fill(255, 127, 127);
    ellipse(500+xMove, 440+yMove, 60, 30);
    bezier(470+xMove, 440+yMove, 480+xMove, 470+yMove, 520+xMove, 470+yMove, 530+xMove, 440+yMove);
    bezier(350+xMove, 310+yMove, 160+xMove, 240+yMove, 300+xMove, 100+yMove, 385+xMove, 270+yMove);//left inner ear
    bezier(650+xMove, 310+yMove, 840+xMove, 240+yMove, 700+xMove, 100+yMove, 615+xMove, 270+yMove);//right inner ear

    //ear fluffs
    fill(255, 221, 126);
    bezier(375+xMove, 310+yMove, 350+xMove, 250+yMove, 350+xMove, 240+yMove, 385+xMove, 270+yMove);//ear fluff left 1
    bezier(375+xMove, 289+yMove, 380+xMove, 270+yMove, 270+xMove, 240+yMove, 360+xMove, 310+yMove);//ear fluff left 2
    bezier(625+xMove, 310+yMove, 650+xMove, 250+yMove, 650+xMove, 240+yMove, 615+xMove, 270+yMove);//ear fluff right 1
    bezier(625+xMove, 289+yMove, 620+xMove, 270+yMove, 730+xMove, 240+yMove, 640+xMove, 310+yMove);//ear fluff right 2

    //Ball
    
    ellipseMode(CENTER);
    rect(630+xMove,850+yMove,150,150,50);
    rect(350+xMove,850+yMove,-150,150,50);
    fill(#89ACB7);
    beginShape();
      vertex(700+xMove,920+yMove);
      vertex(770+xMove,830+yMove);
      vertex(800+xMove,750+yMove);
      vertex(850+xMove,750+yMove);
      vertex(880+xMove,790+yMove);
      vertex(860+xMove,900+yMove);
      vertex(890+xMove,1000+yMove);
      vertex(850+xMove,1100+yMove);
      vertex(800+xMove,1100+yMove);
      vertex(780+xMove,1050+yMove);
      vertex(800+xMove,1000+yMove);
      vertex(790+xMove,970+yMove);
      vertex(700+xMove,950+yMove);
    endShape();
    beginShape();
      vertex(300+xMove,920+yMove);
      vertex(230+xMove,830+yMove);
      vertex(200+xMove,750+yMove);
      vertex(150+xMove,750+yMove);
      vertex(120+xMove,790+yMove);
      vertex(140+xMove,900+yMove);
      vertex(110+xMove,1000+yMove);
      vertex(150+xMove,1100+yMove);
      vertex(200+xMove,1100+yMove);
      vertex(220+xMove,1050+yMove);
      vertex(200+xMove,1000+yMove);
      vertex(210+xMove,970+yMove);
      vertex(300+xMove,950+yMove);
    endShape();
    ellipse(490+xMove, 750+yMove, 500, 500);    
    fill(#FFDC15);
    beginShape();
      vertex(600+xMove,695+yMove);
      vertex(570+xMove,660+yMove);
      vertex(600+xMove,640+yMove);
      vertex(620+xMove,660+yMove);
    endShape();
    beginShape();
      vertex(400+xMove,695+yMove);
      vertex(370+xMove,660+yMove);
      vertex(390+xMove,640+yMove);
      vertex(430+xMove,660+yMove);
    endShape();  
    rect(370+xMove,730+yMove,10,70);
    rect(620+xMove,730+yMove,10,70);
    fill(100);
    ellipse(500+xMove,750+yMove,225,225);
    fill(#7CCBE3);
    ellipse(500+xMove,750+yMove,175,175);
    fill(175);
    beginShape();
      vertex(470+xMove,650+yMove);
      vertex(530+xMove,650+yMove);
      vertex(550+xMove,700+yMove);
      vertex(450+xMove,700+yMove);
    endShape(); 
    rect(480+xMove,825+yMove,40,30);
    beginShape();
      vertex(520+xMove,825+yMove);
      vertex(550+xMove,775+yMove);
      vertex(590+xMove,750+yMove);
      vertex(600+xMove,800+yMove);
      vertex(540+xMove,850+yMove);
    endShape();
    beginShape();
      vertex(480+xMove,825+yMove);
      vertex(450+xMove,775+yMove);
      vertex(410+xMove,750+yMove);
      vertex(400+xMove,800+yMove);
      vertex(460+xMove,850+yMove);
    endShape();
    fill(#F09D6D);
    beginShape();
    vertex(520+xMove,850+yMove);
    vertex(580+xMove,850+yMove);
    vertex(600+xMove,900+yMove);
    vertex(590+xMove,1020+yMove);
    vertex(550+xMove,1035+yMove);
    vertex(510+xMove,900+yMove);
    endShape();
    beginShape();
    vertex(480+xMove,850+yMove);
    vertex(420+xMove,850+yMove);
    vertex(400+xMove,900+yMove);
    vertex(410+xMove,1020+yMove);
    vertex(450+xMove,1035+yMove);
    vertex(490+xMove,900+yMove);
    endShape();
    fill(150);
    ellipse(420+xMove,900+yMove,15,15);
    ellipse(470+xMove,905+yMove,15,15);
    ellipse(580+xMove,900+yMove,15,15);
    ellipse(530+xMove,905+yMove,15,15);
    beginShape();
      
    endShape();
    fill(50);
    ellipse(500+xMove,750+yMove,100,100);
    fill(#FEFF00);
    ellipse(500+xMove,750+yMove,35,35);
    fill(75);
    ellipse(500+xMove,750+yMove,25,25);
    
    if (GunDirection){
    //Gun right 1
    fill(75);
    rect(600+xMove,600+yMove,175,140,20);
    rect(775+xMove,620+yMove,125,30);
    rect(775+xMove,690+yMove,125,30);
    rect(900+xMove,610+yMove,50,50);
    rect(900+xMove,680+yMove,50,50);
    //Gun right 2
    fill(75);
    rect(200+xMove,600+yMove,175,140,20);
    rect(375+xMove,620+yMove,125,30);
    rect(375+xMove,690+yMove,125,30);
    rect(500+xMove,610+yMove,50,50);
    rect(500+xMove,680+yMove,50,50);
    }
    if (!GunDirection){
    //Gun left 1
    fill(75);
    rect(600+xMove,600+yMove,175,140,20);
    rect(475+xMove,620+yMove,125,30);
    rect(475+xMove,690+yMove,125,30);
    rect(425+xMove,610+yMove,50,50);
    rect(425+xMove,680+yMove,50,50);
    //Gun left 2
    fill(75);
    rect(200+xMove,600+yMove,175,140,20);
    rect(75+xMove,620+yMove,125,30);
    rect(75+xMove,690+yMove,125,30);
    rect(25+xMove,610+yMove,50,50);
    rect(25+xMove,680+yMove,50,50);
    
    }
  }//end of Open Ball
}
