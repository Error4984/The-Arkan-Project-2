// James Sturm

class Heavy {
  // Member Variables
  int x, y, w, h, speed, health, attackrate, attackdamage, m;
  PImage h1;
  boolean alive;


  // Constructor
  Heavy() {
    x = int(random(width));
    y = -100;
    w = 150;
    h = 150;
    speed = 5;
    health = 350;
    attackrate = 3;
    attackdamage = 50;
    alive = false;
    h1 = loadImage("JamesHeavy.png");
    h1.resize(150, 150);
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
