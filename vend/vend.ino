#include <deprecated.h>
#include <MFRC522.h>
#include <MFRC522Extended.h>
#include <require_cpp11.h>

#include <SPI.h>
#include <EEPROM.h>
#include <Wire.h>
#include "PN532.h"
#include "PN532_SPI.h"
#include "LiquidCrystal_I2C.h"

#define SS_PIN 10
#define RST_PIN 9

#define PRICE1RELAYPIN 7
#define PRICE2RELAYPIN 6
#define PRICE1SENSEPIN 5
#define PRICE2SENSEPIN 4
#define BLOCKSENSEPIN  3
//A0-A5 LCD

//#define DEBUG
MFRC522 mfrc522(SS_PIN, RST_PIN);
PN532_SPI pn532spi(SPI, 10);
PN532* pn532 = new PN532(pn532spi);
LiquidCrystal_I2C lcd(0x27, 16, 2); // set the LCD address to 0x27 for a 16 chars and 2 line display

uint8_t data[5];
bool newData = false;
unsigned long adminScanTime = 0;
int adminScanDelay = 10000;
uint8_t adminCard[4] = {177, 177, 177, 177};
uint8_t clearCommand[4] = {173, 227, 236, 242};
uint8_t listCommand[4] = {173, 236, 243, 244};

void setup(void) {
  Serial.begin(57600);
  Serial.println("Start");
  pn532->begin();
  pn532->SAMConfig();

  pinMode(PRICE1RELAYPIN, OUTPUT);
  pinMode(PRICE1SENSEPIN, INPUT_PULLUP);

  SPI.begin();
  mfrc522.PCD_Init();

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
  scanRFID();

  if (newData == true) {

    handleInput();

    newData = false;
  }

  //    digitalWrite(PRICE1RELAYPIN, HIGH);


  //    if(digitalRead(PRICE1SENSEPIN) == HIGH){
  //      // do stuff
  //    }
  delay(500);
}

void handleInput() {
  if (compareId(data, adminCard)) {
    Serial.println("Admin card scanned...");

    adminScanTime = millis();
  } else {
    if (compareId(data, clearCommand) && adminCardIsScaned()) {
      clearEEProm();
      adminScanTime = 0;
    } else if (compareId(data, listCommand) && adminCardIsScaned()) {
      listEEProm();
      adminScanTime = 0;
    } else {
      checkOrAddCard();
    }
  }
}

void checkOrAddCard() {
  if (getCard(data)) {
        // Valid card do some stuff
        Serial.print("Card is valid id is: ");
        printId(data);
        Serial.print("\n");

      } else {
        if (adminCardIsScaned()) {
          addCard(data);
          adminScanTime = 0;
        } else {
          Serial.println("Card not found scan admin card to add...");
        }
      }
}

bool adminCardIsScaned() {
  return (adminScanTime + adminScanDelay) > millis() && adminScanTime > adminScanDelay;
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

    if (i != 4) {
      newData = false;
      Serial.println("Corrupt read");
      return;
    }

    data[0] = buff[0] + 128;
    data[1] = buff[1] + 128;
    data[2] = buff[2] + 128;
    data[3] = buff[3] + 128;
  }
}

void scanRFID() {
  // Look for new cards
  if ( ! mfrc522.PICC_IsNewCardPresent())
  {
    return;
  }
  // Select one of the cards
  if ( ! mfrc522.PICC_ReadCardSerial())
  {
    return;
  }

  newData = true;

  data[0] = mfrc522.uid.uidByte[0];
  data[1] = mfrc522.uid.uidByte[1];
  data[2] = mfrc522.uid.uidByte[2];
  data[3] = mfrc522.uid.uidByte[3];

}
