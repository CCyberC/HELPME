void musicSetup() {
  minim = new Minim(this); //loads from data directory, loadFile should also laod from project folder, like loadImage()
  //
  song[currentSong] = minim.loadFile("DownLoaded/Stairway - Patrick Patrikios.mp3"); //albe to pass absulute path, file name & extension, and URL
  song[currentSong+=1] = minim.loadFile("DownLoaded/The Empty Moons of Jupiter - DivKid.mp3");
  song[currentSong+=1] = minim.loadFile("DownLoaded/Away - Patrick Patrikios.mp3");
  song[currentSong+=1] = minim.loadFile("DownLoaded/Take it Slow - SefChol.mp3");
  song[currentSong+=1] = minim.loadFile("DownLoaded/Positive Fuse - French Fuse.mp3");
  song[currentSong+=1] = minim.loadFile("DownLoaded/Target Fuse - French Fuse.mp3"); 
  //array is always one less, that's why there is no 6, thye count from 0
  //
  currentSong-=currentSong; //currentSong = currentSong - currentSong
  for ( int i=currentSong; i<song.length; i++ ) { //i+=1, i=i+1, i++
    songMetaData[i] = song[i].getMetaData();
  }//End Meta Data
  //
  titleFont = createFont ("Century", 55);
  //
  println("Start of Console");
  println("Click the console to Finish Starting this Program"); // See previous lesson for OS-level Button
  println("Title:", songMetaData[currentSong].title() );
}//End musicSetup
//
void musicDraw() {
  if ( song[currentSong].isLooping() ) println("There are", song[currentSong].loopCount(), "loops left.");
  if ( song[currentSong].isPlaying() && !song[currentSong].isLooping() ) println("Play Once");
  //
  println("Computer Number of Current Song:", currentSong);
  println( "Song Position", song[currentSong].position(), "Song Length", song[currentSong].length() );
  //
  background (black);
  rect(width*1/4, height*0, width*1/2, height*1/10);
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(titleFont, 30); //Change the number until it fits, largest font size
  text(songMetaData[currentSong].title(), width*1/4, height*0, width*1/2, height*1/10);
  fill(255); //Reset to white for rest of the program
}//End musicDraw
//
void 
