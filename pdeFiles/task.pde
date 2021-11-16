// 2.1 d
// Je nach X-Position des Cursors wird die Größe des Quadrats verändert

void setup(){
  
  size(500, 500);
  rectMode(CENTER);
  strokeWeight(3);
}

void draw(){
  background(69);
  
  int size = mouseX;
  fill(0, 0, 69);
  rect(250, 250, size, size);
}