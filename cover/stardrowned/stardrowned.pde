
void setup() {
  size(512, 800);
}

void draw() {
  background(128);

  PImage pi = loadImage("unlettered.jpg");
  image(pi, 0, 0, width, height);

  // Lettering

  scale(1, 2);

  int fontHeight = 90;
  int textTop = 300;
  int textLeft = 15;
  PFont font = createFont("Impact", fontHeight);
  fontHeight *= 0.9;
  textFont(font);  
  outlined("Satan's", textLeft, textTop);
  outlined("Stardrowned", textLeft, textTop + fontHeight);

  saveFrame("cover.png");
  
  noLoop();
}

void outlined(String msg, float xPos, float yPos) {

  fill(255);
  
  for(int x = -1; x < 2; x++){
      text(msg, xPos + x, yPos);
      text(msg, xPos, yPos + x);
  }
  fill(0);
  text(msg, xPos, yPos);
}
