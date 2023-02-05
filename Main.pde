void setup() {
  size(1280,720);
  
  initColorMap();
}

void draw(){
 for(int i = 0; i < width; i++){
   // Set shape color based on colormap
   stroke(colorMap(float(i)/float(width)));
   // Vertical colored line tracing
   line(i, 0, i, height);
 }
}
