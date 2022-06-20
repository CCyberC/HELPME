void penFunction() {
  if ( mouseX>=canvasX && mouseX<=canvasX+canvasWidth && mouseY>=canvasY && mouseY<=canvasY+canvasHeight ) {
    stroke(0);
    if (mousePressed == true) {
      line(mouseX, mouseY, pmouseX, pmouseY);
    }
  }//End pen
}//End penFunction
//
void fillFunction() {
  
}//End fillFunction
//
/*
void thinFunction( strokeButton == true && mouseX>=thinX && mouseX<=thinX+thinWidth && mouseY>=thinY && mouseY<=thinY+thinHeight ) {
  drawStroke = 1;
}
//
void thickFunction( strokeButton == true && mouseX>=thickX && mouseX<=thickX+thickWidth && mouseY>=thickY && mouseY<=thickY+thickHeight ) {
  drawStroke = 4;
}
//
*/
