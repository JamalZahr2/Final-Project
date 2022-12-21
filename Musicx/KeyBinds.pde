void keyBinds() {
  if ( key == CODED | CODED == ESC ) {
    exit();
  }
  if ( key == CODED | CODED == DELETE ) {
    exit();
  }
  if ( key == '1' ) {
    Song1.play(); //Parameter is milli-seconds from start of audio file to start playing
  }
  if ( key == '1' && key == '+' ) {
    Song1.loop(0);
  }
  if ( key == '2' ) {
    Song2.play();
  }
  if ( key == '2' && key == '+' ) {
    Song2.loop(0);
  }
  if ( key == '3' ) {
    Song3.play();
  }
  if ( key == '3' && key == '+' ) {
    Song3.loop(0);
  }
} //End keyBinds
