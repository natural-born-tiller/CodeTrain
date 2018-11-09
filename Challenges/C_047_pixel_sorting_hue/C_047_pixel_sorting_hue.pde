int blub;
PImage img;
PImage sorted;
color black = (255);
int i = 0;

color bright;
int bindex;

void setup() {
  size(600, 300);
  img = loadImage("tentacle.jpg");
  img.resize(300, 300);
  sorted = createImage(300, 300, HSB);
  sorted = img.get();
}

void draw() {
  frameRate(100000);
  sorted.loadPixels();
  float b = -1;
  for (int j=i; j<sorted.pixels.length; j++) {
    if (hue(sorted.pixels[j]) > b) {
      b = hue(sorted.pixels[j]);
      bindex = j;
    }
  }
  color tmp = sorted.pixels[i];
  sorted.pixels[i] = sorted.pixels[bindex];
  sorted.pixels[bindex] = tmp;
  sorted.updatePixels();
  background(0);
  image(img, 0, 0);
  image(sorted, 300, 0);
  if (i < sorted.pixels.length - 1) {
    i++;
  }
}
