PImage[] imagenes = new PImage[3]; 
String[] textos = new String[3];
int indice = 0;
int intervalo = 10000;
int ultimoCambio = 0;
int inicioMensaje;
//                                                               Animación para el texto
float tamanoTexto = 5;
float tamanoMaximo = 38; 
float xTexto, yTexto;

void setup() {
  size(640, 480);
//                                                               imagenes
  imagenes[0] = loadImage("teamLab.museo.jpg");
  imagenes[1] = loadImage("flower.forest.jpg");
  imagenes[2] = loadImage("terceraFoto.jpg");

//                                                               Textos
  textos[0] = "TeamLab Planets.";
  textos[1] = "Fue creado por el colectivo de artistas digitales teamLab, fundado en 2001 por el fisico y matematico japones Toshiyuki Inoko. Este grupo de artistas son conocidos gracias a sus obras interactivas y envolventes que combinan el arte, la tecnologia y la naturaleza.";
  textos[2] = "Para aquellos que no conocen las exposiciones de teamLab, estas son una mezcla impresionante de arte moderno digital en gran escala que ofrece una experiencia envolvente tanto a nivel sensorial como físico. Los visitantes son animados a interactuar con las obras, recorriendo distintos espacios que nos llevan a mundos aparte.";
  inicioMensaje = millis();
  ultimoCambio = millis();
  iniciarAnimacionTexto();
}
void draw() {
  if (millis() - ultimoCambio > intervalo) {
    indice = (indice + 1) % imagenes.length;
    ultimoCambio = millis();
    tamanoTexto = 5;
    iniciarAnimacionTexto();
}
  image(imagenes[indice], 0, 0, width, height);
//                                                                     Configuracion texto
  fill(255);
  textSize(tamanoTexto);
  textLeading(tamanoTexto * 1.2);
  textAlign(LEFT, TOP); 
  
if (indice == 0) { 
if (tamanoTexto < tamanoMaximo) tamanoTexto += 0.5;
drawTextWithParagraphWrap(textos[indice], xTexto, yTexto, width - 60, height / 2);
  } else if (indice == 1) {
    if (yTexto < height / 2) yTexto += 2;
    drawTextWithParagraphWrap(textos[indice], width / 2 - 300, yTexto, width - 60, height / 2);
  } else if (indice == 2) {
    if (xTexto > width / 2 - 250) xTexto -= 2;
    drawTextWithParagraphWrap(textos[indice], xTexto, height / 2, width - 60, height / 2); }
}

void drawTextWithParagraphWrap(String texto, float x, float y, float w, float h) {
  textAlign(LEFT, TOP);
  float lineHeight = tamanoTexto * 1.3;
  float currentY = y;
  String[] words = splitTokens(texto, " \n");
  String line = "";

  for (int i = 0; i < words.length; i++) {
    String testLine = line + words[i] + " ";
    float testWidth = textWidth(testLine);

  if (testWidth > w) {
  text(line, x, currentY);
  currentY += lineHeight;
  line = words[i] + " ";
  } else {
  line = testLine; }
}
  text(line, x, currentY);
}

void iniciarAnimacionTexto() {
  if (indice == 0) {
    xTexto = 50;
    yTexto = height / 2;
    tamanoTexto = 8;
  } else if (indice == 1) {
    yTexto = -50;
    tamanoTexto = 25;
  } else if (indice == 2) {
    xTexto = width + 150;
    tamanoTexto = 20;
  }
}
