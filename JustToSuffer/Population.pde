float ItLX, ItLY, ItLW, ItLH;
//
void population() {
  //
  canvasX = width*6/24;
  canvasY = height*1/8;
  canvasWidth = width*18/24;
  canvasHeight = height*3/4;
  circleDiameter = width*1/100;
  //
  quitButtonX = width*9/10; //18/20=9/10
  quitButtonY = height*0/20;
  quitButtonWidth = width*1/10; // 2/20=1/10
  quitButtonHeight = height*1/20;
  //
  secondTextX = quitButtonX;
  secondTextY = height*1/20;
  secondTextWidth = quitButtonWidth;
  secondTextHeight = quitButtonHeight;
  //
  ItLX = canvasX+(width*(6/24));
  ItLY = canvasY+(height*(1.0/120.0));
  ItLW = canvasWidth-(width*(1.0/48.0));
  ItLH = canvasHeight-(height*(1.0/60.0));
  //
}//End population
