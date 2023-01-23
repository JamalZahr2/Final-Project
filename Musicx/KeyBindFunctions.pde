void KeyBindFunction() {
  if ( Song[CurrentSong].position() >= Song[CurrentSong].length() ) {
    if ( LoopOn == true && Song[CurrentSong].isPlaying() ) {
      Song[CurrentSong].pause();
      Song[CurrentSong].rewind();
      Song[CurrentSong].play();
    } else {
      Song[CurrentSong].rewind();
      Song[CurrentSong].play();
    }
  }
  if ( Song[CurrentSong].position() >= Song[CurrentSong].length() ) {
    Song[CurrentSong].pause();
    Song[CurrentSong].rewind();
    if ( PlayContinue == true && LoopOn == false ) {
      if ( CurrentSong == SongNumber - 1 ) {
        CurrentSong = SongNumber - SongNumber;
        println("You Have Reached The End of The PlayList");
      } else {
        CurrentSong += 1;
      }
      Song[CurrentSong].play();
    } else {
      CurrentSong = SongNumber - SongNumber;
    } //When song ends go back to Song 0 if Loop or PlayContinue is off
    Song[CurrentSong].play();
  }
} //End KeyBindFunctions
