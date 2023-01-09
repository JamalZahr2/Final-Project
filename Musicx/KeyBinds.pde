void keyBinds() { // The song selection is broken, make only one play at a time with a requirement involved such as SongPlay
  if ( key == '1' ) { Song1.play() && SongPlay = true;}
  if () {;}
  if () {;}
  if ( Song1.position() >= Song1.length() ) {
    SongPlay = false;
  }
  if ( Song2.position() >= Song2.length() ) {
    SongPlay = false;
  }
  if ( Song3.position() >= Song3.length() ) { 
    SongPlay = false;
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
  if ( key == CODED | CODED == ESC ) {
    exit();
  }
  if ( key == CODED | CODED == DELETE ) {
    exit();
  }
} //End keyBinds
