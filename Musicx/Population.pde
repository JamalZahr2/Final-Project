void population() {
  minim = new Minim(this); //Loading data from directory, loadFile should also load from prohect folder, like loadImage
  Song0 = minim.loadFile("");
  Song1 = minim.loadFile("../Musicxs/SneakySnitch.mp3");
  Song2 = minim.loadFile("../Musicxs/At_the_Speed_of_Light.mp3");
  Song3 = minim.loadFile("../Musicxs/A_Dance_of_Fire_and_Ice.mp3");
}
