// Owen Thibodeaux

class Dasher {  // Member Variables
  int x, y, w, h, speed, health, dashSpeed, attackRate, m;
  PImage d1;
  boolean alive;
  //Constructer
  Dasher() {
    x = int(random(width));
    y = -100;
    w = 100;
    h = 200;
    attackRate = 10;
    dashSpeed = 70;
    health = 70;
    speed = 17;
    alive = false;
    d1 = loadImage("OwenTDasher.png");
    d1.resize(50, 50);
  }

  //Member Methods
  void display() {
    imageMode(CENTER);
    image(d1, x, y);
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
