//Global Variables
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
Minim minim; //creates object to access all functions
int numberOfSongs = 6;
AudioPlayer[] song = new AudioPlayer[numberOfSongs]; //creates "Play List" variables holding extensions WAV, AIFF, AU, SND, & MP3
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs]; //"song1's meta data"
int currentSong = numberOfSongs - numberOfSongs;
PFont titleFont;
//
Boolean Pen=false, Circle=false;
//
float musicMBX, musicMBY, musicMBW, musicMBH;
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
color white=255, resetColour=white, red=#FF0303, black=0;
//
color coRed=#E53A27, coOrange=#E8A944, coYellow=#E5E592, coPink=#E592DC, coCyan=#35FAF8, coLightBlue=#CEDEE5, coPurple=#6755A7, coGrey=#B2B7B9, coWhite=#EDF1F2, coBlack=#4A3839;
//
color coLRed=#F26C5F, coLOrange=#EBB444, coLYellow=#E5F092, coLPink=#E596DC, coLCyan=#35E6F8, coLLightBlue=#CCEEFC, coLPurple=#675FA7, coLGrey=#CCCDCE, coLWhite=#F0F0F0, coLBlack=#404243;
color quitButtonColour, rButtonC, pagesC, musicC, upC, downC, prevC, nexC, repC, pC, penC, sprayC, highlightC, circleC, eraserC, fillC, thinC, thickC, resetC, redC, orangeC, yellowC, pinkC, cyanC, blueC, purpleC, greyC, blackC, whiteC;
//
PImage img1, img2, img3, img4, img5, img6, img7, img8, img9, img10, img11, img12, img13, img14, img15, img16, img17, img18, img19, img20, img21, img22, img23;
//
void setup() {
  //Mandatory: Mistaken display orientation should break app, feedback to console and CANVAS
  size(2500, 1500); //fullScreen, displayWidth, displayHeight
  population();
  textSetup();
  canvas();
  musicSetup();
  //
  imageSetup();
  pagesImageSetup();
  //
}//End setup
//
void draw() {
  //
  //if ( paper==true ) pieceOfPaper();
  //
  //Drawing Tools, with a combined Boolean
  //if ( Pen==true && mouseX>=canvasX && mouseX<=canvasX+canvasWidth && mouseY>=canvasY && mouseY<=canvasY+canvasHeight ) line( mouseX, mouseY, pmouseX, pmouseY  ) ;//End Line Draw 
  if ( Circle==true && mouseX>=canvasX && mouseX<=canvasX+canvasWidth && mouseY>=canvasY && mouseY<=canvasY+canvasHeight ) ellipse ( mouseX, mouseY, circleDiameter, circleDiameter ); //Circle Drawing Tool
  //
  //Quit Button Hoverover
  hoverOver();
  //textHoverOver();
  //
  //pagesDraw();
  //
  //musicDraw(); //this is for the text that states what song is playing
  //
  penFunction(); //unslash this once buttons are done
  //
}//End draw
//
void keyPressed() {
  //musicKeyPressed();
}//End keyPressed
//
void mousePressed() {
  //
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) exit();
  //
  if ( mouseX>=secondTextX && mouseX<=secondTextX+secondTextWidth && mouseY>=secondTextY && mouseY<=secondTextY+secondTextHeight ) canvas();  //paper=true;
  //
  if ( mouseX>=penX && mouseX<=penX+penWidth && mouseY>=penY && mouseY<=penY+penHeight ) {
    penFunction();
  } else {
    
  }
  //
  musicMousePressed();
  //
}//End mousepressed
//
void mouseDragged() {
  //
  /*
  if ( Pen==true && mouseX>=canvasX && mouseX<=canvasX+canvasWidth && mouseY>=canvasY && mouseY<=canvasY+canvasHeight ) line( mouseX, mouseY, pmouseX, pmouseY  ) ;//End Line Draw
  //
  if ( mouseX>=canvasX && mouseX<=canvasX+canvasWidth && mouseY>=canvasY && mouseY<=canvasY+canvasHeight ) {
    if (Pen == false) {
      Pen = true;
    } else {
      Pen = false;
    }//End draw Boolean
  }//Button Paper (Drawing Surface)
  */
  //
  /*
  if (mouseX>=ItLX && mouseX<=ItLX+ItLW && mouseY>=ItLY && mouseY<=ItLY+ItLH ) {
    if (circle == false) {
      circle = true;
    } else {
      circle = false;
    }//End draw Boolean
  }//Button Paper (Drawing Surface)
  */
}//End mouseDragged
//
//End MAIN
