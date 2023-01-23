Boolean LoopOn = false, PlayContinue = true;
//
void keyBinds() { // The song selection is broken, make only one play at a time with a requirement involved such as SongPlay
  if ( key == 'm' || key == 'M' ) { 
    if ( Song[CurrentSong].isMuted() ) {
      Song[CurrentSong].unmute();
      println("PlayBack is No Longer Muted");
    } else {
      Song[CurrentSong].mute();
      println("PlayBack is Muted");
    }
  }
  if ( key == CODED ) {
    if ( keyCode == DOWN ) {
      if ( v <= 25 && v > -25 ) {
        v = v - 1;
      }
      if ( v == -25 ) {
        Song[CurrentSong].mute();
      }
    }
  } //Volume Down
  if ( key == CODED ) { 
    if ( keyCode == UP ) {
      if ( v < 25 && v >= -25 ) {
        v = v + 1;
      }
      if ( v > -25 ) {
        Song[CurrentSong].unmute();
      }
    }
  } //Volume Up
  if ( key == CODED ) {
    if ( keyCode == LEFT ) {
      if ( Song[CurrentSong].isPlaying() ) {
        Song[CurrentSong].pause();
        Song[CurrentSong].rewind();
        //arrayErrorFix();
        if ( CurrentSong == SongNumber - SongNumber ) {
          CurrentSong = SongNumber - 1;
        } else {
          CurrentSong -= 1;
        }
        Song[CurrentSong].play();
      } else {
        Song[CurrentSong].rewind();
        if ( CurrentSong == SongNumber - SongNumber ) {
          CurrentSong = SongNumber - 1;
          //arrayErrorFix();
        } else {
          CurrentSong -= 1;
        }
      }
    }
  } //Back/Return
  //
  if ( key == CODED ) { 
    if ( keyCode == RIGHT ) {
      if ( Song[CurrentSong].isPlaying() ) {
        Song[CurrentSong].pause();
        Song[CurrentSong].rewind();
        //arrayErrorFix();
        if ( CurrentSong == SongNumber - 1 ) {
          CurrentSong = SongNumber - SongNumber;
        } else {
          CurrentSong += 1;
        }
        Song[CurrentSong].play();
      } else {
        Song[CurrentSong].rewind();
        if ( CurrentSong == SongNumber - 1 ) {
          CurrentSong = SongNumber - SongNumber;
          //arrayErrorFix();
          Song[CurrentSong].play();
        } else {
          CurrentSong += 1;
          Song[CurrentSong].play();
          //
          /*if ( Song[CurrentSong].isPlaying() ) {
           Song[CurrentSong].pause();
           Song[CurrentSong].rewind();
           //arrayErrorFix();
           CurrentSong = SongNumber + 1;
           Song[CurrentSong].play();
           } else if ( CurrentSong == SongNumber ) {
           CurrentSong = SongNumber - SongNumber;
           } else {
           CurrentSong = SongNumber + 1;
           } */
        }
      }
    }
  } //Next Song
  //
  if ( key == ' ' ) { 
    if ( CurrentSong > SongNumber - SongNumber ) {
      if ( Song[CurrentSong].isPlaying() ) { 
        Song[CurrentSong].pause();
      } else { 
        Song[CurrentSong].play();
      }
    }
  } //Play/Pause
  //
  if ( key == 'l' || key == 'L' ) {
    if ( LoopOn == false ) {
      println( "Loop is Turned On" );
      LoopOn = true;
    } else {
      println( "Loop is Turned Off" );
      LoopOn = false;
    }
  }
  //
  if ( key == 's' || key == 'S' ) {
    if ( PlayContinue == false ) {
      println( "Song Stop is Disabled" );
      PlayContinue = true;
    } else {
      println( "Song Stop is Enabled" );
      PlayContinue = false;
    }
  } //Decides whether when a song ends should it continue or go back to Song 0
  //
  if ( key == 'f' || key == 'F' ) { 
    Song[CurrentSong].skip( 5000 );
  }
  if ( key == 'r' || key == 'R' ) { 
    Song[CurrentSong].skip( -5000 );
  }
  if ( key=='b' || key=='B' ) { //Stop Button
    if ( Song[CurrentSong].isPlaying() ) {
      Song[CurrentSong].pause();
      Song[CurrentSong].rewind();
    } else {
      Song[CurrentSong].rewind();
    }
  }//End Stop Button
} //End keyBinds

/* To do List: 
 - Fix ArrayFixError [x] ***
 - Debug [ ] **
 - Add any missing features if not already added (Such as mute) [ ] 
 */

// Deprecated Code (Old)
//if (  ) { ; }
//
/*if ( key == '1' ) { 
 Song1.play() && SongPlay = true;
 }
 if () {
 ;
 }
 if () {
 ;
 }
 if ( Song1.position() >= Song1.length() ) {
 SongPlay = false;
 }
 if ( Song2.position() >= Song2.length() ) {
 SongPlay = false;
 }
 if ( Song3.position() >= Song3.length() ) { 
 SongPlay = false;
 }
 if ( key == CODED || keyCode == TAB ) { 
 if ( SongMute = false ) {
 Song1.mute(); 
 Song2.mute(); 
 Song3.mute();
 SongMute = true;
 } 
 if ( SongMute = true ) {
 Song1.unmute(); 
 Song2.unmute(); 
 Song3.unmute();
 SongMute = false;
 }
 }
 if ( key == ' ' && Song1.isPlaying() ) {
 Song1.pause();
 } else {
 Song1.play();
 }
 if ( key == 'l' || key == 'L' && Song1.isPlaying() ) { 
 if ( Song1.position() >= Song1.length() ) {
 Song1.loop(0);
 }
 }
 if ( key == ' ' && Song2.isPlaying() ) {
 Song2.pause();
 } else {
 Song2.play();
 }
 if ( key == 'l' || key == 'L' && Song2.isPlaying() ) {
 if ( Song2.position() >= Song2.length() ) {
 Song2.loop(0);
 }
 }
 if ( key == ' ' && Song3.isPlaying() ) {
 Song3.pause();
 } else {
 Song3.play();
 }
 if ( key == 'l' || key == 'L' && Song3.isPlaying() ) {
 if ( Song3.position() >= Song3.length() ) {
 Song3.loop(0);
 }
 }
 if ( key == CODED || CODED == ESC ) {
 exit();
 }
 if ( key == CODED || CODED == DELETE ) {
 exit();
 }
 */
