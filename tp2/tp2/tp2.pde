//"Slipknot"

int estado = 0; 
int frameInicioPantalla = 0; 
int duracionPantallaFrames = 420; // 7 segundos

float posXTexto = 50;
float posYTexto = 370;

PImage imgMenu, imgUno, imgDos, imgTres, imgCuatro, imgfinal; 
PFont MicrosoftTaiLe;

void setup() {
  size(640, 480); 
  
  //imagenes
  imgMenu = loadImage("imagen1.jpg"); 
  imgUno = loadImage("imagen2.jpg");
  imgDos = loadImage("imagen3.jpg");
  imgTres = loadImage("imagen4.jpg");
  imgCuatro = loadImage("imagen5.jpg");
  imgfinal = loadImage("imagenfinal.jpg");
  MicrosoftTaiLe = loadFont ("MicrosoftTaiLe-Bold-15.vlw");
  textFont(MicrosoftTaiLe, 13); 

}

void draw() {
  background(0); 
  
  if (estado >= 1 && estado <= 4) { 
    if (frameCount - frameInicioPantalla > duracionPantallaFrames) { 
      estado = estado + 1;
      frameInicioPantalla = frameCount; 
      reiniciarPosicionTexto(); 
    }
  }

  if (estado == 0) {
    image(imgMenu, 0, 0, width, height); 
    dibujarBoton(220, 380, 200, 50);
  } 
  else if (estado == 1) { 
    image(imgUno, 0, 0, width, height); 
    dibujarCajaFondo(245, 238, 220); 
    
    if (posXTexto < 50) {
      posXTexto = posXTexto + 5;
    }
    fill(0); 
    textAlign(LEFT); 
    text("Slipknot comenzó en 1995 en Des Moines, Iowa,\nfundada por Joey Jordison, Paul Gray y Shawn Crahan.\nOriginalmente se llamaban The Pale Ones, luego Slipknot.", posXTexto, posYTexto);
  } 
  else if (estado == 2) {
    image(imgDos, 0, 0, width, height);
    dibujarCajaFondo(163, 196, 219); 
    
    if (posXTexto > 50) {
      posXTexto = posXTexto - 5;
    }
    fill(255); 
    textAlign(LEFT);
    text("Slipknot participó en el Ozzfest, donde su show fue un gran éxito.\nPoco después lanzaron su álbum debut,\nque fue muy bien recibido y los llevó a la fama.", posXTexto, posYTexto);
  } 
  else if (estado == 3) {
    image(imgTres, 0, 0, width, height);
    dibujarCajaFondo(110, 13, 13); 
    
    if (posYTexto < 370) {
      posYTexto = posYTexto + 3;
    }
    fill(255);
    textAlign(LEFT);
    text("En 2010 lanzan All Hope Is Gone, pero la muerte de Paul Gray\nmarca un duro golpe. Años después, Joey Jordison deja la banda.\nEn 2014 regresan con .5: The Gray Chapter, en su homenaje.", posXTexto, posYTexto);
  } 
  else if (estado == 4) {
    image(imgCuatro, 0, 0, width, height);
    dibujarCajaFondo(34, 76, 56); 
    
   
    if (posYTexto > 370) {
      posYTexto = posYTexto - 3;
    }
    fill(255);
    textAlign(LEFT);
    text("Hoy Slipknot sigue activo y como una banda clave del metal,\ncon cambios en su formación y nuevos lanzamientos.\nContinúan de gira y manteniendo una fuerte conexión con sus fans.", posXTexto, posYTexto);
  } 
  else { 

    image(imgfinal, 0, 0, width, height); 
    
    dibujarBoton(220, 320, 200, 50);
  }
}

void dibujarCajaFondo(float fR, float fG, float fB) {
  noStroke(); 
  fill(fR, fG, fB, 200); 
  rect(30, 350, 580, 50); 
}

void reiniciarPosicionTexto() {
  if (estado == 1) {
    posXTexto = -550; // Inicia fuera a la izquierda
    posYTexto = 370;
  } 
  else if (estado == 2) {
    posXTexto = 700;  // Inicia fuera a la derecha
    posYTexto = 370;
  } 
  else if (estado == 3) {
    posXTexto = 50;
    posYTexto = 240;  // Inicia arriba de la caja
  } 
  else if (estado == 4) {
    posXTexto = 50;
    posYTexto = 490;  // Inicia abajo del canvas
  }
}


void dibujarBoton(float x, float y, float w, float h) {
  stroke(255); 
  
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) { 
    fill(90, 90, 90, 230); 
  } else {
    fill(40, 40, 40, 220); 
  }
  
  rect(x, y, w, h); 
  
  fill(255); 
  textAlign(CENTER); 
  
  
  if (estado == 0) {
    text("COMENZAR", x + w/2, y + h/2 + 5);
  } 
  else if (estado == 5) {
    text("REINICIAR", x + w/2, y + h/2 + 5);
  }
}

void mousePressed() { 
  if (mousePressed == true) { 
    
    // Clic en boton "COMENZAR" (Pantalla 0)
    if (estado == 0 && mouseX > 220 && mouseX < 420 && mouseY > 380 && mouseY < 430) { 
      estado = 1;
      frameInicioPantalla = frameCount; 
      reiniciarPosicionTexto(); 
    }
    
    // Clic en boton "REINICIAR" (Pantalla 5)
    if (estado == 5 && mouseX > 220 && mouseX < 420 && mouseY > 320 && mouseY < 370) {
      estado = 0; 
    }
    
  }
}
