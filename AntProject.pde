//Once click point then all move to point and dissapear

Food[] apples = new Food [250];
Ant[] harolds = new Ant [10];

PImage background;

void setup () {
  size(640, 480);
  background = loadImage("background.png");

  for (int i=0; i < apples.length; i++) apples[i] = new Food();
  for (int i=0; i < harolds.length; i++) harolds[i] = new Ant();
}


void draw () {
  background(background);

  for (int i = 0; i < apples.length; i++) {
    apples[i].sketch();
  }
  for (int i = 0; i < harolds.length; i++) {
    harolds[i].sketch();
  }
}
