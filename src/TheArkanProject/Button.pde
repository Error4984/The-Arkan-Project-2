class Button {
  // Member variables: what is needed?
  int x, y, w, h;
  color c1, c2;
  String val;
  boolean on;

  // Constructor
  Button(int x, int y, String val, int w, int h, int c1, int c2) {
    this.x = x;
    this.y = y;
    this.c1=c1;
    this.c2=c2;
    //c1 = color(#7ACB52);
    //c2 = color(#4A7C32);
    this.val = val;
    this.w = w;
    this.h = h;
    on=false;
    imageMode(CENTER);
  }

  // Member methods
  void display() {
    if (on) {
      fill(c2);
    } else {
      fill(c1);
    }

    rectMode(CENTER);

    rect(x, y, w, h);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(40);
    text(val, x, y);
  }

  boolean hover(int mx, int my) {
    if (mx > x-w/2 && mx < x+w/2 && my > y-h/2 && my < y+h/2) {
      on = true;
      return on;
    } else {
      on = false;
      return on;
    }
  }
}
