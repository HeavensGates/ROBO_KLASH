/*  Robo Klash
 by Ryan Stander 477316
 */
//Sound Files
import processing.sound.*;
SoundFile walk, shoot, drop, open ;
SoundFile RoboDamage1, RoboDamage2, RoboDamage3, RoboDamage4, RoboDamage5, RoboDamage6, 
  RoboDamage7, RoboDamage8, RoboDamage9, RoboDamage10;
boolean ballState, moveRight, moveLeft, Shooting, hit;
String round, kills;//used to display game stats
int killCount=0;//counts each kill
float sx=850;
float sy=600;
float sw=200;
float sh=100;
ArrayList<Bullets> bullets;//the array used to spawn bullets when shooting
ArrayList<Robots> robos;//the array used to create robots periodically
Hamster ham=new Hamster();//the object used to create the player character
Environment environ=new Environment();//creates the foreground and background
int m=0;//used to store the current duration that the program has been running
int roundCount=1;//counts how many rounds youve survived
PFont font;//used to store my custom font
//scenes
boolean mainMenu=true;
boolean game=false;
boolean gameOver=false;

void setup() {
  size(1920, 1000, P2D); 
  ballState=true;//if true=walking if false=rolling
  smooth(8);//makes edges less blocky
  frameRate(120);//increased frame rate to make movement more smooth
  //initialising all sound files
  walk=new SoundFile(this, "HamsterWalkLoop.mp3");
  shoot=new SoundFile(this, "BulletFired.mp3");
  drop=new SoundFile(this, "HamsterDrop.mp3");
  open=new SoundFile(this, "HamsterPopOut.mp3");
  RoboDamage1=new SoundFile(this, "Robo_Damage1.mp3");
  RoboDamage2=new SoundFile(this, "Robo_Damage2.mp3");
  RoboDamage3=new SoundFile(this, "Robo_Damage3.mp3");
  RoboDamage4=new SoundFile(this, "Robo_Damage4.mp3");
  RoboDamage5=new SoundFile(this, "Robo_Damage5.mp3");
  RoboDamage6=new SoundFile(this, "Robo_Damage6.mp3");
  RoboDamage7=new SoundFile(this, "Robo_Damage7.mp3");
  RoboDamage8=new SoundFile(this, "Robo_Damage8.mp3");
  RoboDamage9=new SoundFile(this, "Robo_Damage9.mp3");
  RoboDamage10=new SoundFile(this, "Robo_Damage10.mp3");
  //initialising arrays
  bullets=new ArrayList<Bullets>();
  robos=new ArrayList<Robots>();
} //end of setup

void draw() {
  //main menu scene
  if (mainMenu) {
    background(110);
    font=loadFont("Tahoma-Bold-48.vlw");
    textFont(font);
    textSize(100);
    fill(0);
    text("ROBO KLASH", 600, 200);
    textSize(25);
    fill(210);
    text("Welcome to ROBO KLASH, if you cannot fit the entire game onto your screen consider lowering your screen scale", 800, 300, 300, 1000);
    fill(#8B8B8B);
    rect(sx, sy, sw, sh);
    fill(255);
    textSize(50);
    text("Controls:", 375, 300);
    textSize(25);
    text("A/D to move left and right", 375, 325);
    text("Mouse button to fire a bullet", 375, 350);
    text("1/2 to swap between ball modes", 375, 375);
    text("If your mouse is either side of the hamster the gun will point in that direction", 375, 385, 420, 100);
    textSize(50);
    text("The Game:", 1150, 300);
    textSize(25);
    text("You are a hamster piloting a meka and need to defend yourself from robots that are trying to kill you! To kill an enemy you must shoot them 5 times. DO NOT LET THEM TOUCH YOU!!!", 1150, 310, 300, 1000);    
    //collision detection
    hit = pointRect(mouseX, mouseY, sx, sy, sw, sh);
    if (hit) {
      fill(255, 150, 0);
    } else {
      fill(0, 150, 255);
    }
    rect(sx, sy, sw, sh);
    fill(0);
    textSize(40);
    text("PLAY", 900, 665);
  }
  //game scene
  if (game) {
    background(#00B9FA);
    environ.backGround();
    //spawn hamster
    ham.ballChange();
    //calculate which directiont he gun needs to be
    if (mouseX<ham.getX()/2+250) {
      ham.setGunDirection(false);
    }
    if (mouseX>ham.getX()/2+250) {
      ham.setGunDirection(true);
      //calculate the direction that the hamster moves
    }
    if (moveRight) {
      ham.moveRight();
    }
    if (moveLeft) {
      ham.moveLeft();
    }//hamster end
    //calculates the current round, the longer you survive the harder it gets
    //begin creating robots
    switch(roundCount) {
    case 1:
      if (millis()>5000+m) {
        Robots CreateNew = new Robots(int(random(1, 3)));
        robos.add(CreateNew);
        m=millis();
        if (m>30000) {
          roundCount=2;
        }
      }
      break;
    case 2:
      if (millis()>4000+m) {
        Robots CreateNew = new Robots(int(random(1, 3)));
        robos.add(CreateNew);
        m=millis();
        if (m>60000) {
          roundCount=3;
        }
      }
      break;
    case 3:
      if (millis()>3000+m) {
        Robots CreateNew = new Robots(int(random(1, 3)));
        robos.add(CreateNew);
        m=millis();
        if (m>90000) {
          roundCount=4;
        }
      }
      break;
    case 4:
      if (millis()>2500+m) {
        Robots CreateNew = new Robots(int(random(1, 3)));
        robos.add(CreateNew);
        m=millis();
        if (m>120000) {
          roundCount=5;
        }
      }
      break;
    case 5:
      if (millis()>2000+m) {
        Robots CreateNew = new Robots(int(random(1, 3)));
        robos.add(CreateNew);
        m=millis();
        if (m>150000) {
          roundCount=6;
        }
      }
      break;
    case 6:
      if (millis()>1500+m) {
        Robots CreateNew = new Robots(int(random(1, 3)));
        robos.add(CreateNew);
        m=millis();
        if (m>180000) {
          roundCount=7;
        }
      }
      break;
    case 7:
      if (millis()>1000+m) {
        Robots CreateNew = new Robots(int(random(1, 3)));
        robos.add(CreateNew);
        m=millis();
        if (m>210000) {
          roundCount=8;
        }
      }
      break;
    case 8:
      if (millis()>900+m) {
        Robots CreateNew = new Robots(int(random(1, 3)));
        robos.add(CreateNew);
        m=millis();
        if (m>240000) {
          roundCount=9;
        }
      }
      break;
    case 9:
      if (millis()>800+m) {
        Robots CreateNew = new Robots(int(random(1, 3)));
        robos.add(CreateNew);
        m=millis();
        if (m>270000) {
          roundCount=10;
        }
      }
      break;
    case 10:
      if (millis()>500+m) {
        Robots CreateNew = new Robots(int(random(1, 3)));
        robos.add(CreateNew);
        m=millis();
      }
      break;
    }
    //moves the current existing robots and calculate if they touch the hamster for game over
    for (Robots robo : robos) {
      pushMatrix();
      scale(0.5);
      robo.RobotDraw();
      robo.move();
      popMatrix();
      if ((ham.getX()<robo.getX()+400)&&(robo.getDir())) {
        gameOver=true;
        game=false;
        
      }
      if ((robo.getX()<ham.getX()+800)&&(!robo.getDir())) {
        gameOver=true;
        game=false;
        
      }
    }
    //bullets
    ArrayList<Bullets> Collided = new ArrayList<Bullets>();
    ArrayList<Robots> Shot = new ArrayList<Robots>();
    for (Bullets testBullets : bullets) {
      for (Robots robo : robos) {        
        if ((testBullets.getPos()<robo.getX()+400 ) && (robo.getDir())) {
          testBullets.Hit();
          robo.Shot();
          if (robo.getHP()==0) {
            robo.Kill();
            killCount++;
          }
          //plays different audio whenever a robot is struck
          switch(int(random(10))) {
          case 0:
            RoboDamage1.play();
            break;
          case 1:
            RoboDamage2.play();
            break;
          case 2:    
            RoboDamage3.play();       
            break;
          case 3:       
            RoboDamage4.play();   
            break;
          case 4:    
            RoboDamage5.play();    
            break;
          case 5:     
            RoboDamage6.play();     
            break;
          case 6:      
            RoboDamage7.play();       
            break;
          case 7:       
            RoboDamage8.play();         
            break;
          case 8:
            RoboDamage9.play();
            break;
          case 9:
            RoboDamage10.play();
            break;
          }
        }
        if ((testBullets.getPos()>robo.getX()-700 ) && (!robo.getDir())) {
          testBullets.Hit();
          robo.Shot();
          if (robo.getHP()==0) {
            robo.Kill();
            killCount++;
          }
          switch(int(random(10))) {
          case 0:
            RoboDamage1.play();
            break;
          case 1:
            RoboDamage2.play();
            break;
          case 2:
            RoboDamage3.play();
            break;
          case 3:
            RoboDamage4.play();
            break;
          case 4:
            RoboDamage5.play();
            break;
          case 5:
            RoboDamage6.play();
            break;
          case 6:
            RoboDamage7.play();
            break;
          case 7:
            RoboDamage8.play();
            break;
          case 8:
            RoboDamage9.play();
            break;
          case 9:
            RoboDamage10.play();
            break;
          }
        }
        if (!robo.isAlive()) {
          Shot.add(robo);
        }
      }
      if ((testBullets.getPos()<0)&& (!testBullets.Direction)) {
        testBullets.Hit();
      }
      if ((testBullets.getPos()>1920+700)&& (testBullets.Direction)) {
        testBullets.Hit();
      }
      if (testBullets.didHit()) {
        Collided.add(testBullets);
      } else {
        pushMatrix();
        scale(0.5);
        testBullets.shoot();
        testBullets.drawBullet();
        popMatrix();
      }
    }
    bullets.removeAll(Collided);
    robos.removeAll(Shot);
    round="Round: "+str(roundCount);
    fill(0);
    textSize(40);
    text(round, 870, 390);
    kills="Kills: "+str(killCount);
    text(kills, 600, 390);
  }
  //gameOver
  if (gameOver) {
    background(#760002);
    hit = pointRect(mouseX, mouseY, sx, sy, sw, sh);
    if (hit) {
      fill(255, 150, 0);
    } else {
      fill(0, 150, 255);
    }
    rect(sx, sy, sw, sh);
    fill(255);
    textSize(100);
    text("You Died", 700, 500);
    fill(0);
    textSize(40);
    text("RESTART", 860, 660);
    kills="Total Kills: "+str(killCount);
    text(kills, 800, 550);
  }
  environ.foreGround();
}//end of draw
void keyPressed() {
  if (game) {
    if (key=='D'||key=='d') {
      moveRight=true;  
      walk.loop();
    }
    if (key =='A'||key=='a') {
      moveLeft=true;        
      walk.loop();
    }
    if (key=='1') {
      ballState=true;
      open.play();
    }
    if (key=='2') {
      ballState=false;
    }
  }
}
void keyReleased() {
  if (game) {
    if (key=='D'||key=='d') {
      moveRight=false;
      walk.stop();
    }
    if (key=='A'||key=='a') {
      moveLeft=false;
      walk.stop();
    }
  }
}
void mousePressed() {
  if (game) {
    Bullets CreateNew = new Bullets(ham.getX(), ham.GunDirection);
    bullets.add(CreateNew);
    shoot.play();
  }
  if ((mainMenu)&& (hit)) {
    mainMenu=false;
    game=true;
    hit=false;
  }
  if ((gameOver)&&(hit)) {
    game=true;
    gameOver=false;
    hit=false;
    robos.clear();
    roundCount=1;
    killCount=0;
  }
}
// POINT/RECTANGLE
boolean pointRect(float px, float py, float rx, float ry, float rw, float rh) {

  // is the point inside the rectangle's bounds?
  if (px >= rx &&        // right of the left edge AND
    px <= rx + rw &&   // left of the right edge AND
    py >= ry &&        // below the top AND
    py <= ry + rh) {   // above the bottom
    return true;
  }
  return false;
}
