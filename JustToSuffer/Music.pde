Boolean play=false;
//
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
  //fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(titleFont, 30); //Change the number until it fits, largest font size
  text(songMetaData[currentSong].title(), width*1/4, height*0, width*1/2, height*1/10);
  fill(255); //Reset to white for rest of the program
}//End musicDraw
//
void musicKeyPressed() {
  if ( key=='1' || key=='9') {
    //Note: "9" is assumed as massive. "Simulate Infinite"
    if ( key == '1' ) println("Looping 1 time"); // Simulating Once
    if ( key == '9' ) println("Looping 9 times"); //Simulating Infinity
    String keystr = String.valueOf(key);
    println("Number of Repeats is", keystr);
    int num = int(keystr);
    song[currentSong].loop(num);
  }//End LOOP
  if ( key=='l' || key=='L' ) song[currentSong].loop(); //No parameter means "infinite loops"
  //
  if ( key>='2' && key!='9' ) println("I do not loop that high. Try again.");
  //
  /*
  //Only press a number for the code below
   String keyStr = String.valueOf(key);
   println("Number of Repeats is", keyStr);
   int num = int(keyStr);
   song1.loop(num);
   */
  //
  //Alternate Play/Pause Button
  if ( key=='p' || key=='P' ) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() >= song[currentSong].length()-song[currentSong].length()*1/5 ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }//End Play/Pause Button
  //
  //Forward and Reverse Button
  //Built-in question: .isPlaying();
  if ( key=='f' || key=='F' ) song[currentSong].skip(1000); //skip forward 1 second (1000 milliseconds)
  if ( key=='r' || key=='R' ) song[currentSong].skip(-1000); //skip backward, or reverse, 1 second (1000 milliseconds)
  //
  /* Previous Play Button and Loop Button
   int loopNum = 2; //Local Variables plays once and loops twice
   //song1.play(); //Parameter is milli-seconds from start of audio file to start fo playing
   if ( key=='l' || key=='L' ) song1.loop(loopNum);
   */
  //
  if ( key=='m' || key=='M' ) { //Mute Buttin
    if ( song[currentSong].isMuted() ) {
      song[currentSong].unmute();
    } else {
      song[currentSong].mute();
    }
  } //End MUTE
  //
  //STOP Button
  if ( key=='s' || key=='S' ) { //STOP Button
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      //
    } else {
      song[currentSong].rewind();
    }
  } //End STOP Button
  //
  if ( key=='n' || key=='N' ) {
    if ( song[currentSong].isPlaying() ) {
      //Serious Problem: playing multiple songs at the same time
      //Built-in Pause feature or STOP feature
      song[currentSong].pause();
      song[currentSong].rewind();
      nextButtonArrayCatch();
      song[currentSong].play();
    } else {
      song[currentSong].rewind(); //Built-in rewind feature so all songs start at zero
      nextButtonArrayCatch();
      //Error if >3/Called a catch/CATCH ArrayIndexOutOfBoundsException: Error if currentSong>3
      song[currentSong].play();
    }
  } //End Next Button
  //
  //Previous Button
  if ( key=='b' || key=='B' ) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      backButtonArrayCatch();
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      backButtonArrayCatch();
      song[currentSong].play();
    }
  }//End Previous Button
}//End musicKeyPressed
