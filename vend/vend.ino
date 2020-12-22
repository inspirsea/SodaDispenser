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
LiquidCrystal_I2C lcd(0x27,16,2);  // set the LCD address to 0x27 for a 16 chars and 2 line display

void setup(void) {
    Serial.begin(57600);
    Serial.println("Start");
    pn532->begin();
    pn532->SAMConfig();

    pinMode(PRICE1RELAYPIN, OUTPUT);
    pinMode(PRICE1SENSEPIN, INPUT_PULLUP);


    lcd.init();                      // initialize the lcd 

    lcd.backlight();
    lcd.setCursor(3,0);
    lcd.print("Hello, world!");
}
 
void loop(void) {
    uint8_t uid[7];
    uint32_t uidLength = 0;

    if(pn532->readPassiveTargetID(PN532_MIFARE_ISO14443A, uid, (uint8_t*)&uidLength, 5000)){
      PN532::PrintHex(uid, uidLength);
    }


    uint16_t addr=123;
    EEPROM.write(addr, 123);
    for(addr=0; addr<1024; addr++){
      uint8_t value = EEPROM.read(addr);
    }
    
//    digitalWrite(PRICE1RELAYPIN, HIGH);


//    if(digitalRead(PRICE1SENSEPIN) == HIGH){
//      // do stuff      
//    }

}
