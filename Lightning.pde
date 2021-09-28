//Time to play god
void setup() {
  size(300, 300);
  background(0, 255, 255);
}

void draw() {
  noStroke();
  fill(255,255,0);
  ellipse(20,20,25,25);
  fill(255,255,255);
  ellipse(150,30,60,30);
  ellipse(140,30,20,50);
  ellipse(150,30,20,50);
  ellipse(160,30,20,50);
}

void crack() {
  int startX = 0;
  int startY = 150;
  int endX=0;
  int endY=150;
  int r=(int)(Math.random()*256);
  int g=(int)(Math.random()*256);
  int b=(int)(Math.random()*256);
 int w=(int)(Math.random()*11);
  stroke(r, g, b);
  fill(r,g,b);
  strokeWeight(w);
  
  while (endX<=300) {
    endX=startX+(int)(Math.random()*9)+1;
    endY=startY+(int)(Math.random()*19)-9;
    quad(startX, startY,endX,endY,endX,300,startX,300);
    startX=endX;
    startY=endY;
    
  }
}
void mousePressed() {
  crack();
}

