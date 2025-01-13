// Henry Baldwin

class Pouncer {
  // Member Variables
  int x, y, w, h, speed, health;
  PImage p1;
  boolean alive, inrange;

  // Constructor
  Pouncer() {
    x = int(random(width));
    y = -100;
    w = 0;
    h = 0;
    speed = 5;
    health = 0;
    alive = false;
    inrange = false;
    p1 = loadImage("OwenTPouncer.png");
    p1.resize(50, 50);
  }

  // Member Methods
  void display() {

    imageMode(CENTER);
    image(p1, x, y);
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
