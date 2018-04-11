#ifdef __IN_ECLIPSE__
//This is a automatic generated file
//Please do not modify this file
//If you touch this file your change will be overwritten during the next build
//This file has been generated on 2018-04-12 01:24:09

#include "Arduino.h"
#include "Arduino.h"
#include "RF24.h"
#include "RF24Network.h"
#include "RF24Mesh.h"
#include <SPI.h>
#include <EEPROM.h>
#include "SSD1306Ascii.h"
#include "SSD1306AsciiSpi.h"
#include "avr/sleep.h"

void sensor_ISR() ;
int transmit_to_master(char str[], char msg_type, int size_of_str) ;
void setup() ;
void loop() ;

#include "Room_Occupancy_Node.ino"


#endif
