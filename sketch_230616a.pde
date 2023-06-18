color lineColor; // Variable para almacenar el color de las líneas
PImage img;

void setup() {
  size(800, 400);
  background(255);
  noFill();
  
  lineColor = color(0); // Inicialmente, el color de las líneas es negro
  
  img = loadImage("maxresdefault.jpg");
  img.resize(400, 200); // Redimensiona la imagen a 400x200 píxeles
}

void draw() {
  background(255);
  
  // Variables para el tamaño y la rotación del cuadrado
  float size = 20;
  float rotation = 0.8; // Ángulo de rotación en radianes
  
  // Posición inicial del primer cuadrado en la mitad derecha
  float x = width/2 + width/4; // La mitad de la anchura de la ventana más un cuarto
  float y = height/2;
  
  // Dibuja una serie de cuadrados del más pequeño al más grande
  for (int i = 0; i < 15; i++) {
    // Calcula la posición y el tamaño del cuadrado actual
    float currentSize = size + i*20;
    
    // Calcula las coordenadas de los vértices del cuadrado
    float[] verticesX = {x - currentSize/2, x + currentSize/2, x + currentSize/2, x - currentSize/2};
    float[] verticesY = {y - currentSize/2, y - currentSize/2, y + currentSize/2, y + currentSize/2};
    
    // Rota el lienzo en torno al centro del cuadrado
    translate(x, y);
    rotate(rotation);
    translate(-x, -y);
    
    // Dibuja el cuadrado en las coordenadas calculadas
    beginShape();
    for (int j = 0; j < 4; j++) {
      vertex(verticesX[j], verticesY[j]);
    }
    endShape(CLOSE);
    
    // Agrega trazo al cuadrado con el color actual
    stroke(lineColor);
    strokeWeight(6);
    
    // Reinicia la transformación para el siguiente cuadrado
    resetMatrix();
  }
  
  // Mueve la imagen 300 píxeles a la izquierda
  float imgX = width/2 - img.width/2 - 300;
  float imgY = height/2 - img.height/2;
  image(img, imgX, imgY);
}

void mousePressed() {
  // Cambia el color de las líneas al hacer clic
  lineColor = color(random(255), random(255), random(255));
}
