import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
Minim minim; //Creates and object to access all functions
AudioPlayer Song0;
AudioPlayer Song1; //Creates a "Play List" variable holding extensions WAV, AIFF, AU, SND, OBB, MP3
AudioPlayer Song2;
AudioPlayer Song3;
/*AudioPlayer SongNo1;
AudioPlayer SongNo2;
AudioPlayer SongNo3;
AudioPlayer SongNo4;
*///Deprecated for further use
//
Boolean SongPlay = false;
float Song1End, Song2End, Song3End;
Boolean SongMute = false;
//
void setup() {
  size(480, 660);
  population();
  Array();
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
