#ifndef __CARDADMIN_H_
#define __CARDADMIN_H_

#include <inttypes.h>

void addCard(uint8_t value[]);
bool getCard(uint8_t value[]);
void listEEProm();
void clearEEProm();
void printId(uint8_t value[]);
bool compareId(uint8_t a[], uint8_t b[]);

#endif // __CARDADMIN_H_
