class Environment {
  Environment() {
  }
  void backGround() {
    //right inner strut
    beginShape();
      fill(175);
      vertex(1530,950);
      vertex(1530,900);
      vertex(1650,700);
      vertex(1550,400);
      vertex(950,400);
      vertex(950,350);
      vertex(1600,350);
      vertex(1800,950);            
    endShape();
    //left inner strut
    beginShape();
      vertex(370,950);
      vertex(370,900);
      vertex(250,700);
      vertex(350,400);
      vertex(950,400);
      vertex(950,350);
      vertex(300,350);
      vertex(100,950);
    endShape();
    fill(75);
    //right outer strut
    beginShape();
      vertex(1800,950);
      vertex(width,950);
      vertex(width,300);
      vertex(950,300);
      vertex(950,350);
      vertex(1600,350);  
    endShape();
    //left outer strut
    beginShape();
      vertex(100,950);
      vertex(0,950);
      vertex(0,300);
      vertex(950,300);
      vertex(950,350);
      vertex(300,350);  
    endShape();
    //right outer barrier
    beginShape();
      vertex(1050,350);
      vertex(1400,350);
      vertex(1350,150);
      vertex(1100,150);   
    endShape();
    //left outer barrier
    beginShape();
      vertex(850,350);
      vertex(500,350);
      vertex(550,150);
      vertex(800,150);   
    endShape();
    //right inner barrier
    fill(175);
    beginShape();
      vertex(1100,350);
      vertex(1370,350);
      vertex(1330,170);
      vertex(1250,170);
    endShape();
    //left inner barrier
    beginShape();
      vertex(800,350);
      vertex(530,350);
      vertex(570,170);
      vertex(650,170);
    endShape();
    //right railing
    fill(200);
    rect(1400,225,10,75);
    rect(1500,225,10,75);
    rect(1600,225,10,75);
    fill(#F56C02);
    rect(1400,215,10,10);
    rect(1400,210,400,10);
    beginShape();
      vertex(1500,225);
      vertex(1450,215);
      vertex(1560,215);
      vertex(1510,225);
    endShape();
    beginShape();
      vertex(1600,225);
      vertex(1550,215);
      vertex(1660,215);
      vertex(1610,225);
    endShape();
    //left railing
    fill(200);
    rect(500,225,10,75);
    rect(400,225,10,75);
    rect(300,225,10,75);
    fill(#F56C02);
    rect(500,215,10,10);
    rect(510,210,-400,10);
    beginShape();
      vertex(400,225);
      vertex(450,215);
      vertex(340,215);
      vertex(390,225);
    endShape();
    beginShape();
      vertex(300,225);
      vertex(350,215);
      vertex(240,215);
      vertex(290,225);
    endShape();
    //decals
    fill(55);
    rectMode(CENTER);
    rect(1280,260,80,80,15);
    fill(205);
    rect(1280,260,65,65,10);
    rectMode(CORNER);
    fill(#F56C02);
    triangle(1255,235,1255,285,1305,285);
    fill(210);
    rect(1590,850,30,30);   
  }
   
  void foreGround() {
    fill(150);
    rect(0, 950, width, height);
    stroke(255);
    strokeWeight(10);
    noStroke();
    //right Pillar
    //main
    fill(200);
    beginShape();
    vertex(1620, 950);
    vertex(1620, 900);
    vertex(1820, 800);
    vertex(1720, 0);
    vertex(width, 0);
    vertex(width, 950);
    endShape(CLOSE);
    //bottomBlock
    fill(50);
    beginShape();
    vertex(1650, 885);
    vertex(1650, 855);
    vertex(1810, 720);
    vertex(1820, 800);
    endShape(CLOSE);
    //upperBlock
    beginShape();
    vertex(1780, 760);
    vertex(1810, 720);
    vertex(1803, 660);
    vertex(1765, 350);
    vertex(1700, 355);
    vertex(1710, 400);
    vertex(1740, 410);
    vertex(1780, 650);
    vertex(1760, 660);
    endShape(CLOSE);
    //Support Beam
    beginShape();
    fill(170);
    vertex(1765,350);
    vertex(1655,358);
    vertex(1630,200);
    vertex(1600,180);
    vertex(1560,0);
    vertex(1720,0);
    endShape(CLOSE);
    //Barrel
    fill(#FA9B00);
    ellipse(1780, 740, 55, 55);
    //Bolts
    fill(#FFE2B2);
    ellipse(1820,450,25,25);
    ellipse(1835,550,25,25);
    fill(50);
    ellipse(1820,450,15,15);
    ellipse(1835,550,15,15);
    //Sections
    beginShape();
    fill(75);
    vertex(1782,495);
    vertex(1784,505);
    vertex(width,495);
    vertex(width,485);
    endShape(CLOSE);
    beginShape();
    vertex(1820, 800);
    vertex(1813,750);
    vertex(width,740);
    vertex(width,790);
    endShape(CLOSE);
    fill(#25D7F5);
    beginShape();
    vertex(1828,770);
    vertex(1908,760);
    vertex(1910,770);
    vertex(1830,780);
    endShape(CLOSE);
    fill(125);
    beginShape();
    vertex(1644,290);
    vertex(1645,300);
    vertex(1710,270);
    vertex(1650,0);
    vertex(1640,0);
    vertex(1700,260);
    endShape(CLOSE);
    //left Pillar
    fill(200);
    beginShape();
    vertex(280, 950);
    vertex(280, 900);
    vertex(80, 800);
    vertex(180, 0);
    vertex(0, 0);
    vertex(0, 950);
    endShape(CLOSE);
    //bottom Block
    fill(50);
    beginShape();
    vertex(250, 885);
    vertex(250, 855);
    vertex(90, 720);
    vertex(80, 800);
    endShape(CLOSE);
    //upperBlock
    beginShape();
    vertex(120, 760);
    vertex(90, 720);
    vertex(97, 660);
    vertex(135, 350);
    vertex(200, 355);
    vertex(190, 400);
    vertex(160, 410);
    vertex(120, 650);
    vertex(140, 660);
    endShape(CLOSE);
    //Support Beam
    beginShape();
    fill(170);
    vertex(135,350);
    vertex(245,358);
    vertex(270,200);
    vertex(300,180);
    vertex(340,0);
    vertex(180,0);
    endShape(CLOSE);
    //Barrel
    fill(#FA9B00);
    ellipse(120, 740, 55, 55);
    //Bolts
    fill(#FFE2B2);
    ellipse(80,450,25,25);
    ellipse(65,550,25,25);
    fill(50);
    ellipse(80,450,15,15);
    ellipse(65,550,15,15);
    //Sections
    beginShape();
    fill(75);
    vertex(118,495);
    vertex(116,505);
    vertex(0,495);
    vertex(0,485);
    endShape(CLOSE);
    beginShape();
    vertex(80, 800);
    vertex(87,750);
    vertex(0,740);
    vertex(0,790);
    endShape(CLOSE);
    fill(#25D7F5);
    beginShape();
    vertex(72,770);
    vertex(-8,760);
    vertex(-10,770);
    vertex(70,780);
    endShape(CLOSE);
    fill(125);
    beginShape();
    vertex(256,290);
    vertex(255,300);
    vertex(190,270);
    vertex(250,0);
    vertex(260,0);
    vertex(200,260);
    endShape(CLOSE);
    //Pillar end
  }

}
