PImage pantalla1;
PImage pantalla2;
PImage pantalla3;
PImage fotodereinicio;
PFont myFont;
float y = 50;
float x = 50;
float velocidad = 1;
int pantalla = 1;
int tiempo = 7;
int tiempobotonreinicio = second();

void setup() {
  size(640, 480);

  pantalla1 = loadImage("foto1.png");
  pantalla2 = loadImage("foto2.png");
  pantalla3 = loadImage("foto3.png");
  fotodereinicio = loadImage("FotoReinicio.png");
  
  myFont = loadFont("Arial-BoldMT-26.vlw");
  textFont(myFont);
  
  tiempo = second();
}

void draw() {
  if (pantalla == 1) {
    image(pantalla1, 0, 0, 640, 480);
    fill (255, 255, 255);
    text("Cataratas Del Iguazú",y-80, 420, 250);
    y = y + velocidad;
  } else if (pantalla == 2) {
    image(pantalla2, 0, 0, 640, 480);
    fill (0, 255, 42);
    text("El nombre de las cataratas en español, Iguazú y arcaicamente Yguazú, proviene de dos palabras de origen guaraní", 90, x, 500, 250);
    x += velocidad;
  } else if (pantalla == 3) {
    image(pantalla3, 0, 0, 640, 480);
    fill (240, 255, 0);
    text("Las cataratas del Iguazú son el principal centro turístico del noreste de Argentina, y uno de los principales de todo el país.", y-200, x-40, 500, 250);
     x += velocidad;
     y += velocidad;
     if (x > 150) {
       velocidad = 0;
     }
  }

  if (second() - tiempobotonreinicio > 10 && pantalla == 3) {
    image(fotodereinicio, 100, 280, 400, 160);
  }

  if (second() - tiempo > 3) {
    pantalla++;
    tiempo = second();
  }
  
  if (pantalla > 3) {
    pantalla = 3;
  }
}

void mouseClicked() {
  if (pantalla == 3 && mouseX > 100 && mouseX < 600 && mouseY > 370 && mouseY < 410) {
    pantalla = 1;
  tiempo = second();
  x = 50;
  y = 50;
  velocidad = 1;
  }
}
