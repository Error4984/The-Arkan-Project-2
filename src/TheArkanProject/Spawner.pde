// Eli Wright

class Spawner {
  // Member Variables
  int x, y, w, h, speed, health, spawnrate, m;
  PImage sp1;
  boolean alive;

  // Constructor
  Spawner() {
    x = int(random(width));
    y = -100;
    w = 0;
    h = 0;
    speed = 5;
    health = 0;
    spawnrate = 5;
    alive = false;
    sp1 = loadImage("EliWSpawner.png");
    sp1.resize(50, 50);
  }

  // Member Methods
  void display() {
    imageMode(CENTER);
    image(sp1, x, y);
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
