 /** RF24Mesh_Example_Master.ino by TMRh20
  * 
  *
  * This example sketch shows how to manually configure a node via RF24Mesh as a master node, which
  * will receive all data from sensor nodes.
  *
  * The nodes can change physical or logical position in the network, and reconnect through different
  * routing nodes as required. The master node manages the address assignments for the individual nodes
  * in a manner similar to DHCP.
  *
  */
  
  
#include "RF24Network.h"
#include "RF24.h"
#include "RF24Mesh.h"
#include <SPI.h>
//Include eeprom.h for AVR (Uno, Nano) etc. except ATTiny
#include <EEPROM.h>

#include "SSD1306Ascii.h"
#include "SSD1306AsciiSpi.h"

// pin definitions
#define OLED_DC 6
#define OLED_CS 7
#define OLED_RST 8

SSD1306AsciiSpi oled;

/***** Configure the chosen CE,CS pins *****/
RF24 radio(10,5);
RF24Network network(radio);
RF24Mesh mesh(radio,network);

uint32_t displayTimer = 0;

void setup() {
  radio.begin();
  radio.setPALevel(RF24_PA_HIGH);

  oled.begin(&Adafruit128x64, OLED_CS, OLED_DC, OLED_RST);
  oled.setFont(System5x7);
  oled.clear();
  oled.set2X();

  oled.println("**Master**");
  
  Serial.begin(115200);

  // Set the nodeID to 0 for the master node
  mesh.setNodeID(0);
  
  Serial.println(mesh.getNodeID());
  // Connect to the mesh
  mesh.begin();
}

void loop() {    
  // Call mesh.update to keep the network updated
  mesh.update();
  // In addition, keep the 'DHCP service' running on the master node so addresses will
  // be assigned to the sensor nodes
  mesh.DHCP();
  
  // Check for incoming data from the sensors
  if(network.available()){
    //Serial.println("available!");
    RF24NetworkHeader header;
    network.peek(header);
    uint32_t dat=0;
    switch(header.type){
      // Display the incoming millis() values from the sensor nodes
      case 'M': network.read(header,&dat,sizeof(dat)); Serial.println(dat); break;
      default: network.read(header,0,0); Serial.println(header.type);break;
    }
  }
  
  if(millis() - displayTimer > 5000){
    displayTimer = millis();
      
    Serial.println(" ");
    Serial.println(F("********Assigned Addresses********"));
    int count = 0;
     for(int i=0; i<mesh.addrListTop; i++){
       Serial.print("NodeID: ");
       Serial.print(mesh.addrList[i].nodeID);
       Serial.print(" RF24Network Address: 0");
       Serial.println(mesh.addrList[i].address,OCT);  
       count++; 
     }

     oled.clear();
     oled.println("**Master**");
     oled.print("Nodes: ");
     oled.println(count);
     
    Serial.println(F("**********************************"));
  }
}
