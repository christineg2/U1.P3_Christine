PImage heart;
int heartYs = 400;
int heartXs = 400;

PImage doctor;
int doctorY = 300;
int doctorX = 500;

int [] Xs = new int [40];
int [] Ys = new int [40];

int [] Speeds = new int [40];

import ddf.minim.*;
Minim minim;
AudioPlayer doctordoctor;


void setup ()

{

  size (800, 800);
  
  
   minim = new Minim(this);
     doctordoctor = minim.loadFile("doctordoctor.mp3");
     doctordoctor.play ();
     
   
  
  
  
  
  for(int i = 0; i < 5; i++)  
  {
    Xs [i] = 100 * (i + 1);
    Ys [i] = 100 * (i + 1);
  }
  
  int i = 0;
  while (i < 40)
  {
     Speeds [i] = (int)random (1,3);
     i = i + 1;
  }
  
  heart = loadImage ("heart.png");
  heart.resize (48, 48);
  doctor = loadImage ("doctor.png");
  doctor.resize (100,200);
   
   
  
}

void draw ()

{
  background (70,139,247);
  
  image (doctor, doctorX, doctorY);
  
  int i = 0;
  
  while (i < 40)
  {

    image (heart, Xs[i], Ys[i]);
    image (heart, i*150, 0);
    image (heart, 0, i*150);
    image (heart, 750, i*150);
    image (heart, i*150, 748);

    
    heartYs= heartYs + 2;
    Ys [i] = Ys [i] + Speeds [i];

    if (Ys [i]>800)
    {
      Ys[i]=0;
    }
    
    if(Ys [i] - doctorY > 0)
    {
     if(Xs [i] - doctorX >  0)
     {
 
        Ys = new int [40];
     }
   }
   
  
      i=i+1;
  }
  
}


void keyPressed ()

{
  if (key=='d')
  {
    doctorX= doctorX+10;
  }
  if (key=='a')
  
  {
    doctorX = doctorX -10;
  }
  
  if (key == 's')
  
  {
    doctorY = doctorY +10;
  }
  
  if (key=='w')
  
  {
    doctorY= doctorY-10;
  }
  
 
  
}
