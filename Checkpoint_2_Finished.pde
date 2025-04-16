//Unit 4 Checkpoint
// Lawrence Mo
//April 14th, 2025


color greyPurple      = #6d5aa5;
color greyBlue        = #747bbc;
color beige           = #F5F5DC;
color windowBlue      = #68BDF5;




void setup() {
  size(800, 800);
  background(255);
  //drawHouse(200, 250, 0.3);
  
  
  int x, y;
    x = 50;
    y = 50;
    
    while (y < 800) {
      drawHouse(x, y, 0.3);
      x = x + 200;
    
    if (x >= 800) {
      x = 50;
      y = y + 200;
    }
  }

}
  
  
void drawHouse(int x, int y, float s) {
  pushMatrix();
  translate(x, y);
  
  scale(s);
  
  float r, g, b;
  float r2, g2, b2;
  float r3, g3, b3;
  
  r = random(0, 255);
  g = random(0, 255);
  b = random(0, 255);
  
  r2 = random(0, 255);
  g2 = random(0, 255);
  b2 = random(0, 255);
  
  r3 = random(0, 255);
  g3 = random(0, 255);
  b3 = random(0, 255);
  
  wall(r, g, b, 0.7);
  window(50, 100, r2, g2, b2);
  window(350, 100, r2, g2, b2);
  roof(r3, g3, b3);
  door(115, 225, r2, g3, b);
  
  popMatrix();
  
}


void wall(float r, float g, float b, float s) {
  scale(s);
  fill(r, g, b);
  rect(0, 0, 600, 600, 0.7);

}

void roof(float r, float g, float b) {
  fill(r, g, b);
  triangle(0, 0, 300, -200, 600, 0);
}


void door(int x, int y, float r, float g, float b) {
  pushMatrix();
  translate(x, y);
  fill(r, g, b);
  rect(x, y, 70, 150);
  rect(x + 70, y, 70, 150);
  popMatrix();
  
}


void window(int x, int y, float r, float g, float b) {
  pushMatrix();
  translate(x, y);
  fill(r, g, b);
  strokeWeight(2);
  rect(0, 0, 200, 200, 1000);
  line(100, 0, 100, 200);
  line(0, 100, 200, 100);
  popMatrix();
  
}
  
