/** RF24Mesh_Example.ino by TMRh20
 *
 * This example sketch shows how to manually configure a node via RF24Mesh, and send data to the
 * master node.
 * The nodes will refresh their network address as soon as a single write fails. This allows the
 * nodes to change position in relation to each other and the master node.
 */

#include "RF24.h"
#include "RF24Network.h"
#include "RF24Mesh.h"
#include <SPI.h>
#include <EEPROM.h>

#include "SSD1306Ascii.h"
#include "SSD1306AsciiSpi.h"
//#include <printf.h>

// pin definitions
#define OLED_DC 6
#define OLED_CS 7
#define OLED_RST 8

SSD1306AsciiSpi oled;


/**** Configure the nrf24l01 CE and CS pins ****/
RF24 radio(10, 5);
RF24Network network(radio);
RF24Mesh mesh(radio, network);

/**
 * User Configuration: nodeID - A unique identifier for each radio. Allows addressing
 * to change dynamically with physical changes to the mesh.
 *
 * In this example, configuration takes place below, prior to uploading the sketch to the device
 * A unique value from 1-255 must be configured for each node.
 * This will be stored in EEPROM on AVR devices, so remains persistent between further uploads, loss of power, etc.
 *
 **/
#define nodeID 4


uint32_t displayTimer = 0;

struct payload_t {
  unsigned long ms;
  unsigned long counter;
};

void setup() {

  radio.begin();
  radio.setPALevel(RF24_PA_HIGH);

  oled.begin(&Adafruit128x64, OLED_CS, OLED_DC, OLED_RST);
  oled.setFont(System5x7);
  oled.clear();

  Serial.begin(115200);
  //printf_begin();
  // Set the nodeID manually
  mesh.setNodeID(nodeID);
  // Connect to the mesh

  oled.set2X();
  oled.println("Connecting...");
  
  Serial.println(F("Connecting..."));
  mesh.begin();

  Serial.println("begun!");
  
}



void loop() {
  mesh.update();

  // Send to the master node every second
  if (millis() - displayTimer >= 1000) {
    displayTimer = millis();

    // Send an 'M' type message containing the current millis()
    if (!mesh.write(&displayTimer, 'M', sizeof(displayTimer)))    {

      // If a write fails, check connectivity to the mesh network
      if ( ! mesh.checkConnection() ) 
      {
        //refresh the network address
        oled.clear();
        oled.println("Renewing Address");
        Serial.println("Renewing Address");
        mesh.renewAddress();
      }
      else
      {
        oled.clear();
        oled.println("Send fail, Test OK");
        
        Serial.println("Send fail, Test OK");
      }
    }
    else
    {
      oled.clear();
      oled.println("Send OK: ");
      oled.println(displayTimer);
      
      Serial.print("Send OK: "); 
      Serial.println(displayTimer);
    }
  }

  while (network.available()) {
    RF24NetworkHeader header;
    payload_t payload;
    network.read(header, &payload, sizeof(payload));

    oled.clear();
    oled.print("Received packet #");
    oled.print(payload.counter);
    oled.print(" at ");
    oled.println(payload.ms);
    
    Serial.print("Received packet #");
    Serial.print(payload.counter);
    Serial.print(" at ");
    Serial.println(payload.ms);
  }
}
