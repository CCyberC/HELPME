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
color white=255, resetColour=white, red=#FF0303, black=0;
//
color coRed=#E53A27, coOrange=#E8A944, coYellow=#E5E592, coPink=#E592DC, coCyan=#35FAF8, coLightBlue=#CEDEE5, coPurple=#6755A7, coGrey=#B2B7B9, coWhite=#EDF1F2, coBlack=#404243;
//
color coLRed=#F26C5F, coLOrange=#EBB444, coLYellow=#E5F092, coLPink=#E596DC, coLCyan=#35E6F8, coLLightBlue=#CCEEFC, coLPurple=#675FA7, coLGrey=#CCCDCE, coLWhite=#F0F0F0, coLBlack=#4A3839;
color quitButtonColour, rButtonC, pagesC, musicC, upC, downC, prevC, nexC, repC, pC, penC, sprayC, highlightC, circleC, eraserC, fillC, thinC, thickC, redC, orangeC, yellowC, pinkC, cyanC, blueC, purpleC, greyC, blackC, whiteC;
//
void setup() {
  //Mandatory: Mistaken display orientation should break app, feedback to console and CANVAS
  size(2500, 1500); //fullScreen, displayWidth, displayHeight
  population();
  textSetup();
  canvas();
  musicSetup();
  //
}//End setup
//
void draw() {
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
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
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
