
//
void hoverOver() {
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) {
    quitButtonColour = red;
  } else {
    quitButtonColour = black;
  }//End Quit Button Hoverover
  fill(quitButtonColour);
  noStroke(); //removes rect() outline
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
  /*
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  if () {
    
  } else {
    
  }
  */
}//End hoverOver
