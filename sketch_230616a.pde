color lineColor; 
PImage img;

void setup() {
  size(800, 400);
  background(255);
  noFill();
  
  lineColor = color(0); 
  
  img = loadImage("maxresdefault.jpg");
  img.resize(400, 200); 
}

void draw() {
  background(255);
  

  float size = 20;
  float rotation = 0.8; 
  
  float x = width/2 + width/4; 
  float y = height/2;
  
  
  for (int i = 0; i < 15; i++) {

    float currentSize = size + i*20;
    

    float[] verticesX = {x - currentSize/2, x + currentSize/2, x + currentSize/2, x - currentSize/2};
    float[] verticesY = {y - currentSize/2, y - currentSize/2, y + currentSize/2, y + currentSize/2};
    

    translate(x, y);
    rotate(rotation);
    translate(-x, -y);
    

    beginShape();
    for (int j = 0; j < 4; j++) {
      vertex(verticesX[j], verticesY[j]);
    }
    endShape(CLOSE);
    

    stroke(lineColor);
    strokeWeight(6);
    

    resetMatrix();
  }
  

  float imgX = width/2 - img.width/2 - 300;
  float imgY = height/2 - img.height/2;
  image(img, imgX, imgY);
}

void mousePressed() {

  lineColor = color(random(255), random(255), random(255));
}
