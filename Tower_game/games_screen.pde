PImage back;
PImage platImage;
PImage landscape;
PImage sky;
PImage under;

boolean aboveSky;
boolean won = false;


void gameScreen() { 

  if (aboveSky) {
    image(sky, 0, 0);
  } else {
    image(under, 0, 0);
  }

  for (float landX = charX * 0.75 -groundLength/2; landX < groundLength/2; landX += width) {
    float landY = charY * -0.1 - height/2 + 100;
    image(landscape, -landX, landY);
  }

  if (!won) {
    translate(-(charX - width/2), -(charY - (height/2 + charSize)));
  }

  textureMode(IMAGE);
  textureWrap(REPEAT);
  beginShape();
  texture(back);
  vertex(-wallsPos, -10000, 0, 0);
  vertex(wallsPos, -10000, 2*wallsPos, 0);
  vertex(wallsPos, 0, 2*wallsPos, -10000);
  vertex(-wallsPos, 0, 0, -10000);
  endShape();


  if (keyPressed) {
    if (key == '`') {
      game = false;
      menu = true;
    }
  }

  character();

  if (charY < -height * 1.1) {
    aboveSky = true;
  } else {
    aboveSky = false;
  }

  if (!won) {
    keyControl();
    constrain(charX, -wallsPos + 202, wallsPos - 2);
  }
  jumpFall();
  platforms();
  hazards();

}

void gameSettings() {
  back = loadImage("back.png");
  back.resize( 1200, 900);

  sky = loadImage("sky.png");
  sky.resize(width, height);

  under = loadImage("underground.png");
  under.resize(width, height);

  landscape =loadImage("landscape.png");
  landscape.resize(width, floor(height * 1.3));
}