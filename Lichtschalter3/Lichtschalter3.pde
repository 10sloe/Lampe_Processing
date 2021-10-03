PImage imgAn;    // Variable, in der das An-Bild gespeichert wird
PImage imgAus;   // Variable, in der das Aus-Bild gespeichert wird

boolean lichtIstAn;


void setup()
{
  size(300,400);
  background(0);
  imgAn = loadImage("lampeAn.png");  // Das Bild "lampeAn.png" wird geladen
  imgAus = loadImage("lampeAus.png"); // Das Bild "lampeAus.png" wird geladen
  textSize(20);
  lichtIstAn = false;
}

void draw()
{
  if(lichtIstAn) {
  image(imgAn,100,70,100,150); // imgAus wird  angezeigt
  }
  else
  {
    image(imgAus,100,70,100,150); // imgAus wird angezeigt
  }
  if(zeigerUeberSchalter())
  {
    fill(144,216,126,100);
    rect(50,300,200,50);
    fill(255);
    text("Schalter",110,330);
    
  }
  else
  {
    fill(255);
    rect(50,300,200,50);
    fill(0);
    text("Schalter",110,330);
  }
  
  
  
}

void mousePressed() {
  if (mouseX > 50 && mouseX < 250 && mouseY > 300 && mouseY < 350)
  {
    lichtIstAn = !lichtIstAn;
  }
}



boolean zeigerUeberSchalter(){
  if(mouseX > 50 && mouseX < 250 && mouseY > 300 && mouseY < 350)
  {
    return true;
  }
  else
  {
    return false;
  }
}
