/*
Nombre: Navarro Nicolás Didier
Legajo: 127565/4
Comision 3
Tp N°1
Abril de 2026
*/

PImage dragon;

void setup() {
  size (800, 400);
  dragon = loadImage("dragon1.jpeg"); 
 
}
void draw() {
  background (219, 190, 217);
  image(dragon, 0, 0, 400, 400);
   translate(400, 0);
     
   pushStyle();
   strokeWeight (0);
   fill (206, 192, 108);
   ellipse (189, 83, 100, 100);
   fill (0,0, 255);
   ellipse (30,0, 50, 50);
       
    fill (4,93,95); //color del circulo
ellipse (235, 316,290,240); //circulo del suelo

fill (173, 94, 168);       // FLOR ROSA
ellipse (44, 161, 32, 32);
ellipse (46, 180, 25, 25);
ellipse (41,140 , 25, 25);
ellipse (60, 160, 25, 25);
ellipse (30, 160, 25, 25);
popStyle();

fill (28, 75, 8);
beginShape();
vertex (347, 269);
vertex (418, 153);
vertex (355, 275);
endShape(CLOSE);
beginShape();
vertex (362, 257);
vertex (339, 175);
vertex (365, 235);
endShape(CLOSE);
beginShape();
vertex (370, 237);
vertex (416, 214);
vertex (390, 208);
endShape(CLOSE);


beginShape();
vertex (267, 156);
vertex (358, 26);
vertex (281, 151);
endShape(CLOSE);

beginShape();
vertex (284, 135);
vertex (300, 44);
vertex (292, 116);
endShape(CLOSE);

beginShape();
vertex (288, 139);
vertex (343, 133);
vertex (293, 132);
endShape(CLOSE);

beginShape();
vertex (291, 128);
vertex (344, 100);
vertex (291, 129);
endShape(CLOSE);

beginShape();
vertex (315, 89);
vertex (330, 30);
vertex (332, 63);
endShape(CLOSE);

beginShape();
vertex (335, 66 );
vertex (365,43 );
vertex (340, 57 );
endShape(CLOSE);

beginShape();
vertex (311, 105);
vertex (371, 70 );
vertex (315, 97);
endShape(CLOSE);

//PLANTAS DEL LADO IZQUIERDO


beginShape();
vertex(2, 307);
vertex(20, 268);
vertex(2, 284);
endShape(CLOSE);

beginShape();
vertex (2, 282);
vertex (22, 227);
vertex (2, 270);
endShape(CLOSE);
beginShape();
vertex (2, 256);
vertex (25, 202);
vertex (2, 212);
endShape(CLOSE);

beginShape();
vertex (2, 230);
vertex (24, 174);
vertex (2, 210);
endShape(CLOSE);

beginShape();
vertex (2, 200);
vertex (18, 157);
vertex (2, 190);
endShape(CLOSE);

beginShape();
vertex (2, 182);
vertex (9, 152);
vertex (2, 173);
endShape(CLOSE);

fill (113, 13, 8);

beginShape();
vertex (170, 87);
vertex (130, 92  );
vertex (123, 102 );
vertex (124, 127);
endShape(CLOSE);

beginShape(); // CUERPO 

vertex(105, 157);
vertex(133, 353);
vertex(275, 340);
vertex(314, 318);
vertex(321, 283);
vertex(282, 221);
vertex(210, 127);
vertex(206, 90);
vertex(194, 81);
vertex(177, 78);
vertex(164, 88);
vertex(155, 101);
vertex(111, 131);
vertex(99, 131);
vertex(102, 146);
vertex(99, 157);
vertex(104, 162);
vertex(166, 160);
endShape(CLOSE);

line (183,256, 184, 273);
line (184, 273, 190, 261);
line (201, 262, 202, 289);
line (202, 289, 212, 268);
line (215, 270, 218, 285);
line (226, 291, 230, 305);
line (230, 270, 236, 284);
line (244, 277, 243, 292);
line (255, 304, 262, 312);
line (245, 302, 257, 313);
line (172, 272, 165, 286);
line(165, 286, 164, 272);
line (164, 272, 156, 285);

fill (183, 115, 46);
beginShape();    // ESPALDA 
vertex (207, 115);
vertex (245, 101);
vertex (212, 131);
endShape(CLOSE);

beginShape();
vertex (212, 131);
vertex (254, 114);
vertex (222, 144);
endShape(CLOSE);
beginShape();
vertex (222, 144);
vertex (257, 128);
vertex (230, 155);
endShape(CLOSE);     // ESPALDA 
beginShape();
vertex (230, 155);
vertex (259, 140);
vertex (235, 165);
endShape(CLOSE);
beginShape();
vertex (235, 165);
vertex (260, 153);
vertex (243, 168);
endShape(CLOSE);
beginShape();
vertex (243, 168);
vertex (266, 153);
vertex (249, 180);
endShape(CLOSE);
beginShape();
vertex (249, 180);
vertex (275, 176);    // ESPALDA 
vertex (262, 193);
endShape(CLOSE);
beginShape();
vertex (262, 193);
vertex (281, 184);
vertex (263, 203);
endShape(CLOSE);
beginShape();
vertex (262, 203);
vertex (286, 202);
vertex (279, 221);
endShape(CLOSE);

fill (180, 175, 133);       //OJOS BLANCOS
ellipse (179,110, 34, 25);

fill (1);         //OJOS NEGROS
ellipse (179, 110, 15, 15);
ellipse (127, 138, 5, 5);

fill (1);
beginShape();
vertex (108, 170);
vertex (211, 191);
vertex (180, 200);
endShape(CLOSE);
line (211,191, 201, 145);
ellipse (103, 136, 3, 3);
}
