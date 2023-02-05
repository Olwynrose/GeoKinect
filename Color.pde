Color[] colors;

void initColorMap(){
  colors = new Color[5];
  colors[0] = new Color(color(0,0,255), 0.0f); // bleu
  colors[1] = new Color(color(0,255,255), 0.25f); // cyan
  colors[2] = new Color(color(0,255,0), 0.5f); // vert
  colors[3] = new Color(color(255,255,0), 0.75f); // jaune
  colors[4] = new Color(color(255,0,0), 1.0f); // rouge
}

class Color{
  Color(color _c, float _v){ // Constructor
    c = _c;
    value = _v;
  }
  color c;
  float value;
  
};

color colorMap(float val) {
  for(int i=0; i < colors.length; i++){
        Color currC = colors[i];
        if(val < currC.value){
            Color prevC  = colors[max(0,i-1)];
            // Difference between 2 predefined colors
            float valueDiff = (prevC.value - currC.value);
            // Definition of the ratio defining the value between the 2 predefined colors surrounding the value
            float fractBetween = (valueDiff == 0) ? 0 : (val - currC.value) / valueDiff;
            // interpolation between the 2 predefined colors surrounding the value
            return lerpColor(currC.c, prevC.c, fractBetween);
        }
    }
    return color(255,0,0);
}
