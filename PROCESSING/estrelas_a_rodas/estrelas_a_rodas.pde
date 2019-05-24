void setup() {
  size(1000, 350);
}

void draw() {
  background(#f44242);
  
  pushMatrix();
  
  stroke(#f44242);
  fill(#f4eb41);
  star(mouseX, mouseY, 30, 70, 5);  
  popMatrix();
  
  pushMatrix();
  translate(width*0.5, height*0.5);
  rotate(frameCount / -15.0);
  stroke(#f44242);
  fill(#fc41e3);
  star(0, 0, 30, 70, 5);  
  popMatrix();
  
  pushMatrix();
  translate(width*0.8, height*0.5);
  rotate(frameCount / 55.0);
  stroke(#f44242);
  fill(#40f8fc);
  star(0, 0, 30, 70, 5); 
  popMatrix();
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
