void KeyBindFunction() {
  if ( CurrentSong > SongNumber - SongNumber ) {
    if ( Song[CurrentSong].position() >= Song[CurrentSong].length() ) {
      Song[CurrentSong].pause();
      Song[CurrentSong].rewind();
      //arrayErrorFix();
      if ( LoopOn == true ) {
        Song[CurrentSong].play();
        //Song[CurrentSong].loop();
      } 
      if ( PlayContinue == true ) {
        if ( CurrentSong == SongNumber - 1 ) {
          CurrentSong = SongNumber - SongNumber;
          println("You Have Reached The End of The PlayList");
        } else {
          CurrentSong =+ 1;
        }
      } else {
        CurrentSong = SongNumber - SongNumber;
        println("You Have Reached The End of The PlayList");
      } //When song ends go back to Song 0 if Loop or PlayContinue is off
      Song[CurrentSong].play();
    }
  }
} //End KeyBindFunctions
