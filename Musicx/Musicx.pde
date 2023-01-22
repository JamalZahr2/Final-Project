import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
import java.io.*;
import java.lang.*; //Imports java language 
//
File file;
//
Minim minim; //Creates and object to access all functions
int SongNumber = 4;
AudioPlayer[] Song = new AudioPlayer[SongNumber];
int CurrentSong = SongNumber - SongNumber;
/*
Boolean SongPlay = false;
 float Song1End, Song2End, Song3End;
 Boolean SongMute = false;
 */
//
void setup() {
  size(480, 660);
  population();
  Volume();
  playListArrayError();
  //Go here for more specification: https://github.com/Intro-CS-App-Dev-and-Deploy/App-Development/blob/main/Music%20Program/Prototyping%20Minim/Mutliple%20Songs%20with%20Arrays/03%20Next%20Previous%20Buttons/NextConsole/NextConsole.pde
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
