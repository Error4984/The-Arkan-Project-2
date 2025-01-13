// James sturm

class Ranged {
  // Member Variables
  int x, y, w, h, speed, health, m;
  PImage r1;
  boolean alive, inrange;

  // Constructor
  Ranged() {
    x = int(random(width));
    y = -100;
    w = 0;
    h = 0;
    speed = 5;
    health = 0;
    alive = false;
    inrange = false;
    r1 = loadImage("JamesRanged.png");
    r1.resize(100, 100);
  }


  // Member Methods
  void display() {
    imageMode(CENTER);
    image(r1, x, y);
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
