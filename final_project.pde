PImage A;
PImage B;
PImage C;
PImage D;
PImage E;
PImage F;
PImage G;
PImage H;
int m;
int n;
float x, y;
int a;
void setup(){
  frameRate(450);
  size(1600, 745);
  background(0);
  A = loadImage("TVg.png");
  B = loadImage("41.png");
  C = loadImage("safe.png");
  D = loadImage("Door.png");
  E = loadImage("11205_1.png");
  F = loadImage("scope.png");
  G = loadImage("paper.png");
  H = loadImage("TVbig.png");
}

void draw(){
  int s = second();
  image(B,0,0);
  image(A,1050,255);
  image(D,200,200);
  image(C,900,350);
  image(E,100,480);
  image(F, mouseX,mouseY);
  
/*  fill(255);
  rect(400, 300, 100, 180);
  fill(0);
  ellipse(410, 390, 20, 20);*/
  
 if(mouseX<200 && mouseY < 600 && mousePressed){
   background(0);
  image(G,0,0);
 }
 if(mouseX>1000 && mouseX<1400 && mouseY>255 && mouseY<300 && mousePressed){
 background(0,0,0);
  image(H,500,100);
  for (int i=0;i<=5*1600;i++) {
      stroke(random(0,175));
      x = random(0,a);
      y = random(0,a);
      line(x,y,x+random(0,s),y);
  }
  stroke(100,100);
  line(0,n,a,n);
  n++;
  if (n>a) {
    n=0;
  }
  stroke(100,100);
  line(0,m,a,m);
  m++;
  if (m>a) {
    m=0;}
 }
}
