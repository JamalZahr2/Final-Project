//AudioPlayer setup; 
//
void population() {
  minim = new Minim(this);
  v = 0;
  //
  //setup = Song[CurrentSong += 1]; //To have the value auto assign to an array
  //
  Song[CurrentSong] = minim.loadFile("../Musicxs/2-seconds-of-silence.mp3");
  Song[CurrentSong += 1] = minim.loadFile("../Musicxs/SneakySnitch.mp3");
  Song[CurrentSong += 1] = minim.loadFile("../Musicxs/At_the_Speed_of_Light.mp3");
  Song[CurrentSong += 1] = minim.loadFile("../Musicxs/A_Dance_of_Fire_and_Ice.mp3");
  CurrentSong -= CurrentSong;
  //
  //File path = new File("..\\..\\..\\..\\Musicxs");
  //file = new File(dataPath("../../../../Musicxs/.mp3"));
  //String Absolute = Path.getPath();
  String Path = new File("").getAbsolutePath();
  Path.concat("Path to the Folder");
  System.out.println(Path);
  //this.getClass().getClassLoader().getResource("..\\Final-Project\\Musicxs");
  File folder = new File("D:/Documents/GitHub/Final-Project/Musicxs" /*Absolute*/  );
  //System.out.println(Path.getPath());
  //System.out.println(Absolute);
  /* 
  List<String> music = new ArrayList<String>();
  String[] list = new String[ music.size() ];
  music.toArray(list);
  */
  // Many attempts at absolute pathways: 
  // Issue was it loading the Processing folder instead of Documents where GitHub stores repositories 
  // Ended up with no time to debug said issue (Spent most time on the auto-assign array)
  //
  File directory = new File("D:\\Documents\\GitHub\\Final-Project\\Musicxs");
  System.out.println(directory.getAbsolutePath());
  File[] FileList = folder.listFiles();
  for (File file : FileList) {
    if (file.isFile()) {
      if (file.toString().endsWith(".mp3")) {
        System.out.println(file.getName().toLowerCase()); //Lists Files In Music Folder ending in ".mp3"
      }
    }
  }
  //println(""); //Debug and Song List via java
  printArray(FileList); //Had no time to finish/optimize, using processing language
  //AudioPlayer[] array = { Song[CurrentSong +- 1] };
} //End population

//Deprecated Code (Old) / Attempts:
/*String Name = file.getPath();
 printArray(Name);
 File NameList = new File(dataPath("../../../../Musicxs/"));
 String[] FileName = NameList.list(new FilenameFilter() {
 @Override
 public boolean accept(File NameList, String name) {
 return name.endsWith(".mp3");
 }
 });
 printArray(NameList);
 printArray(FileName);
 //println("the directory contains "+listPath.length+" elements.");
 //println(listPath);
 */
//Ideas:
//folder.listFiles().filter { file -> file.endsWith(".mp3") }.size //Code to try getting the file list and save with .json file and load with .json to get song list automatically 
//isDirectory();
/*
  File folder = File("../Musicxs/");
 folder.listFiles().size
 File.list(Paths.get("../Musicxs/")).count(3);
 */
//array.toString().fill(file, );
/* Arrays.fill(file, array[]); */
/*
  FileList[i].setAll(file, setup);
 file.fill(FileList[i], setup);
 append(FileList, Song[CurrentSong += 1]);
 */
