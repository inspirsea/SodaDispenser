void addCard(char value[]) {
  uint8_t currAddr = EEPROM.read(0);
  int addr = currAddr * 4;
  Serial.println(currAddr);

  currAddr++;

  for (int i = 0; i < 4; i++) {
    uint8_t cval = value[i] - 0;
    EEPROM.write(addr + i, cval);
  }

  EEPROM.write(0, currAddr);
}

bool getCard(char value[]) {
  uint8_t addr = EEPROM.read(0);

  bool result = false;

  for(int i = 4; i <= addr * 4; i = i + 4) {
    if(value[0] - 0 == EEPROM.read(i) && value[1] - 0 == EEPROM.read(i + 1) && value[2] - 0 == EEPROM.read(i + 2) && value[3] - 0 == EEPROM.read(i + 3)) {
      result = true;
      break;  
    }
  }

  return result;
  
}
