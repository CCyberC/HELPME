float imgX1, imgY1, imgX2, imgY2, imgX3, imgY3, imgX4, imgY4;
float imgWidth1, imgHeight1, imgWidth2, imgHeight2, imgWidth3, imgHeight3, imgWidth4, imgHeight4;
//
float imgWR1=0.0, imgHR1=0.0, imgWR2=0.0, imgHR2=0.0, imgWR3=0.0, imgHR3=0.0, imgWR4=0.0, imgHR4=0.0; 
Boolean w1Larger=false, h1Larger=false, w2Larger=false, h2Larger=false, w3Larger=false, h3Larger=false, w4Larger=false, h4Larger=false;
int larger1D, smaller1D, larger2D, smaller2D, larger3D, smaller3D, larger4D, smaller4D;
float WA1, HA1, WA2, HA2, WA3, HA3, WA4, HA4;
//
float imgX20, imgY20, imgX21, imgY21, imgX22, imgY22, imgX23, imgY23;
float imgWidth20, imgHeight20, imgWidth21, imgHeight21, imgWidth22, imgHeight22, imgWidth23, imgHeight23;
//
float imgWR20=0.0, imgHR20=0.0, imgWR21=0.0, imgHR21=0.0, imgWR22=0.0, imgHR22=0.0, imgWR23=0.0, imgHR23=0.0; 
Boolean w20Larger=false, h20Larger=false, w21Larger=false, h21Larger=false, w22Larger=false, h22Larger=false, w23Larger=false, h23Larger=false;
int larger20D, smaller20D, larger21D, smaller21D, larger22D, smaller22D, larger23D, smaller23D;
float WA20, HA20, WA21, HA21, WA22, HA22, WA23, HA23;
//

void imageSetup() {
  int img1W = 1214; 
  int img1H = 1214; 
  int img2W = 256; 
  int img2H = 256; 
  int img3W = 512; 
  int img3H = 512; 
  int img4W = 500; 
  int img4H = 500; 
  int img5W = 483; 
  int img5H = 450; 
  int img6W = 818; 
  int img6H = 894; 
  int img7W = 480; 
  int img7H = 480; 
  int img8W = 400; 
  int img8H = 400; 
  int img9W = 733; 
  int img9H = 720; 
  int img10W = 960; 
  int img10H = 320; 
  int img11W = 360;
  int img11H = 360; 
  int img12W = 900; 
  int img12H = 381; 
  int img13W = 512; 
  int img13H = 512; 
  int img14W = 512; 
  int img14H = 512; 
  int img15W = 512; 
  int img15H = 512; 
  int img16W = 512; 
  int img16H = 512;  
  int img17W = 512;  
  int img17H = 512; 
  int img18W = 512; 
  int img18H = 512;  
  int img19W = 512; 
  int img19H = 512; 
  //
  if ( img1W >= img1H ) { //ID Larger Dimension: Landscape and Square
    larger1D = img1W;
    smaller1D = img1H;
    w1Larger = true;
  } else { //ID Larger Dimension: Portrait
    larger1D = img1H;
    smaller1D = img1W;
    h1Larger = true;
  } //End pic1 larger dimension ID
  //
  if ( img2W >= img2H ) { //ID Larger Dimension: Landscape and Square
    larger2D = img2W;
    smaller2D = img2H;
    w2Larger = true;
  } else { //ID Larger Dimension: Portrait
    larger2D = img2H;
    smaller2D = img2W;
    h2Larger = true;
  } //End pic2 larger dimension ID
  //
  if ( img3W >= img3H ) { //ID Larger Dimension: Landscape and Square
    larger3D = img3W;
    smaller3D = img3H;
    w3Larger = true;
  } else { //ID Larger Dimension: Portrait
    larger3D = img3H;
    smaller3D = img3W;
    h3Larger = true;
  } //End pic3 larger dimension ID
  //
  if ( img4W >= img4H ) { //ID Larger Dimension: Landscape and Square
    larger4D = img4W;
    smaller4D = img4H;
    w4Larger = true;
  } else { //ID Larger Dimension: Portrait
    larger4D = img4H;
    smaller4D = img4W;
    h4Larger = true;
  } //End pic4 larger dimension ID
  //
  if ( img5W >= img5H ) { //ID Larger Dimension: Landscape and Square
    larger5D = img5W;
    smaller5D = img5H;
    w5Larger = true;
  } else { //ID Larger Dimension: Portrait
    larger5D = img5H;
    smaller5D = img5W;
    h5Larger = true;
  } //End pic5 larger dimension ID
  //
  if ( img6H >= img6W ) { //ID Larger Dimension: Portrait
    larger6D = img6H;
    smaller6D = img6W;
    h6Larger = true;
  } else { //ID Larger Dimension: Landscape and Square
    larger6D = img6W;
    smaller6D = img6H;
    w6Larger = true;
  } //End pic6 larger dimension ID
  //
  if ( img7W >= img7H ) { //ID Larger Dimension: Landscape and Square
    larger7D = img7W;
    smaller7D = img7H;
    w7Larger = true;
  } else { //ID Larger Dimension: Portrait
    larger7D = img7H;
    smaller7D = img7W;
    h7Larger = true;
  } //End pic7 larger dimension ID
  //
  if ( img8W >= img8H ) { //ID Larger Dimension: Landscape and Square
    larger8D = img8W;
    smaller8D = img8H;
    w8Larger = true;
  } else { //ID Larger Dimension: Portrait
    larger8D = img8H;
    smaller8D = img8W;
    h8Larger = true;
  } //End pic8 larger dimension ID
  //
  if ( img9W >= img9H ) { //ID Larger Dimension: Landscape and Square
    larger9D = img9W;
    smaller9D = img9H;
    w9Larger = true;
  } else { //ID Larger Dimension: Portrait
    larger9D = img9H;
    smaller9D = img9W;
    h9Larger = true;
  } //End pic9 larger dimension ID
  //
  if ( img10W >= img10H ) { //ID Larger Dimension: Landscape and Square
    larger10D = img10W;
    smaller10D = img10H;
    w10Larger = true;
  } else { //ID Larger Dimension: Portrait
    larger10D = img10H;
    smaller10D = img10W;
    h10Larger = true;
  } //End pic10 larger dimension ID
  //
  if ( img11W >= img11H ) { //ID Larger Dimension: Landscape and Square
    larger11D = img11W;
    smaller11D = img11H;
    w11Larger = true;
  } else { //ID Larger Dimension: Portrait
    larger11D = img11H;
    smaller11D = img11W;
    h11Larger = true;
  } //End pic11 larger dimension ID
  //
  if ( img12W >= img12H ) { //ID Larger Dimension: Landscape and Square
    larger12D = img12W;
    smaller12D = img12H;
    w12Larger = true;
  } else { //ID Larger Dimension: Portrait
    larger12D = img12H;
    smaller12D = img12W;
    h12Larger = true;
  } //End pic12 larger dimension ID
  //
  if ( img13W >= img13H ) { //ID Larger Dimension: Landscape and Square
    larger13D = img13W;
    smaller13D = img13H;
    w13Larger = true;
  } else { //ID Larger Dimension: Portrait
    larger13D = img13H;
    smaller13D = img13W;
    h13Larger = true;
  } //End pic13 larger dimension ID
  //
  if ( img14W >= img14H ) { //ID Larger Dimension: Landscape and Square
    larger14D = img14W;
    smaller14D = img14H;
    w14Larger = true;
  } else { //ID Larger Dimension: Portrait
    larger14D = img14H;
    smaller14D = img14W;
    h14Larger = true;
  } //End pic14 larger dimension ID
  //
  if ( img15W >= img15H ) { //ID Larger Dimension: Landscape and Square
    larger15D = img15W;
    smaller15D = img15H;
    w15Larger = true;
  } else { //ID Larger Dimension: Portrait
    larger15D = img15H;
    smaller15D = img15W;
    h15Larger = true;
  } //End pic1 larger dimension ID
  //
  if ( img16W >= img16H ) { //ID Larger Dimension: Landscape and Square
    larger16D = img16W;
    smaller16D = img16H;
    w16Larger = true;
  } else { //ID Larger Dimension: Portrait
    larger16D = img16H;
    smaller16D = img16W;
    h16Larger = true;
  } //End pic16 larger dimension ID
  //
  if ( img17W >= img17H ) { //ID Larger Dimension: Landscape and Square
    larger17D = img17W;
    smaller17D = img17H;
    w17Larger = true;
  } else { //ID Larger Dimension: Portrait
    larger17D = img17H;
    smaller17D = img17W;
    h17Larger = true;
  } //End pic17 larger dimension ID
  //
  if ( img18W >= img18H ) { //ID Larger Dimension: Landscape and Square
    larger18D = img18W;
    smaller18D = img18H;
    w18Larger = true;
  } else { //ID Larger Dimension: Portrait
    larger18D = img18H;
    smaller18D = img18W;
    h18Larger = true;
  } //End pic18 larger dimension ID
  //
  if ( img19W >= img19H ) { //ID Larger Dimension: Landscape and Square
    larger19D = img19W;
    smaller19D = img19H;
    w19Larger = true;
  } else { //ID Larger Dimension: Portrait
    larger19D = img19H;
    smaller19D = img19W;
    h19Larger = true;
  } //End pic19 larger dimension ID
  //
  if ( w1Larger == true ) imgWR1 = float (larger1D) / float (larger1D);
  if ( w1Larger == true ) imgHR1 = float (smaller1D) / float (larger1D);
  if ( h1Larger == true ) imgWR1 = float (smaller1D) / float (larger1D);
  if ( h1Larger == true ) imgHR1 = float (larger1D) / float (larger1D);
  if ( w2Larger == true ) imgWR2 = float (larger2D) / float (larger2D);
  if ( w2Larger == true ) imgHR2 = float (smaller2D) / float (larger2D);
  if ( h2Larger == true ) imgWR2 = float (smaller2D) / float (larger2D);
  if ( h2Larger == true ) imgHR2 = float (larger2D) / float (larger2D);
  if ( w3Larger == true ) imgWR3 = float (larger3D) / float (larger3D);
  if ( w3Larger == true ) imgHR3 = float (smaller3D) / float (larger3D);
  if ( h3Larger == true ) imgWR3 = float (smaller3D) / float (larger3D);
  if ( h3Larger == true ) imgHR3 = float (larger3D) / float (larger3D);
  if ( w4Larger == true ) imgWR4 = float (larger4D) / float (larger4D);
  if ( w4Larger == true ) imgHR4 = float (smaller4D) / float (larger4D);
  if ( h4Larger == true ) imgWR4 = float (smaller4D) / float (larger4D);
  if ( h4Larger == true ) imgHR4 = float (larger4D) / float (larger4D);
  if ( w1Larger == true ) imgWR1 = float (larger1D) / float (larger1D);
  if ( w1Larger == true ) imgHR1 = float (smaller1D) / float (larger1D);
  if ( h1Larger == true ) imgWR1 = float (smaller1D) / float (larger1D);
  if ( h1Larger == true ) imgHR1 = float (larger1D) / float (larger1D);
  if ( w2Larger == true ) imgWR2 = float (larger2D) / float (larger2D);
  if ( w2Larger == true ) imgHR2 = float (smaller2D) / float (larger2D);
  if ( h2Larger == true ) imgWR2 = float (smaller2D) / float (larger2D);
  if ( h2Larger == true ) imgHR2 = float (larger2D) / float (larger2D);
  if ( w3Larger == true ) imgWR3 = float (larger3D) / float (larger3D);
  if ( w3Larger == true ) imgHR3 = float (smaller3D) / float (larger3D);
  if ( h3Larger == true ) imgWR3 = float (smaller3D) / float (larger3D);
  if ( h3Larger == true ) imgHR3 = float (larger3D) / float (larger3D);
  if ( w4Larger == true ) imgWR4 = float (larger4D) / float (larger4D);
  if ( w4Larger == true ) imgHR4 = float (smaller4D) / float (larger4D);
  if ( h4Larger == true ) imgWR4 = float (smaller4D) / float (larger4D);
  if ( h4Larger == true ) imgHR4 = float (larger4D) / float (larger4D);
  if ( w1Larger == true ) imgWR1 = float (larger1D) / float (larger1D);
  if ( w1Larger == true ) imgHR1 = float (smaller1D) / float (larger1D);
  if ( h1Larger == true ) imgWR1 = float (smaller1D) / float (larger1D);
  if ( h1Larger == true ) imgHR1 = float (larger1D) / float (larger1D);
  if ( w2Larger == true ) imgWR2 = float (larger2D) / float (larger2D);
  if ( w2Larger == true ) imgHR2 = float (smaller2D) / float (larger2D);
  if ( h2Larger == true ) imgWR2 = float (smaller2D) / float (larger2D);
  if ( h2Larger == true ) imgHR2 = float (larger2D) / float (larger2D);
  if ( w3Larger == true ) imgWR3 = float (larger3D) / float (larger3D);
  if ( w3Larger == true ) imgHR3 = float (smaller3D) / float (larger3D);
  if ( h3Larger == true ) imgWR3 = float (smaller3D) / float (larger3D);
  if ( h3Larger == true ) imgHR3 = float (larger3D) / float (larger3D);
  if ( w4Larger == true ) imgWR4 = float (larger4D) / float (larger4D);
  if ( w4Larger == true ) imgHR4 = float (smaller4D) / float (larger4D);
  if ( h4Larger == true ) imgWR4 = float (smaller4D) / float (larger4D);
  if ( h4Larger == true ) imgHR4 = float (larger4D) / float (larger4D);
  if ( w1Larger == true ) imgWR1 = float (larger1D) / float (larger1D);
  if ( w1Larger == true ) imgHR1 = float (smaller1D) / float (larger1D);
  if ( h1Larger == true ) imgWR1 = float (smaller1D) / float (larger1D);
  if ( h1Larger == true ) imgHR1 = float (larger1D) / float (larger1D);
  if ( w2Larger == true ) imgWR2 = float (larger2D) / float (larger2D);
  if ( w2Larger == true ) imgHR2 = float (smaller2D) / float (larger2D);
  if ( h2Larger == true ) imgWR2 = float (smaller2D) / float (larger2D);
  if ( h2Larger == true ) imgHR2 = float (larger2D) / float (larger2D);
  if ( w3Larger == true ) imgWR3 = float (larger3D) / float (larger3D);
  if ( w3Larger == true ) imgHR3 = float (smaller3D) / float (larger3D);
  if ( h3Larger == true ) imgWR3 = float (smaller3D) / float (larger3D);
  if ( h3Larger == true ) imgHR3 = float (larger3D) / float (larger3D);
  if ( w4Larger == true ) imgWR4 = float (larger4D) / float (larger4D);
  if ( w4Larger == true ) imgHR4 = float (smaller4D) / float (larger4D);
  if ( h4Larger == true ) imgWR4 = float (smaller4D) / float (larger4D);
  if ( h4Larger == true ) imgHR4 = float (larger4D) / float (larger4D);
  if ( w1Larger == true ) imgWR1 = float (larger1D) / float (larger1D);
  if ( w1Larger == true ) imgHR1 = float (smaller1D) / float (larger1D);
  if ( h1Larger == true ) imgWR1 = float (smaller1D) / float (larger1D);
  if ( h1Larger == true ) imgHR1 = float (larger1D) / float (larger1D);
  if ( w2Larger == true ) imgWR2 = float (larger2D) / float (larger2D);
  if ( w2Larger == true ) imgHR2 = float (smaller2D) / float (larger2D);
  if ( h2Larger == true ) imgWR2 = float (smaller2D) / float (larger2D);
  if ( h2Larger == true ) imgHR2 = float (larger2D) / float (larger2D);
  if ( w3Larger == true ) imgWR3 = float (larger3D) / float (larger3D);
  if ( w3Larger == true ) imgHR3 = float (smaller3D) / float (larger3D);
  if ( h3Larger == true ) imgWR3 = float (smaller3D) / float (larger3D);
  if ( h3Larger == true ) imgHR3 = float (larger3D) / float (larger3D);
  //
  imgX1 = canvasX+(canvasWidth*(1.0/24.0));
  imgY1 = canvasY;
  imgWidth1 = canvasWidth*(11.0/12.0);
  imgHeight1 = canvasHeight;
  imgX2 = canvasX+(canvasWidth*(1.0/8.0));
  imgY2 = canvasY;
  imgWidth2 = canvasWidth*(3.0/4.0);
  imgHeight2 = canvasHeight;
  imgX3 = canvasX+(canvasWidth*(1.0/16.0));
  imgY3 = canvasY;
  imgWidth3 = canvasWidth*(7.0/8.0);
  imgHeight3 = canvasHeight;
  imgX4 = canvasX+(canvasWidth*(1.0/8.0));
  imgY4 = canvasY;
  imgWidth4 = canvasWidth*(3.0/4.0);
  imgHeight4 = canvasHeight;
  //
  WA1 = imgWidth1 * imgWR1;
  HA1 = imgHeight1 * imgHR1;
  WA2 = imgWidth2 * imgWR2;
  HA2 = imgHeight2 * imgHR2;
  WA3 = imgWidth3 * imgWR3;
  HA3 = imgHeight3 * imgHR3;
  WA4 = imgWidth4 * imgWR4;
  HA4 = imgHeight4 * imgHR4;
}//End imageSetup
//
void pagesImageSetup() {
  /*
  int img20W = 820; 
  int img20H = 971; 
  int img21W = 860; 
  int img21H = 1121; 
  int img22W = 860; 
  int img22H = 1076; 
  int img23W = 860; 
  int img23H = 900; 
  //
  if ( img20H >= img20W ) { //ID Larger Dimension: Portrait
    larger20D = img20H;
    smaller20D = img20W;
    h20Larger = true;
  } else { //ID Larger Dimension: Landscape and Square
    larger20D = img20W;
    smaller20D = img20H;
    w20Larger = true;
  } //End pic1 larger dimension ID
  //
  if ( img21H >= img21W ) { //ID Larger Dimension: Portrait
    larger21D = img21H;
    smaller21D = img21W;
    h2Larger = true;
  } else { //ID Larger Dimension: Landscape and Square
    larger21D = img21W;
    smaller21D = img21H;
    w21Larger = true;
  } //End pic2 larger dimension ID
  //
  if ( img22H >= img22W ) { //ID Larger Dimension: Portrait
    larger22D = img22H;
    smaller22D = img22W;
    h22Larger = true;
  } else { //ID Larger Dimension: Landscape and Square
    larger22D = img22W;
    smaller22D = img22H;
    w22Larger = true;
  } //End pic4 larger dimension ID
  //
  if ( img23H >= img23W ) { //ID Larger Dimension: Portrait
    larger23D = img23H;
    smaller23D = img23W;
    h4Larger = true;
  } else { //ID Larger Dimension: Landscape and Square
    larger23D = img23W;
    smaller23D = img23H;
    w23Larger = true;
  } //End pic4 larger dimension ID
  //
  if ( w20Larger == true ) imgWR20 = float (larger20D) / float (larger20D);
  if ( w20Larger == true ) imgHR20 = float (smaller20D) / float (larger20D);
  if ( h20Larger == true ) imgWR20 = float (smaller20D) / float (larger20D);
  if ( h20Larger == true ) imgHR20 = float (larger20D) / float (larger20D);
  if ( w21Larger == true ) imgWR21 = float (larger21D) / float (larger21D);
  if ( w21Larger == true ) imgHR21 = float (smaller21D) / float (larger21D);
  if ( h21Larger == true ) imgWR21 = float (smaller21D) / float (larger21D);
  if ( h21Larger == true ) imgHR21 = float (larger21D) / float (larger21D);
  if ( w22Larger == true ) imgWR22 = float (larger22D) / float (larger22D);
  if ( w22Larger == true ) imgHR22 = float (smaller22D) / float (larger22D);
  if ( h22Larger == true ) imgWR22 = float (smaller22D) / float (larger22D);
  if ( h22Larger == true ) imgHR22 = float (larger22D) / float (larger22D);
  if ( w23Larger == true ) imgWR23 = float (larger23D) / float (larger23D);
  if ( w23Larger == true ) imgHR23 = float (smaller23D) / float (larger23D);
  if ( h23Larger == true ) imgWR23 = float (smaller23D) / float (larger23D);
  if ( h23Larger == true ) imgHR23 = float (larger23D) / float (larger23D);
  //
  imgX20 = canvasX+(canvasWidth*(1.0/24.0));
  imgY20 = canvasY;
  imgWidth20 = canvasWidth*(11.0/12.0);
  imgHeight20 = canvasHeight;
  imgX21 = canvasX+(canvasWidth*(1.0/8.0));
  imgY21 = canvasY;
  imgWidth21 = canvasWidth*(3.0/4.0);
  imgHeight21 = canvasHeight;
  imgX22 = canvasX+(canvasWidth*(1.0/16.0));
  imgY22 = canvasY;
  imgWidth22 = canvasWidth*(7.0/8.0);
  imgHeight22 = canvasHeight;
  imgX23 = canvasX+(canvasWidth*(1.0/8.0));
  imgY23 = canvasY;
  imgWidth23 = canvasWidth*(3.0/4.0);
  imgHeight23 = canvasHeight;
  //
  WA20 = imgWidth1 * imgWR1;
  HA20 = imgHeight1 * imgHR1;
  WA21 = imgWidth2 * imgWR2;
  HA21 = imgHeight2 * imgHR2;
  WA22 = imgWidth3 * imgWR3;
  HA22 = imgHeight3 * imgHR3;
  WA23 = imgWidth4 * imgWR4;
  HA23 = imgHeight4 * imgHR4;
  */
}//End pagesImageSetup
//
void pagesDraw() {
  /*
  image(img20, imgX20, imgY20, imgWidth20, imgHeight20);
  image(img21, imgX21, imgY21, imgWidth21, imgHeight21);
  image(img22, imgX22, imgY22, imgWidth22, imgHeight22);
  image(img23, imgX23, imgY23, imgWidth23, imgHeight23);
  */
}//End pagesDraw
