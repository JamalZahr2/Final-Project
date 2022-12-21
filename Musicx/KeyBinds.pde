void keyBinds() {
  if ( key == CODED | CODED == ESC ) {
    exit();
  }
  if ( key == CODED | CODED == DELETE ) {
    exit();
  }
  //if ( Song3.play(117000) ) { SongPlay = false; }
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
} //End keyBinds
