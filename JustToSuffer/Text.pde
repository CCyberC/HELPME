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
String resetTxt = "Reset";
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
void textSetup() {
  font = createFont ("Harrington", initialFontSize);
}//End textSetup
//
//
void ExitHO() {
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 20; //Change until fits
  textFont(font, size);
  text(quitButtonString, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
}
