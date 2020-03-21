import controlP5.*;
import processing.serial.*;
ControlP5 cp5;
 
ColorPicker picker;
Serial myPort;
 
void setup() {
  size(400, 330);
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);

  cp5 = new ControlP5(this);
  cp5.addColorWheel("c" , 0 , 0 , 300 ).setRGB(color(255, 140, 21));
  cp5.addButton("Reset").setPosition(300,0).setSize(100,100);
  
  // add a vertical slider
  cp5.addSlider("slider")
     .setPosition(0, 300)
     .setSize(400,30)
     .setRange(0,255)
     .setValue(60)
     ;  
  noStroke();
}

int r = 0, g = 0, b = 0, br = 60;

void draw() {  
 r = cp5.get(ColorWheel.class,"c").r();
 g = cp5.get(ColorWheel.class,"c").g();
 b = cp5.get(ColorWheel.class,"c").b();


 
 myPort.write("r" + r + "g" + g + "b" + b + "br" + br);
}
