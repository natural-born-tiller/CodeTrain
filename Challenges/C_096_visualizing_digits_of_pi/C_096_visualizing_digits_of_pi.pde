int r = 100;
float total = 0;
float circle = 0;

void setup() {
  size(200, 200);
  background(51);
  translate(width/2, height/2);
  noFill();
  strokeWeight(1);
  ellipse(0, 0, r*2, r*2);
  rect(-100, -100, 200, 200);
}


void draw() {
  frameRate(1000000);
  translate(width/2, height/2);
  float randx = random(-100, 100);
  float randy = random(-100, 100);
  float distance = sqrt(randx*randx + randy*randy);
  if (distance<=100) {
    circle ++;
    stroke(255,0,0);
  } else {
    stroke(0, 255, 0);
  }
  total ++;
  println(4*(circle/total));
  point(randx, randy);
}
