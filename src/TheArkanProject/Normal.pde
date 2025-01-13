// Henry Baldwin

class Normal {
  // Member Variables
  int x, y, w, h, speed, health, m;
  PImage n1;
  boolean alive, inrange;


  // Constructor
  Normal() {
    x = int(random(width));
    y = -100;
    w = 0;
    h = 0;
    speed = 0;
    health = 0;
    alive = false;
    speed = 5;
    n1 = loadImage("HenryNormal1.png");
    n1.resize(50, 50);
  }

  // Member Methods
  void display() {
    imageMode(CENTER);
    image(n1, x, y);
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
