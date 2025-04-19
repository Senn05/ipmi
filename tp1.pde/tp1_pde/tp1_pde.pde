//fondo                                                   xEsquina, yEsquina, ancho, alto
PImage p;
void setup(){
size(800,400);
p =loadImage("foto.jpg");
background(183,193,176);
//cursor
}
void draw(){
image(p, 0,0,400,400);//foto
//text ("Hola",400,200);
println("X:");
println(mouseX);
println("Y:");
println(mouseY);
//                                                               fondo
noStroke(); 
fill(152,123,118);
quad(400,260,800,190,800,400,400,400);
//                                                              cabello marron
noStroke(); 
fill(144,88,88);
ellipse(570,220,250,380);
ellipse(620,210,250,380);
rect(455,180,50,400);
rect(640,220,105,400);
//                                                             Cabello, mechas rubias.
noStroke();
fill(241,224,200);
rect(680,120,35,400);
triangle(614,45,715,120,620,120);
triangle(615,45,500,120,620,120);
//                                                                          cara
noStroke();
fill(240,218,218);
rect(540,250,115,300);
rect(540,120,142,130);
rect(566,250,100,32);
triangle(540,250,566,280,566,250);
triangle(666,250,666,280,682,250);
triangle(615,66,681,120,569,120);
//                                                           lineas del rostro
stroke(202,95,114);                                 //color de la linea del rostro
strokeWeight(4);
line(667,281,682,252);
line(566,281,540,251);
line(667,281,565,281);
line(655,283,655,340);
strokeWeight(2);
line(646,137,634,161);
line(634,161,643,207);
line(643,207,631,215);
line(623,217,618,213);
//                                                      delineado del mechon rubio derecho
stroke(204,145,117);
strokeWeight(4);
line(680,124,680,400);
//                                                          Vestido verde
stroke(90,137,108);               
strokeWeight(3);
fill(141,173,142);
quad(530,336,655,336,715,400,530,400);
//                                                   delineado de los ojos
stroke(174,64,84);
strokeWeight(6);
line(607,179,554,179);
line(647,179,682,179);
line(598,157,605,151);
line(652,159,648,153);
strokeWeight(3);
line(552,179,545,185);
line(683,179,689,180);
line(564,181,563,189);
line(674,183,677,188);
//
strokeWeight(3);
fill(255,255,255);
arc(580,180,58,60, PI, TWO_PI);
arc(663,180,38,50, PI, TWO_PI);
noFill();
strokeWeight(2);
arc(580, 142, 40, 30, PI, TWO_PI);
arc(663,144,28,25, PI, TWO_PI);
//                                                     ojos
noStroke();
fill(174,64,84);
ellipse(574,167,30,35);
ellipse(660,170,24,28);
fill(255,255,255);
ellipse(570,160,5,10);
ellipse(655,165,5,10);
//                                                Labios/color
noStroke();
fill(202,95,114);
triangle(607,243,620,243,617,256);
triangle(642,245,650,245,644,260);
rect(617,240,28,18);
noStroke();
fill(174,64,84);
triangle(621,233,640,245,607,242);
triangle(634,233,649,242,620,242);
//                                                Labios/lineas
stroke(174,64,84);
strokeWeight(3);
line(608,243,650,243);
strokeWeight(2);
line(608,243,597,238);
line(650,243,658,238);
line(618,257,643,257);
//                                            Cabello, mechas rubias 2da parte.
noStroke();
fill(241,224,200);
rect(500,120,50,400);
triangle(547,117,568,120,548,134);
triangle(445,188,470,103,469,188);
rect(445,188,25,400);
//                                                        delineado del cabello
stroke(204,145,117);
strokeWeight(4);
line(610,66,549,133);
line(610,66,680,123);
line(549,133,549,400);
line(610,66,613,44);
//
stroke(117,43,37);
line(613,44,578,29);

}
