#include "Arduino.h"

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

#define DEBUG

#ifdef DEBUG
    #define DEBUG_BEGIN(x)    Serial.begin(x)
    #define DEBUG_PRINT(x)    Serial.print(x)
    #define DEBUG_PRINTLN(x)  Serial.println(x)
    #define DEBUG_PRINTLN_OCT(x, y)  Serial.println(x, y)
    #define OLED_CLR()        oled.clear()
    #define OLED_PRINT(x)     oled.print(x)
    #define OLED_PRINTLN(x)   oled.println(x)
#else
    #define DEBUG_BEGIN(x)
    #define DEBUG_PRINT(x)
    #define DEBUG_PRINTLN(x)
    #define OLED_CLR()
    #define OLED_PRINT(x)
    #define OLED_PRINTLN(x)
#endif


SSD1306AsciiSpi oled;

/***** Configure the chosen CE,CS pins *****/
RF24 radio(10, 5);
RF24Network network(radio);
RF24Mesh mesh(radio, network);

char received_packet[] = "000-0";

long long print_timer = 0;

void setup() {
    radio.begin();
    radio.setPALevel(RF24_PA_HIGH);
    radio.setDataRate(RF24_1MBPS);

    oled.begin(&Adafruit128x64, OLED_CS, OLED_DC, OLED_RST);
    oled.setFont(System5x7);
    OLED_CLR();
    oled.set2X();

    OLED_PRINTLN("**Master**");

    DEBUG_BEGIN(115200);

    // Set the nodeID to 0 for the master node
    mesh.setNodeID(0);

    DEBUG_PRINTLN(mesh.getNodeID());
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
    if (network.available()) {
        //DEBUG_PRINTLN("available!");
        RF24NetworkHeader header;
        network.peek(header);
        switch (header.type) {
            // Display the incoming millis() values from the sensor nodes
            case 'M':
                network.read(header, &received_packet, sizeof(received_packet) + 1);
                DEBUG_PRINTLN(received_packet);

                OLED_CLR();
                OLED_PRINTLN("Received: ");
                OLED_PRINTLN(received_packet);

                break;
            default:
                network.read(header, 0, 0);
                DEBUG_PRINTLN(header.type);
                break;
        }
    }

    if (millis() - print_timer > 5000) {
        print_timer = millis();

        DEBUG_PRINTLN(" ");
        DEBUG_PRINTLN(F("********Assigned Addresses********"));
        int count = 0;
        for (int i = 0; i < mesh.addrListTop; i++) {
            DEBUG_PRINT("NodeID: ");
            DEBUG_PRINT(mesh.addrList[i].nodeID);
            DEBUG_PRINT(" RF24Network Address: 0");
            DEBUG_PRINTLN_OCT(mesh.addrList[i].address, OCT);
            count++;
        }

        OLED_CLR();
        OLED_PRINTLN("**Master**");
        OLED_PRINT("Nodes: ");
        OLED_PRINTLN(count);

        DEBUG_PRINTLN(F("**********************************"));
    }
}
