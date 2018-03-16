// include the library code:
#include <LiquidCrystal.h>

//
int FN = 2;
int RW = 3;
int RS = 4;
int EN = 5;
//
int D0 = 18;
int D1 = 19;
int D2 = 20;
int D3 = 21;
//
int D4 = 6;
int D5 = 7;
int D6 = 8;
int D7 = 9;
uint8_t inChar;

// TODO: Make more pretty
//void serialWaitSpinner() {
//  lcd.setCursor(39, 1);
//  lcd.write(0x7C);
//  // These just make it return faster from an "idle" state
//  if (Serial.available() > 0) return;
//  delay(80);
//  lcd.setCursor(39, 1);
//  lcd.write(0x2F);
//  if (Serial.available() > 0) return;
//  delay(80);
//  lcd.setCursor(39, 1);
//  lcd.write(0x2D);
//  if (Serial.available() > 0) return;
//  delay(80);
//  lcd.setCursor(39, 1);
//  lcd.write(0x8C);
//  if (Serial.available() > 0) return;
//  delay(80);
//}

//Basically only used while debugging
//void commandBlink() {
//  lcd.setCursor(39, 1);
//  lcd.write(0x94); // a Dot
//  delay(25);
//  lcd.write(0x20); // ascii Space
//}
//

LiquidCrystal lcd(RS, EN, D0, D1, D2, D3, D4, D5, D6, D7); // 8 bit
//LiquidCrystal lcd(RS, EN, D4, D5, D6, D7); // 4 bit

void setup() {
  delay(250); // allow power to level
  //  RW must be low in this mode
  pinMode(RW, OUTPUT);
  digitalWrite(RW, LOW);

  // NONE OF THIS SHIT WORKS
  digitalWrite(RS, LOW);
  delay(20);
  lcd.command((byte)0x03);
  lcd.command((byte)0x03);
  delay(20);
  digitalWrite(RS, HIGH);
  delay(20);

  // Init the screen
  lcd.begin(40, 2);
  lcd.setCursor(0, 0);
  lcd.print("Started.");
  Serial.print("Started.");

}

// long  i = 0L;
// void loop() {
//   Serial.begin(9600);
//   lcd.write(0xFF);
//   lcd.write(0xFF);
//   delay(5);
//   lcd.write(0xFE);
//   //   set the cursor to column 0, line 1 (zero index)
//   lcd.setCursor(0, 1);
//   lcd.print(String(i));
//   lcd.write(0xFF);
//   i++;
// }



void loop() {
//    commandBlink();
    if (Serial.available()) {
      ////
      // Deal with serial data
      inChar = Serial.read();
      if (inChar == 0xFE) {
        // commandBlink();
        delay(3); //wait for next byte
        lcd.command(Serial.read());
      } else {
        lcd.write(inChar);
      }
    //  Heartbeat = millis(); // Reset heart beat
   }
  ////
  // Play time out animation
      // if (millis() - Heartbeat > 100) {
      //  serialWaitSpinner();
          //  lcd.clear();/
    //  }
}
