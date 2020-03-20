import controlP5.*;
ControlP5 cp5;
 
ColorPicker picker;
 
int rad = 400;
int steps = 30;
 
void setup() {
  size(300, 300);
  cp5 = new ControlP5( this );
  cp5.addColorWheel("c" , 0 , 0 , 300 ).setRGB(color(255, 140, 21));
  noStroke();
}
char test [];
int r = 0, g = 0, b = 0;


void draw() {  
 //println(cp5.get(ColorWheel.class,"c").getColor()); 
 r = cp5.get(ColorWheel.class,"c").r();
 g = cp5.get(ColorWheel.class,"c").g();
 b = cp5.get(ColorWheel.class,"c").b();
 println(r);
 println(g);
 println(b);

 }
