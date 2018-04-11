#include "Arduino.h"

#include "RF24.h"
#include "RF24Network.h"
#include "RF24Mesh.h"
#include <SPI.h>
#include <EEPROM.h>

#include "SSD1306Ascii.h"
#include "SSD1306AsciiSpi.h"

#include "avr/sleep.h"

// pin definitions
#define OLED_DC 6
#define OLED_CS 7
#define OLED_RST 8

#define MAX_RETRIES 60

int num_of_retries = MAX_RETRIES;

#define DEBUG

#ifdef DEBUG
    #define DEBUG_BEGIN(x)    Serial.begin(x)
    #define DEBUG_PRINT(x)    Serial.print(x)
    #define DEBUG_PRINTLN(x)  Serial.println(x)
    #define OLED_CLR()        oled.clear()
    #define OLED_PRINT(x)     oled.print(x)
    #define OLED_PRINTLN(x)   oled.println(x)
    #define DEBUG_DELAY(x)    delay(x)
#else
    #define DEBUG_BEGIN(x)
    #define DEBUG_PRINT(x)
    #define DEBUG_PRINTLN(x)
    #define OLED_CLR()
    #define OLED_PRINT(x)
    #define OLED_PRINTLN(x)
    #define DEBUG_DELAY(x)
#endif

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
#define node_ID 1

char send_packet[] = "001-0\n";

struct payload_t {
        unsigned long ms;
        unsigned long counter;
};

int sensor_pin = 3;

int last_sensor_state = LOW;
int current_sensor_state = LOW;

bool sensor_interrupt_flag = false;


void sensor_ISR() {
    sensor_interrupt_flag = true;
}

int transmit_to_master(char str[], char msg_type, int size_of_str) {

    if (!mesh.write(str, msg_type, size_of_str)) {

        // If a write fails, check connectivity to the mesh network
        if (!mesh.checkConnection()) {
            //refresh the network address
            OLED_CLR();
            OLED_PRINTLN("Renewing");
            OLED_PRINTLN("Address");
            DEBUG_PRINTLN("Renewing Address");
            mesh.renewAddress();
        }
        else {
            OLED_CLR();
            OLED_PRINTLN("Send fail");

            DEBUG_PRINTLN("Send fail");
        }

        return 0;
    }
    else {
        OLED_CLR();
        OLED_PRINTLN("Send OK: ");
        OLED_PRINTLN(str);

        DEBUG_PRINT("Send OK: ");
        DEBUG_PRINTLN(str);

        return 1;
    }
}



void setup() {

    ADCSRA = 0;  // disable ADC

    pinMode(sensor_pin, INPUT);
    attachInterrupt(digitalPinToInterrupt(sensor_pin), sensor_ISR, CHANGE);

    radio.begin();
    radio.setPALevel(RF24_PA_HIGH);
    radio.setDataRate(RF24_1MBPS);

    #ifdef DEBUG
        oled.begin(&Adafruit128x64, OLED_CS, OLED_DC, OLED_RST);
        oled.setFont(System5x7);
        OLED_CLR();
        oled.set2X();
    #endif

    DEBUG_BEGIN(115200);
    //printf_begin();
    // Set the nodeID manually
    mesh.setNodeID(node_ID);
    // Connect to the mesh

    OLED_PRINTLN("Starting..");
    DEBUG_PRINTLN(F("Starting.."));

    mesh.begin();

    OLED_CLR();
    OLED_PRINTLN("Standing");
    OLED_PRINTLN("by...");

    DEBUG_PRINTLN(F("Standing by..."));

}

void loop() {
    mesh.update();

    if (sensor_interrupt_flag) {
        OLED_CLR();
        OLED_PRINTLN("Interrupt!");

        current_sensor_state = digitalRead(sensor_pin);

        if (current_sensor_state != last_sensor_state) {
            last_sensor_state = current_sensor_state;

            if (current_sensor_state == HIGH)
                send_packet[4] = '1';
            else
                send_packet[4] = '0';

            num_of_retries = MAX_RETRIES;

            DEBUG_PRINTLN(send_packet);

            while(!transmit_to_master(send_packet, 'M', sizeof(send_packet))){
                delay(500);
                num_of_retries--;

                if (num_of_retries == 0) {
                    OLED_CLR();
                    OLED_PRINTLN("Max retries");
                    OLED_PRINTLN("exceeded!");

                    DEBUG_PRINTLN("Max retries exceeded!");

                    break;
                }
            }

        }

        sensor_interrupt_flag = false;

        DEBUG_DELAY(500);

        OLED_CLR();
        OLED_PRINTLN("Standing");
        OLED_PRINTLN("by...");
    }

    while (network.available()) {
        RF24NetworkHeader header;
        payload_t payload;
        network.read(header, &payload, sizeof(payload));

        OLED_CLR();
        OLED_PRINT("Received packet #");
        OLED_PRINT(payload.counter);
        OLED_PRINT(" at ");
        OLED_PRINTLN(payload.ms);

        DEBUG_PRINT("Received packet #");
        DEBUG_PRINT(payload.counter);
        DEBUG_PRINT(" at ");
        DEBUG_PRINTLN(payload.ms);
    }
}
