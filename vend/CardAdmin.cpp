#include "CardAdmin.h"
#include <Arduino.h>
#include <EEPROM.h>


void addCard(uint8_t value[]) {
  if (!getCard(value)) {
    Serial.println("Card not found adding...");

    uint8_t currAddr = EEPROM.read(0);
    if (currAddr > 254) {
      currAddr = 1;
    }

    Serial.print("Current nr of cards is: ");
    Serial.print(currAddr);
    Serial.print("\n");

    currAddr++;

    int addr = currAddr * 4;

    for (int i = 0; i < 4; i++) {
      uint8_t cval = value[i];
      EEPROM.write(addr + i, cval);
    }

    EEPROM.write(0, currAddr);

    Serial.print("Card with id: ");
    printId(value);
    Serial.print(" added... \n");
  } else {
    Serial.println("Card already exists...");
  }
}

bool getCard(uint8_t value[]) {
  uint8_t addr = EEPROM.read(0);

  bool result = false;

  for (int i = 4; i <= addr * 4; i = i + 4) {

    if (value[0] == EEPROM.read(i) && value[1] == EEPROM.read(i + 1) && value[2] == EEPROM.read(i + 2) && value[3] == EEPROM.read(i + 3)) {
      result = true;
      break;
    }
  }

  return result;
}

void listEEProm() {
  uint8_t addr = EEPROM.read(0);

  for (int i = 4; i <= addr * 4; i = i + 4) {

    uint8_t id[5];

    id[0] = EEPROM.read(i);
    id[1] = EEPROM.read(i + 1);
    id[2] = EEPROM.read(i + 2);
    id[3] = EEPROM.read(i + 3);
    id[4] = '\0';

    printId(id);
    Serial.println();
  }
}

void clearEEProm() {
  Serial.println("Clearing all EEprom memory");

  for (int i = 0 ; i < EEPROM.length() ; i++) {
    EEPROM.write(i, 0);
  }
}

void printId(uint8_t value[]) {
  for (byte j = 0; j < 4; j++)
    {
      Serial.print(value[j] < 0x10 ? " 0" : " ");
      Serial.print(value[j], HEX);
    }
}

bool compareId(uint8_t a[], uint8_t b[]) {
  if(a[0] == b[0] && a[1] == b[1] && a[2] == b[2] && a[3] == b[3]) {
    return true;
  }

  return false;
}
