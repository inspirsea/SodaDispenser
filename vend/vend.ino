#include <SPI.h>
#include <EEPROM.h>
#include <Wire.h>
#include "PN532.h"
#include "PN532_SPI.h"
#include "LiquidCrystal_I2C.h"


#define PRICE1RELAYPIN 7
#define PRICE2RELAYPIN 6
#define PRICE1SENSEPIN 5
#define PRICE2SENSEPIN 4
#define BLOCKSENSEPIN  3
//A0-A5 LCD

//#define DEBUG

PN532_SPI pn532spi(SPI, 10);
PN532* pn532 = new PN532(pn532spi);
LiquidCrystal_I2C lcd(0x27, 16, 2); // set the LCD address to 0x27 for a 16 chars and 2 line display

char data[5];
boolean newData = false;

void setup(void) {
  Serial.begin(57600);
  Serial.println("Start");
  pn532->begin();
  pn532->SAMConfig();

  pinMode(PRICE1RELAYPIN, OUTPUT);
  pinMode(PRICE1SENSEPIN, INPUT_PULLUP);


  lcd.init();                      // initialize the lcd

  lcd.backlight();
  lcd.setCursor(3, 0);
  lcd.print("Hello, world!");
}

void loop(void) {
  uint8_t uid[7];
  uint32_t uidLength = 0;

  if (pn532->readPassiveTargetID(PN532_MIFARE_ISO14443A, uid, (uint8_t*)&uidLength, 5000)) {
    PN532::PrintHex(uid, uidLength);
  }

  readSerialBuffer();

  if (newData == true) {
    Serial.println(data);
    addCard(data);
    newData = false;

    char test[4];

    test[0] = '1';
    test[1] = '2';
    test[2] = '3';
    test[3] = '8';
    
    Serial.println(getCard(test));
  }


  //    digitalWrite(PRICE1RELAYPIN, HIGH);


  //    if(digitalRead(PRICE1SENSEPIN) == HIGH){
  //      // do stuff
  //    }

}

void readSerialBuffer() {

  if (Serial.available() > 0 && newData == false) {
    char buff[32];

    newData = true;

    for (int j = 0; j < 32; j++) {
      buff[j] = '\0';
    }

    uint8_t i = 0;
    while (Serial.available()) {
      buff[i] = Serial.read();
      i++;
    }

    data[0] = buff[0];
    data[1] = buff[1];
    data[2] = buff[2];
    data[3] = buff[3];
  }

}
