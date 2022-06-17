
//
void hoverOver() {
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
