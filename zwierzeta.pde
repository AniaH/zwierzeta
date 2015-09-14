import ddf.minim.*;

PImage[] animals = new PImage[3];
char[] animalKeys = { 'z', 'x', 'c' };
String[] animalNames = { "Kaczka", "Krowa", "Jagnię" };
String[] animalSounds = { "data/kwa.mp3", "data/muu.mp3", "data/bee.mp3" };
AudioPlayer player;
Minim minim;
char currentKey;

void setup() {   
  size (265,396);
  animals[0] = loadImage("data/kaczka.jpg");
  animals[1] = loadImage("data/krowa.jpg");
  animals[2] = loadImage("data/jagnie.jpg");
  
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
    showRandomAnimal();
  }
}

void showRandomAnimal() {
  int randId = int(random(animals.length));
  image(animals[randId], 0, 0);
  currentKey = animalKeys[randId];
  delay(200);
}

void showAnimalName(String name) {
  text(name, 40, 60);
  fill(55, 0, 200);
}

void playAnimalSound(String soundFilePath) {
  player = minim.loadFile(soundFilePath);
  player.play();
}

void draw() {  
  if (keyPressed)  {
    minim.stop();
    currentKey = key;
    showAnimalImage();
  } 

  for (int i = 0; i < animalKeys.length; ++i) {
    if (currentKey == animalKeys[i] && mousePressed) {
      if (mouseButton == LEFT) {
        showAnimalName(animalNames[i]);
      }
      else if (mouseButton == RIGHT) {
        minim.stop();
        playAnimalSound(animalSounds[i]);
      }
    }
  }
}