// Eli Wright

class Tunneler {
  // Member Variables
  int x, y, w, h, speed, health, attackdamage, attackrate, m;
  PImage tnl1;
  boolean alive;

  // Constructor
  Tunneler() {
    x = int(random(width));
    y = -100;
    w = 0;
    h = 0;
    speed = 5;
    health = 0;
    attackdamage = 0;
    attackrate = 0;
    alive = false;
    tnl1 = loadImage("EliWTunneler.png");
    tnl1.resize(50, 50);
  }

  // Member Methods
  void display() {
    imageMode(CENTER);
    image(tnl1, x, y);
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
