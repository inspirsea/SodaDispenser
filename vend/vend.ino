/**
 * SodaDispenser controller
 * ------------------------
 * 
 * Arduino pin usage
 * -----------------
 *  
 * D3  block sense, PCINT19 input internal pullup (from optocoupler)
 * D4  price 2 sense, PCINT20 input internal pullup (from optocoupler)
 * D5  price 1 sense, PCINT21 input internal pullup (from optocoupler)
 * D6  price 2 relay, output
 * D7  price 1 relay, output
 * 
 * D9  RST MFRC522
 * D10 SS MFRC522
 * D11 MOSI MFRC522
 * D12 MISO MFRC522
 * D13 SCK MFRC522
 * 
 * A4 LCD SDA
 * A5 LCD SCL
 * 
 */

#include <SPI.h>
#include "deprecated.h"
#include "MFRC522.h"
#include "MFRC522Extended.h"
#include "require_cpp11.h"

#include "LiquidCrystal_I2C.h"

#include "CardAdmin.h"


#define SS_PIN 10
#define RST_PIN 9

#define PRICE1RELAYPIN 7
#define PRICE2RELAYPIN 6
#define PRICE1SENSEPIN 5
#define PRICE2SENSEPIN 4
#define BLOCKSENSEPIN  3
//A0-A5 LCD

MFRC522 mfrc522(SS_PIN, RST_PIN);
LiquidCrystal_I2C lcd(0x27, 16, 2); // set the LCD address to 0x27 for a 16 chars and 2 line display

uint8_t data[5];
bool newData = false;
unsigned long adminScanTime = 0;
int adminScanDelay = 10000;
uint8_t adminCard[4] = {177, 177, 177, 177};
uint8_t clearCommand[4] = {173, 227, 236, 242};
uint8_t listCommand[4] = {173, 236, 243, 244};


typedef enum vendstate {
  VS_INIT = 0, 
  VS_CARD,
  VS_ADMIN,
  VS_BUTTON,
  VS_VEND,
  VS_CHECK_BLOCK,
  VS_NOP,
} vendstate_t;


void vend_fsm(){
  static unsigned long prev_millis = millis();
  static unsigned int timeout=0;
  static vendstate_t state = VS_INIT;
  unsigned long int tdiff = millis() - prev_millis;
  
  if(tdiff){
    timeout = (timeout > tdiff) ? (timeout - tdiff) : 0;
    state = (state <= VS_CARD || timeout) ? state : VS_INIT;
  }

  switch(state) {
    case VS_INIT:
      // LCD clear and backlight off;
      // Turn off relays
      state = VS_CARD;
      break;
    case VS_CARD:
      if(tdiff /* && card */) {
        // read & validate card
        timeout = 10000;
        state = VS_BUTTON; // or VS_ADMIN if admin card, else VS_NOP (and put LCD error)
      }
      break;
    case VS_ADMIN:
      // Check if another card can be read.
      // If so, add card and state = VS_INIT;
      // fall-through
    case VS_BUTTON:
      // Check Block 
      if(digitalRead(PRICE1SENSEPIN) == LOW){
        digitalWrite(PRICE1RELAYPIN, HIGH);
        timeout = 200;
        // LCD put stuff
        state = VS_VEND;
      }
      else if(digitalRead(PRICE2SENSEPIN) == LOW){
        digitalWrite(PRICE2RELAYPIN, HIGH);
        timeout = 200;
        // LCD put stuff
        state = VS_VEND;
      }
      break;
    case VS_VEND:
      if(timeout < 150){
        digitalWrite(PRICE1RELAYPIN, LOW);
        digitalWrite(PRICE2RELAYPIN, LOW);
        state = VS_CHECK_BLOCK;
      }
      break;
    case VS_CHECK_BLOCK:
      if(digitalRead(BLOCKSENSEPIN) == LOW){
        timeout = 5000;
        // LCD put ok
        state = VS_NOP;
      }
      break;
    case VS_NOP:
      // do nothing (until timeout)
      break;
    
  }
  
  prev_millis += tdiff;
}


void setup(void) {
  Serial.begin(57600);
  Serial.println("Start");

  // Init vending pins
  pinMode(PRICE1RELAYPIN, OUTPUT);
  pinMode(PRICE2RELAYPIN, OUTPUT);
  pinMode(PRICE1SENSEPIN, INPUT_PULLUP);
  pinMode(PRICE2SENSEPIN, INPUT_PULLUP);
  pinMode(BLOCKSENSEPIN, INPUT_PULLUP);

  // Init RFID
  SPI.begin();
  mfrc522.PCD_Init();

  // Init LCD
  lcd.init();

  lcd.backlight();
  lcd.setCursor(3, 0);
  lcd.print("Hello, world!");
}

/*
void loop(){
	vend_fsm();
	handleInput();
	// do more stuff?
}
*/

void loop(void) {
  uint8_t uid[7];
  uint32_t uidLength = 0;

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
