import KinectPV2.*;
KinectPV2 kinect;

void setup() {
  size(512,424);
  
  kinect = new KinectPV2(this);
  kinect.enableColorImg(true);
  kinect.enableDepthImg(true);
  kinect.init();
}


void draw(){
 PImage imgC = kinect.getDepthImage();
 image(imgC, 0, 0);
}
