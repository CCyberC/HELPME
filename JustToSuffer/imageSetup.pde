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
  if ( img1H >= img1W ) { //ID Larger Dimension: Portrait
    larger1D = img1H;
    smaller1D = img1W;
    h1Larger = true;
  } else { //ID Larger Dimension: Landscape and Square
    larger1D = img1W;
    smaller1D = img1H;
    w1Larger = true;
  } //End pic1 larger dimension ID
  //
  if ( img2H >= img2W ) { //ID Larger Dimension: Portrait
    larger2D = img2H;
    smaller2D = img2W;
    h2Larger = true;
  } else { //ID Larger Dimension: Landscape and Square
    larger2D = img2W;
    smaller2D = img2H;
    w2Larger = true;
  } //End pic2 larger dimension ID
  //
  if ( img3H >= img3W ) { //ID Larger Dimension: Portrait
    larger3D = img3H;
    smaller3D = img3W;
    h3Larger = true;
  } else { //ID Larger Dimension: Landscape and Square
    larger3D = img3W;
    smaller3D = img3H;
    w3Larger = true;
  } //End pic4 larger dimension ID
  //
  if ( img4H >= img4W ) { //ID Larger Dimension: Portrait
    larger4D = img4H;
    smaller4D = img4W;
    h4Larger = true;
  } else { //ID Larger Dimension: Landscape and Square
    larger4D = img4W;
    smaller4D = img4H;
    w4Larger = true;
  } //End pic4 larger dimension ID
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
