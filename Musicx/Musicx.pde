import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
Minim minim; //Creates and object to access all functions
AudioPlayer Song1; //Creates a "Play List" variable holding extensions WAV, AIFF, AU, SND, OBB, MP3
AudioPlayer Song2;
AudioPlayer Song3;
//
Boolean SongPlay = false;
//float Song1End, Song2End, Song3End
//
void setup() {
  size(480, 660);
  minim = new Minim(this); //Loading data from directory, loadFile should also load from prohect folder, like loadImage 
  Song1 = minim.loadFile("../Musicxs/SneakySnitch.mp3");
  Song2 = minim.loadFile("../Musicxs/At_the_Speed_of_Light.mp3");
  Song3 = minim.loadFile("../Musicxs/A_Dance_of_Fire_and_Ice.mp3");
  //Song1End = Song1.play();
  //Song2End = Song2.play();
  //Song3End = Song3.play(117000);
} //End setup
//
void draw() {
} //End draw
//
void keyPressed() {
  keyBinds();
} //End keyPressed
//
void mousePressed() {
  keyBinds();
} //End mousePressed
