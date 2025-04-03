//Lawrence Mo
//April 3rd 2025
//Unit 4 Checkpoint, Making Your Own Functions.
//Block 2-4

//color black = 0;
color white = 255;
color backgroundblue  = #70B3ED;
color lightblue       = #82B3F3;
color mediumblue      = #5A8AD8;
color darkblue        = #2C6CB5;
color darkestblue     = #305896;
color black           = #000000;
color greyblue        = #7A9FED;

void setup() {
  size(800, 800);
  
}


void draw() {
  face(200, 100); //x, y
  //face(500, -200);
  
  
  
}


void face(int x, int y) {
   pushMatrix();
   translate(x, y);
   
   head();
   //hair();
   eye(); //left
   translate(200, 0);
   eye(); //right
   //mouth();
   
   popMatrix();
  
}


void head() {
  fill(lightblue);
  stroke(black);
  strokeWeight(2);
  rect(0, 0, 400, 400); 
}

void eye() {
  fill(white);
  ellipse(100, 100, 150, 70); 
}
