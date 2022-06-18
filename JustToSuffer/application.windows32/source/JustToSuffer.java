import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import ddf.minim.*; 
import ddf.minim.analysis.*; 
import ddf.minim.effects.*; 
import ddf.minim.signals.*; 
import ddf.minim.spi.*; 
import ddf.minim.ugens.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class JustToSuffer extends PApplet {

//Global Variables






//
Minim minim; //creates object to access all functions
int numberOfSongs = 6;
AudioPlayer[] song = new AudioPlayer[numberOfSongs]; //creates "Play List" variables holding extensions WAV, AIFF, AU, SND, & MP3
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs]; //"song1's meta data"
int currentSong = numberOfSongs - numberOfSongs;
PFont titleFont;
//
Boolean draw=false;
//
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float secondTextX, secondTextY, secondTextWidth, secondTextHeight;
float rButtonX, rButtonY, rButtonWidth, rButtonHeight;
float pagesX, pagesY, pagesWidth, pagesHeight;
float musicX, musicY, musicWidth, musicHeight;
float vUpX, vUpY, vUpWidth, vUpHeight;
float vDownX, vDownY, vDownWidth, vDownHeight;
float previousX, previousY, previousWidth, previousHeight;
float nextX, nextY, nextWidth, nextHeight;
float replayX, replayY, replayWidth, replayHeight;
float pX, pY, pWidth, pHeight;
float penX, penY, penWidth, penHeight;
float sprayX, sprayY, sprayWidth, sprayHeight;
float highlightX, highlightY, highlightWidth, highlightHeight;
float circleX, circleY, circleWidth, circleHeight;
float eraserX, eraserY, eraserWidth, eraserHeight;
float fillX, fillY, fillWidth, fillHeight;
float thinX, thinY, thinWidth, thinHeight;
float thickX, thickY, thickWidth, thickHeight;
float redX, redY, redWidth, redHeight;
float orangeX, orangeY, orangeWidth, orangeHeight;
float yellowX, yellowY, yellowWidth, yellowHeight;
float pinkX, pinkY, pinkWidth, pinkHeight;
float cyanX, cyanY, cyanWidth, cyanHeight;
float lBlueX, lBlueY, lBlueWidth, lBlueHeight;
float purpleX, purpleY, purpleWidth, purpleHeight;
float greyX, greyY, greyWidth, greyHeight;
float whiteX, whiteY, whiteWidth, whiteHeight;
float blackX, blackY, blackWidth, blackHeight;
//
int reset=1;
int white=255, resetColour=white, red=0xffFF0303, black=0;
//
int coRed=0xffE53A27, coOrange=0xffE8A944, coYellow=0xffE5E592, coPink=0xffE592DC, coCyan=0xff35FAF8, coLightBlue=0xffCEDEE5, coPurple=0xff6755A7, coGrey=0xffB2B7B9, coWhite=0xffEDF1F2, coBlack=0xff404243;
//
int coLRed=0xffF26C5F, coLOrange=0xffEBB444, coLYellow=0xffE5F092, coLPink=0xffE596DC, coLCyan=0xff35E6F8, coLLightBlue=0xffCCEEFC, coLPurple=0xff675FA7, coLGrey=0xffCCCDCE, coLWhite=0xffF0F0F0, coLBlack=0xff4A3839;
int quitButtonColour, rButtonC, pagesC, musicC, upC, downC, prevC, nexC, repC, pC, penC, sprayC, highlightC, circleC, eraserC, fillC, thinC, thickC, redC, orangeC, yellowC, pinkC, cyanC, blueC, purpleC, greyC, blackC, whiteC;
//
public void setup() {
  //Mandatory: Mistaken display orientation should break app, feedback to console and CANVAS
   //fullScreen, displayWidth, displayHeight
  population();
  textSetup();
  canvas();
  musicSetup();
  //
}//End setup
//
public void draw() {
  //
  //if ( paper==true ) pieceOfPaper();
  //
  //Drawing Tools, with a combined Boolean
  if ( draw==true && mouseX>=canvasX && mouseX<=canvasX+canvasWidth && mouseY>=canvasY && mouseY<=canvasY+canvasHeight ) line( mouseX, mouseY, pmouseX, pmouseY ) ;//End Line Draw
  if ( draw==true && mouseX>=canvasX && mouseX<=canvasX+canvasWidth && mouseY>=canvasY && mouseY<=canvasY+canvasHeight ) ellipse ( mouseX, mouseY, circleDiameter, circleDiameter ); //Circle Drawing Tool
  //
  //Quit Button Hoverover
  hoverOver();
  //
  //Second Rectangle with More Text
  fill(white); 
  rect(secondTextX, secondTextY, secondTextWidth, secondTextHeight);
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 13; //Change until fits
  textFont(font, size);
  text(secondTextString, secondTextX, secondTextY, secondTextWidth, secondTextHeight);
  //
  //musicDraw();
}//End draw
//
public void keyPressed() {
}//End keyPressed
//
public void mousePressed() {
  //Paper-Button
  if (mouseX>=ItLX && mouseX<=ItLX+ItLW && mouseY>=ItLY && mouseY<=ItLY+ItLH ) {
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }//End draw Boolean
  }//Button Paper (Drawing Surface)
  //
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) exit();
  //
  if ( mouseX>=secondTextX && mouseX<=secondTextX+secondTextWidth && mouseY>=secondTextY && mouseY<=secondTextY+secondTextHeight ) canvas();  //paper=true;
  //
  //
  musicKeyPressed();
}//End mousepressed
//
//End MAIN
//Global Variables
float canvasX, canvasY, canvasWidth, canvasHeight, circleDiameter;
Boolean canvas=false;
//
public void canvas() {
  fill(white);
  rect(canvasX, canvasY, canvasWidth, canvasHeight);
  canvas=false;
}//End pieceOfPaper
Boolean play=false;
//
public void musicSetup() {
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
public void musicDraw() {
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
public void musicKeyPressed() {
  if ( key=='1' || key=='9') {
    //Note: "9" is assumed as massive. "Simulate Infinite"
    if ( key == '1' ) println("Looping 1 time"); // Simulating Once
    if ( key == '9' ) println("Looping 9 times"); //Simulating Infinity
    String keystr = String.valueOf(key);
    println("Number of Repeats is", keystr);
    int num = PApplet.parseInt(keystr);
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
public void nextButtonArrayCatch() {
  if ( currentSong >= song.length-1 ) {
        currentSong -=currentSong;  //Beginning of Playlist
      } else {
        currentSong++; 
      } //End of CATCH
}//End nextButtonArrayCatch
//
public void backButtonArrayCatch() {
  if ( currentSong == numberOfSongs - numberOfSongs ) {
    currentSong = numberOfSongs - 1;
  } else {
    currentSong--;
  } //End of CATCH?
}//End backButtonArrayCatch
//
float ItLX, ItLY, ItLW, ItLH;
//
public void population() {
  //
  canvasX = width*6/24;
  canvasY = height*1/8;
  canvasWidth = width*18/24;
  canvasHeight = height*3/4;
  circleDiameter = width*1/100;
  //
  quitButtonX = width*0; 
  quitButtonY = height*5/8+(height*1/8);
  quitButtonWidth = width*6/24; 
  quitButtonHeight = height*1/8;
  //
  secondTextX = width*8/9;
  secondTextY = height*0;
  secondTextWidth = width*1/9;
  secondTextHeight = height*1/8;
  //
  ItLX = canvasX+(width*(12/24));
  ItLY = canvasY+(height*(1.0f/120.0f));
  ItLW = canvasWidth-(width*(1.0f/48.0f));
  ItLH = canvasHeight-(height*(1.0f/60.0f));
  //
  rButtonX = width*0;
  rButtonY = height*1/8;
  rButtonWidth = width*6/24;
  rButtonHeight = height*1/8;
  //
  pagesX = width*0;
  pagesY = height*1/8+(height*1/8);  
  pagesWidth = width*6/24; 
  pagesHeight = height*1/8;
  //
  musicX = width*0;
  musicY = height*2/8+(height*1/8);
  musicWidth = width*6/24;
  musicHeight = height*1/8;
  //
  vUpX = width*0; 
  vUpY = height*3/8+(height*1/8);
  vUpWidth = width*3/24; 
  vUpHeight = height*1/16;
  //
  vDownX = width*3/24;
  vDownY = height*3/8+(height*1/8);
  vDownWidth = width*3/24; 
  vDownHeight = height*1/16;
  //
  previousX = width*0;
  previousY = height*7/16+(height*1/8);
  previousWidth = width*3/24;
  previousHeight = height*1/16;
  //
  nextX = width*3/24;
  nextY = height*7/16+(height*1/8);
  nextWidth = width*3/24;
  nextHeight = height*1/16;
  //
  replayX = width*0;
  replayY = height*8/16+(height*1/8);
  replayWidth = width*3/24;
  replayHeight = height*1/16;
  //
  pX = width*3/24;
  pY = height*8/16+(height*1/8);
  pWidth = width*3/24;
  pHeight = height*1/16;
  //
  penX = width*0;
  penY = height*0;
  penWidth = width*1/9; 
  penHeight = height*1/8;
  //
  sprayX = width*1/9; 
  sprayY = height*0;
  sprayWidth = width*1/9;
  sprayHeight = height*1/8;
  //
  highlightX = width*2/9;
  highlightY = height*0;
  highlightWidth = width*1/9;
  highlightHeight = height*1/8;
  //
  circleX = width*3/9;
  circleY = height*0;
  circleWidth = width*1/9;
  circleHeight = height*1/8;
  //
  eraserX = width*4/9; 
  eraserY = height*0;
  eraserWidth = width*1/9;
  eraserHeight = height*1/8;
  //
  fillX = width*5/9;
  fillY = height*0;
  fillWidth = width*1/9;
  fillHeight = height*1/8;
  //
  thinX = width*6/9;
  thinY = height*0;
  thinWidth = width*1/9; 
  thinHeight = height*1/8;
  //
  thickX = width*7/9; 
  thickY = height*0;
  thickWidth = width*1/9;
  thickHeight = height*1/8;
  //
  redX = width*0;
  redY = height*7/8;
  redWidth = width*1/9;
  redHeight = height*1/8;
  //
  orangeX = width*1/9;
  orangeY = height*7/8;
  orangeWidth = width*1/9;
  orangeHeight = height*1/8;
  //
  yellowX = width*2/9; 
  yellowY = height*7/8;
  yellowWidth = width*1/9;
  yellowHeight = height*1/8;
  //
  pinkX = width*3/9;
  pinkY = height*7/8;
  pinkWidth = width*1/9;
  pinkHeight = height*1/8;
  //
  cyanX = width*4/9;
  cyanY = height*7/8;
  cyanWidth = width*1/9;
  cyanHeight = height*1/8;
  //
  lBlueX = width*5/9;
  lBlueY = height*7/8;
  lBlueWidth = width*1/9;
  lBlueHeight = height*1/8;
  //
  purpleX = width*6/9;
  purpleY = height*7/8;
  purpleWidth = width*1/9;
  purpleHeight = height*1/8;
  //
  greyX = width*7/9;
  greyY = height*7/8;
  greyWidth = width*1/9;
  greyHeight = height*1/8;
  //
  whiteX = width*8/9;
  whiteY = height*7/8;
  whiteWidth = width*1/9;
  whiteHeight = height*1/16;
  //
  blackX = width*8/9;
  blackY = height*15/16;
  blackWidth = width*1/9;
  blackHeight = height*1/16;
  //
}//End population
//Global Variables
PFont font;
int initialFontSize=55, size;
String quitButtonString = "Exit";
String secondTextString = "Reset";
String ruler = "Ruler";
String pages = "Pages";
String music = "Music";
String up = "Up";
String down = "Down";
String previous = "Previous";
String next = "Next";
String replay = "Replay";
String p = "Pause/Play";
String pen = "Pen";
String spray = "Spray";
String highl = "Highlight";
String circle = "Circle";
String eraser = "Eraser";
String fill = "Bucket";
String thin = "Thin";
String thick = "Thick";
String red2 = "Red";
String orange = "Orange";
String yellow = "Yellow";
String pink = "Pink";
String cyan = "Cyan";
String blue = "Blue";
String purple = "Purple";
String grey = "Grey";
String white2 = "White";
String black2 = "Black";
//
public void textSetup() {
  font = createFont ("Harrington", initialFontSize);
}//End textSetup
public void hoverOver() {
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) {
    quitButtonColour = red;
  } else {
    quitButtonColour = black;
  }//End Quit Button Hoverover
  fill(quitButtonColour);
  //noStroke(); //removes rect() outline
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  stroke(reset);
  fill(resetColour); //White, not night mode friendly
  //
  //Text, Quit Button
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 20; //Change until fits
  textFont(font, size);
  text(quitButtonString, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //
  if ( mouseX>=rButtonX && mouseX<=rButtonX+rButtonWidth && mouseY>=rButtonY && mouseY<=rButtonY+rButtonHeight ) {
    rButtonC = coWhite;
  } else {
    rButtonC = coLWhite;
  }
  fill(rButtonC);
  rect(rButtonX, rButtonY, rButtonWidth, rButtonHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(ruler, rButtonX, rButtonY, rButtonWidth, rButtonHeight);
  //  
  if ( mouseX>=pagesX && mouseX<=pagesX+pagesWidth && mouseY>=pagesY && mouseY<=pagesY+pagesHeight ) {
    pagesC = coWhite;
  } else {
    pagesC = coLWhite;
  }
  fill(pagesC);
  rect(pagesX, pagesY, pagesWidth, pagesHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(pages, pagesX, pagesY, pagesWidth, pagesHeight);
  //  
  if ( mouseX>=musicX && mouseX<=musicX+musicWidth && mouseY>=musicY && mouseY<=musicY+musicHeight ) {
    musicC = coWhite;
  } else {
    musicC = coLWhite;
  }
  fill(musicC);
  rect(musicX, musicY, musicWidth, musicHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(music, musicX, musicY, musicWidth, musicHeight);
  // 
  if ( mouseX>=vUpX && mouseX<=vUpX+vUpWidth && mouseY>=vUpY && mouseY<=vUpY+vUpHeight ) {
    upC = coWhite;
  } else {
    upC = coLWhite;
  }
  fill(upC);
  rect(vUpX, vUpY, vUpWidth, vUpHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(up, vUpX, vUpY, vUpWidth, vUpHeight);
  // 
  if ( mouseX>=vDownX && mouseX<=vDownX+vDownWidth && mouseY>=vDownY && mouseY<=vDownY+vDownHeight ) {
    downC = coWhite;
  } else {
    downC = coLWhite;
  }
  fill(downC);
  rect(vDownX, vDownY, vDownWidth, vDownHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(down, vDownX, vDownY, vDownWidth, vDownHeight);
  // 
  if ( mouseX>=previousX && mouseX<=previousX+previousWidth && mouseY>=previousY && mouseY<=previousY+previousHeight ) {
    prevC = coWhite;
  } else {
    prevC = coLWhite;
  }
  fill(prevC);
  rect(previousX, previousY, previousWidth, previousHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(previous, previousX, previousY, previousWidth, previousHeight);
  // 
  if ( mouseX>=nextX && mouseX<=nextX+nextWidth && mouseY>=nextY && mouseY<=nextY+nextHeight ) {
    nexC = coWhite;
  } else {
    nexC = coLWhite;
  }
  fill(nexC);
  rect(nextX, nextY, nextWidth, nextHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(next, nextX, nextY, nextWidth, nextHeight);
  // 
  if ( mouseX>=replayX && mouseX<=replayX+replayWidth && mouseY>=replayY && mouseY<=replayY+replayHeight ) {
    repC = coWhite;
  } else {
    repC = coLWhite;
  }
  fill(repC);
  rect(replayX, replayY, replayWidth, replayHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(replay, replayX, replayY, replayWidth, replayHeight);
  // 
  if ( mouseX>=pX && mouseX<=pX+pWidth && mouseY>=pY && mouseY<=pY+pHeight ) {
    pC = coWhite;
  } else {
    pC = coLWhite;
  }
  fill(pC);
  rect(pX, pY, pWidth, pHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(p, pX, pY, pWidth, pHeight);
  // 
  if ( mouseX>=penX && mouseX<=penX+penWidth && mouseY>=penY && mouseY<=penY+penHeight ) {
    penC = coWhite;
  } else {
    penC = coLWhite;
  }
  fill(penC);
  rect(penX, penY, penWidth, penHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(pen, penX, penY, penWidth, penHeight);
  //
  if ( mouseX>=sprayX && mouseX<=sprayX+sprayWidth && mouseY>=sprayY && mouseY<=sprayY+sprayHeight ) {
    sprayC = coWhite;
  } else {
    sprayC = coLWhite;
  }
  fill(sprayC);
  rect(sprayX, sprayY, sprayWidth, sprayHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(spray, sprayX, sprayY, sprayWidth, sprayHeight);
  //
  if ( mouseX>=highlightX && mouseX<=highlightX+highlightWidth && mouseY>=highlightY && mouseY<=highlightY+highlightHeight ) {
    highlightC = coWhite;
  } else {
    highlightC = coLWhite;
  }
  fill(highlightC);
  rect(highlightX, highlightY, highlightWidth, highlightHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(highl, highlightX, highlightY, highlightWidth, highlightHeight);
  //
  if ( mouseX>=circleX && mouseX<=circleX+circleWidth && mouseY>=circleY && mouseY<=circleY+circleHeight ) {
    circleC = coWhite;
  } else {
    circleC = coLWhite;
  }
  fill(circleC);
  rect(circleX, circleY, circleWidth, circleHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(circle, circleX, circleY, circleWidth, circleHeight);
  //
  if ( mouseX>=eraserX && mouseX<=eraserX+eraserWidth && mouseY>=eraserY && mouseY<=eraserY+eraserHeight ) {
    eraserC = coWhite;
  } else {
    eraserC = coLWhite;
  }
  fill(eraserC);
  rect(eraserX, eraserY, eraserWidth, eraserHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(eraser, eraserX, eraserY, eraserWidth, eraserHeight);
  //
  if ( mouseX>=fillX && mouseX<=fillX+fillWidth && mouseY>=fillY && mouseY<=fillY+fillHeight ) {
    fillC = coWhite;
  } else {
    fillC = coLWhite;
  }
  fill(fillC);
  rect(fillX, fillY, fillWidth, fillHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(fill, fillX, fillY, fillWidth, fillHeight);
  //
  if ( mouseX>=thinX && mouseX<=thinX+thinWidth && mouseY>=thinY && mouseY<=thinY+thinHeight ) {
    thinC = coWhite;
  } else {
    thinC = coLWhite;
  }
  fill(thinC);
  rect(thinX, thinY, thinWidth, thinHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(thin, thinX, thinY, thinWidth, thinHeight);
  //
  if ( mouseX>=thickX && mouseX<=thickX+thickWidth && mouseY>=thickY && mouseY<=thickY+thickHeight ) {
    thickC = coWhite;
  } else {
    thickC = coLWhite;
  }
  fill(thickC);
  rect(thickX, thickY, thickWidth, thickHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(thick, thickX, thickY, thickWidth, thickHeight);
  //
  if ( mouseX>=redX && mouseX<=redX+redWidth && mouseY>=redY && mouseY<=redY+redHeight ) {
    redC = coRed;
  } else {
    redC = coLRed;
  }
  fill(redC);
  rect(redX, redY, redWidth, redHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(red2, redX, redY, redWidth, redHeight);
  //
  if ( mouseX>=orangeX && mouseX<=orangeX+orangeWidth && mouseY>=orangeY && mouseY<=orangeY+orangeHeight ) {
    orangeC = coOrange;
  } else {
    orangeC = coLOrange;
  }
  fill(orangeC);
  rect(orangeX, orangeY, orangeWidth, orangeHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(orange, orangeX, orangeY, orangeWidth, orangeHeight);
  //
  if ( mouseX>=yellowX && mouseX<=yellowX+yellowWidth && mouseY>=yellowY && mouseY<=yellowY+yellowHeight ) {
    yellowC = coYellow;
  } else {
    yellowC = coLYellow;
  }
  fill(yellowC);
  rect(yellowX, yellowY, yellowWidth, yellowHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(yellow, yellowX, yellowY, yellowWidth, yellowHeight);
  //
  if ( mouseX>=pinkX && mouseX<=pinkX+pinkWidth && mouseY>=pinkY && mouseY<=pinkY+pinkHeight ) {
    pinkC = coPink;
  } else {
    pinkC = coLPink;
  }
  fill(pinkC);
  rect(pinkX, pinkY, pinkWidth, pinkHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(pink, pinkX, pinkY, pinkWidth, pinkHeight);
  //
  if ( mouseX>=cyanX && mouseX<=cyanX+cyanWidth && mouseY>=cyanY && mouseY<=cyanY+cyanHeight ) {
    cyanC = coCyan;
  } else {
    cyanC = coLCyan;
  }
  fill(cyanC);
  rect(cyanX, cyanY, cyanWidth, cyanHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(cyan, cyanX, cyanY, cyanWidth, cyanHeight);
  //
  if ( mouseX>=lBlueX && mouseX<=lBlueX+lBlueWidth && mouseY>=lBlueY && mouseY<=lBlueY+lBlueHeight ) {
    blueC = coLightBlue;
  } else {
    blueC = coLLightBlue;
  }
  fill(blueC);
  rect(lBlueX, lBlueY, lBlueWidth, lBlueHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(blue, lBlueX, lBlueY, lBlueWidth, lBlueHeight);
  //
  if ( mouseX>=purpleX && mouseX<=purpleX+purpleWidth && mouseY>=purpleY && mouseY<=purpleY+purpleHeight ) {
    purpleC = coPurple;
  } else {
    purpleC = coLPurple;
  }
  fill(purpleC);
  rect(purpleX, purpleY, purpleWidth, purpleHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(purple, purpleX, purpleY, purpleWidth, purpleHeight);
  //
  if ( mouseX>=greyX && mouseX<=greyX+greyWidth && mouseY>=greyY && mouseY<=greyY+greyHeight ) {
    greyC = coGrey;
  } else {
    greyC = coLGrey;
  }
  fill(greyC);
  rect(greyX, greyY, greyWidth, greyHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(grey, greyX, greyY, greyWidth, greyHeight);
  //
  if ( mouseX>=whiteX && mouseX<=whiteX+whiteWidth && mouseY>=whiteY && mouseY<=whiteY+whiteHeight ) {
    whiteC = coWhite;
  } else {
    whiteC= coLWhite;
  }
  fill(whiteC);
  rect(whiteX, whiteY, whiteWidth, whiteHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(white2, whiteX, whiteY, whiteWidth, whiteHeight);
  //
  if ( mouseX>=blackX && mouseX<=blackX+blackWidth && mouseY>=blackY && mouseY<=blackY+blackHeight ) {
    blackC= coBlack;
  } else {
    blackC= coLBlack;
  }
  fill(blackC);
  rect(blackX, blackY, blackWidth, blackHeight);
  stroke(reset);
  fill(resetColour);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(black2, blackX, blackY, blackWidth, blackHeight);
  //
}//End hoverOver
  public void settings() {  size(2500, 1500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--hide-stop", "JustToSuffer" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
