void population() {
  minim = new Minim(this); //Loading data from directory, loadFile should also load from prohect folder, like loadImage
  v = v + 5;
  Song[CurrentSong] = minim.loadFile("../Musicxs/2-seconds-of-silence.mp3");
  Song[CurrentSong += 1] = minim.loadFile("../Musicxs/SneakySnitch.mp3");
  Song[CurrentSong += 1] = minim.loadFile("../Musicxs/At_the_Speed_of_Light.mp3");
  Song[CurrentSong += 1] = minim.loadFile("../Musicxs/A_Dance_of_Fire_and_Ice.mp3");
  //folder.listFiles().filter { file -> file.endsWith(".mp3") }.size //Code to try getting the file list and save with .json file and load with .json to get song list automatically 
  //isDirectory();
  /*
  File folder = File("../Musicxs/");
  folder.listFiles().size
  File.list(Paths.get("../Musicxs/")).count(3);
  */
} //End population
