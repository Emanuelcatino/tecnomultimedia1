//Emanuel Catino Comision 1         9371/6
 PImage url2 ; 
void setup () {

size(800, 400); //                  TAMAÑO DE LA VENTANA

url2 = loadImage ("url2.jpg") ;
}
void draw(){

background (24, 114, 202) ; //      CIELO 
fill (255, 255, 255) ;
circle (270, 120, 50); //           SOL

fill (128, 64, 0) ;
rect (110, 220, 20, 75) ; //        TRONCO DEL ARBOL

fill (58, 165, 43) ; //             COLOR 
ellipse(120, 210, 80, 80); //       CIRCULO ARBOL

fill (10, 89, 36) ; //              COLOR 
ellipse(120, 170, 30, 30); //       CIRCULO ARBOL

fill (20, 178, 71) ; //             COLOR PASTO
rect (-0, 290, width, 160); //      RECTANGULO PASTO

image (url2, 400 , -40, 400 ,500) ;
}
