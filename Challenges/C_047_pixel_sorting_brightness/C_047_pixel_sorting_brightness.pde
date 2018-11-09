PImage img;
PImage sorted;
color black = (255);
color red = color(255, 0, 0);
int i = 0;

color bright;
int bindex;

void setup() {
  img = loadImage("tentacle.jpg");
  img.resize(300, 300);
  sorted = createImage(300, 300, RGB);
  sorted = img.get();
  size(600, 300);
}

void draw() {
  frameRate(100000);
  sorted.loadPixels();
  float b = -1;
  for (int j=i; j<sorted.pixels.length; j++) {

    if (brightness(sorted.pixels[j]) > b) {
      b = int(brightness(sorted.pixels[j]));
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
  i++;
}
