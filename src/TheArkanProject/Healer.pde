// James Sturm

class Healer {
  // Member Variables
  int x, y, w, h, speed, health, healrate, attackrate, attackdamage;
  PImage h1;
  boolean alive;


  // Constructor
  Healer() {
    x = int(random(width));
    y = -100;
    w = 50;
    h = 50;
    speed = 3;
    health = 100;
    healrate = 10;
    attackrate = 3;
    attackdamage = 20;
    alive = false;
    h1 = loadImage("OwenTHealer.png");
    h1.resize(50, 50);
  }

  // Member Methods
  void display() {
    imageMode(CENTER);
    image(h1, x, y);
  }


  void move() {
    y+=speed;
  }
  boolean reachedBottom() {
    if (y > height) {
      return true;
    } else {
      return false;
    }
  }
}
