#include <Adafruit_NeoPixel.h>
#define PIN        2 
#define NUMPIXELS  10

Adafruit_NeoPixel pixels(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);

void setup() {
  Serial.begin(9600);

  pixels.begin();
  pixels.setBrightness(60);
  for(int i=0; i<NUMPIXELS; i++) {
      pixels.setPixelColor(i, pixels.Color(0, 0, 255));
      pixels.show();
      delay(50);
  }
   for(int i=0; i<NUMPIXELS; i++) {
      pixels.setPixelColor(i, pixels.Color(255, 255, 255));
      pixels.show();
      delay(50);
  }
   for(int i=0; i<NUMPIXELS; i++) {
      pixels.setPixelColor(i, pixels.Color(255, 0, 0));
      pixels.show();
      delay(50);
  }
  delay(200);
  pixels.clear();
  pixels.show();
}

int r = 0, g = 0, b = 0, br = 50;
String str;

void loop() {
   if (Serial.available() > 0){
   
        str = Serial.readStringUntil('r');
        r = Serial.parseInt();
        str = Serial.readStringUntil('g');
        g = Serial.parseInt();
        str = Serial.readStringUntil('b');
        b = Serial.parseInt();
        str = Serial.readStringUntil('br');
        br = Serial.parseInt();
        
        for(int i=0; i<NUMPIXELS; i++) {
          pixels.setPixelColor(i, pixels.Color(r, g, b));
          pixels.setBrightness(br);
          pixels.show();
        }
    }
}
