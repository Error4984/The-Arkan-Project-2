// Henry Baldwin
// InfoPanel Class to display game information
class InfoPanel {
  int ammo;
  int wood;
  int metal;
  int brick;
  int damage;

  InfoPanel() {

    ammo = 12;
    brick = 3;
    wood = 5;
    metal = 0;
  }



  // Call this function to update ammo
  void updateAmmo(int ammoChange) {
    ammo += ammoChange;
  }
  // Call this function to update wood
  void updateWood(int woodChange) {
    wood += woodChange;
  }
  // Call this function to update metal
  void updateMetal(int metalChange) {
    metal += metalChange;
  }
  // Call this function to update brick
  void updateBrick(int brickChange) {
    brick += brickChange;
  }
  // Call this function to update damage
  void updateDamage(int damageChange) {
    damage += damageChange;
  }

  // Display the panel with information
  void display() {
    // Draw background for info panel
    fill(50, 50, 50, 150); // Semi-transparent background
    rect(10, 10, 200, 100);

    // Set text properties
    fill(255);
    textSize(12);

    // Display the health
    text("Health: " + p1.health, 20, 10);

    //Display the ammo
    text("Ammo:" + ammo, 20, 20);

    //Display the brick
    text("Brick:" + brick, 20, 30);

    //Display the wood
    text("Wood:" + wood, 20, 40);

    //Display the metal
    text("Metal:" + metal, 20, 50);
  }
}
