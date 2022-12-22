void keyBinds() {
  if ( Song1.position() >= Song1.length() ) {
    SongPlay = false;
  }
  if ( Song2.position() >= Song2.length() ) {
    SongPlay = false;
  }
  if ( Song3.position() >= Song3.length() ) { 
    SongPlay = false;
  }
  if ( key == '1' && SongPlay == false ) {
    Song1.play(); //Parameter is milli-seconds from start of audio file to start playing
    SongPlay = true;
  }
  if ( key == '1' && key == '+' ) {
    Song1.loop(0);
    SongPlay = true;
  }
  if ( key == '2' && SongPlay == false ) {
    Song2.play();
    SongPlay = true;
  }
  if ( key == '2' && key == '+' ) {
    Song2.loop(0);
    SongPlay = true;
  }
  if ( key == '3' && SongPlay == false ) {
    Song3.play();
    SongPlay = true;
  }
  if ( key == '3' && key == '+' ) {
    Song3.loop(0);
    SongPlay = true;
  }
  if ( key == CODED | keyCode == TAB ) { 
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
  } //Next lines of code need fixing, do it!
  if ( key == ' ' && Song1.isPlaying() ) {
    Song1.pause();
  } else {
    Song1.play();
  }
  if ( key = ' ' ) {
    if ( Song2.isPlaying() ) {
      Song2.pause();
    } else {
      Song2.play();
    }
  }
  if ( key = ' ' && Song3.isPlaying() ) {
    Song3.pause();
  } else {
    Song3.play();
  }
  if ( key == CODED | CODED == ESC ) {
    exit();
  }
  if ( key == CODED | CODED == DELETE ) {
    exit();
  }
} //End keyBinds
