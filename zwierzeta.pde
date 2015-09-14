import ddf.minim.*;

PImage[] animals = new PImage[3];
char[] animalKeys = new char[3];
AudioPlayer player;
Minim minim;
char currentKey;

void setup() {   
  size (265,396);
  animals[0] = loadImage("data/kaczka.jpg");
  animals[1] = loadImage("data/krowa.jpg");
  animals[2] = loadImage("data/jagnie.jpg");
  animalKeys[0] = 'z';
  animalKeys[1] = 'x';
  animalKeys[2] = 'c';
  
  textSize(60);  
  minim = new Minim(this);
}

void showAnimalImage()
{
  for (int i = 0; i < animals.length; ++i) {
    if (key == animalKeys[i]) {
        image(animals[i], 0, 0); 
    }
  }
  if (key == ' ') {
    int randId = int(random(animals.length));
                                             
    image(animals[randId], 0, 0);
    currentKey = animalKeys[randId];    
    delay(200);
  }
}

void draw() {  
  if (keyPressed)  {
    currentKey = key;
    showAnimalImage();
  } 
  
  if (currentKey == animalKeys[0] && mousePressed) {
    if (mouseButton == LEFT) {
      text("Kaczka", 40, 60);
      fill(0, 200, 0);
    }
    else if(mouseButton == RIGHT) {
      minim.stop();
      player = minim.loadFile("data/kwa.mp3");
      player.play();
    }
  }
  if (currentKey == animalKeys[1] && mousePressed) {
    if (mouseButton == LEFT) {
      text("Krowa", 40, 60);
      fill(150, 0, 0);
    }
    else if(mouseButton == RIGHT) {
      minim.stop();
      player = minim.loadFile("data/muu.mp3");
      player.play();
    }
  }
  if (currentKey == animalKeys[2] && mousePressed) {
    if (mouseButton == LEFT) {
      text("Jagnię", 40, 60);
      fill(55, 0, 200);
    }
    else if(mouseButton == RIGHT) {
      minim.stop();
      player = minim.loadFile("data/bee.mp3");
      player.play();
    }
  }
}