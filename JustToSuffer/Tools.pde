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
