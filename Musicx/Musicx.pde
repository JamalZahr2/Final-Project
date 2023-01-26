import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
import java.io.*;
import java.lang.*; //Imports java language 
import java.util.*;
import java.util.Arrays;
//
File file;
//
Minim minim; //Creates and object to access all functions
int SongNumber = 4;
AudioPlayer[] Song = new AudioPlayer[SongNumber];
int CurrentSong = SongNumber - SongNumber;
//int i = 0; //Was eventually going to be used at some point
//
void setup() {
  size(480, 660);
  population();
} //End setup
//
void draw() {
} //End draw
//
void keyPressed() {
  keyBinds();
  Volume(); 
} //End keyPressed
//
void mousePressed() {
  keyBinds();
  Volume();
} //End mousePressed
