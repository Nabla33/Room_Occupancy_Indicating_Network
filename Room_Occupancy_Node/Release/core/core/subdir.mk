################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\CDC.cpp \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\HardwareSerial.cpp \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\HardwareSerial0.cpp \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\HardwareSerial1.cpp \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\HardwareSerial2.cpp \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\HardwareSerial3.cpp \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\IPAddress.cpp \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\PluggableUSB.cpp \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\Print.cpp \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\Stream.cpp \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\Tone.cpp \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\USBCore.cpp \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\WMath.cpp \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\WString.cpp \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\abi.cpp \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\main.cpp \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\new.cpp 

S_UPPER_SRCS += \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\wiring_pulse.S 

C_SRCS += \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\WInterrupts.c \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\hooks.c \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\wiring.c \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\wiring_analog.c \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\wiring_digital.c \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\wiring_pulse.c \
D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\wiring_shift.c 

C_DEPS += \
.\core\core\WInterrupts.c.d \
.\core\core\hooks.c.d \
.\core\core\wiring.c.d \
.\core\core\wiring_analog.c.d \
.\core\core\wiring_digital.c.d \
.\core\core\wiring_pulse.c.d \
.\core\core\wiring_shift.c.d 

AR_OBJ += \
.\core\core\CDC.cpp.o \
.\core\core\HardwareSerial.cpp.o \
.\core\core\HardwareSerial0.cpp.o \
.\core\core\HardwareSerial1.cpp.o \
.\core\core\HardwareSerial2.cpp.o \
.\core\core\HardwareSerial3.cpp.o \
.\core\core\IPAddress.cpp.o \
.\core\core\PluggableUSB.cpp.o \
.\core\core\Print.cpp.o \
.\core\core\Stream.cpp.o \
.\core\core\Tone.cpp.o \
.\core\core\USBCore.cpp.o \
.\core\core\WInterrupts.c.o \
.\core\core\WMath.cpp.o \
.\core\core\WString.cpp.o \
.\core\core\abi.cpp.o \
.\core\core\hooks.c.o \
.\core\core\main.cpp.o \
.\core\core\new.cpp.o \
.\core\core\wiring.c.o \
.\core\core\wiring_analog.c.o \
.\core\core\wiring_digital.c.o \
.\core\core\wiring_pulse.S.o \
.\core\core\wiring_pulse.c.o \
.\core\core\wiring_shift.c.o 

S_UPPER_DEPS += \
.\core\core\wiring_pulse.S.d 

CPP_DEPS += \
.\core\core\CDC.cpp.d \
.\core\core\HardwareSerial.cpp.d \
.\core\core\HardwareSerial0.cpp.d \
.\core\core\HardwareSerial1.cpp.d \
.\core\core\HardwareSerial2.cpp.d \
.\core\core\HardwareSerial3.cpp.d \
.\core\core\IPAddress.cpp.d \
.\core\core\PluggableUSB.cpp.d \
.\core\core\Print.cpp.d \
.\core\core\Stream.cpp.d \
.\core\core\Tone.cpp.d \
.\core\core\USBCore.cpp.d \
.\core\core\WMath.cpp.d \
.\core\core\WString.cpp.d \
.\core\core\abi.cpp.d \
.\core\core\main.cpp.d \
.\core\core\new.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
core\core\CDC.cpp.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\CDC.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\HardwareSerial.cpp.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\HardwareSerial.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\HardwareSerial0.cpp.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\HardwareSerial0.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\HardwareSerial1.cpp.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\HardwareSerial1.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\HardwareSerial2.cpp.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\HardwareSerial2.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\HardwareSerial3.cpp.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\HardwareSerial3.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\IPAddress.cpp.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\IPAddress.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\PluggableUSB.cpp.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\PluggableUSB.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\Print.cpp.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\Print.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\Stream.cpp.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\Stream.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\Tone.cpp.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\Tone.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\USBCore.cpp.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\USBCore.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\WInterrupts.c.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\WInterrupts.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-gcc" -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -flto -fno-fat-lto-objects -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\WMath.cpp.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\WMath.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\WString.cpp.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\WString.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\abi.cpp.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\abi.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\hooks.c.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\hooks.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-gcc" -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -flto -fno-fat-lto-objects -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\main.cpp.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\main.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\new.cpp.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\new.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\wiring.c.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\wiring.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-gcc" -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -flto -fno-fat-lto-objects -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\wiring_analog.c.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\wiring_analog.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-gcc" -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -flto -fno-fat-lto-objects -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\wiring_digital.c.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\wiring_digital.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-gcc" -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -flto -fno-fat-lto-objects -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\wiring_pulse.S.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\wiring_pulse.S
	@echo 'Building file: $<'
	@echo 'Starting S compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-gcc" -c -g -x assembler-with-cpp -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\wiring_pulse.c.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\wiring_pulse.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-gcc" -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -flto -fno-fat-lto-objects -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\wiring_shift.c.o: D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino\wiring_shift.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-gcc" -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -flto -fno-fat-lto-objects -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0" -I"D:\sloeber\arduinoPlugin\libraries\RF24\1.3.0\utility" -I"D:\sloeber\arduinoPlugin\libraries\RF24Mesh\1.0.51" -I"D:\sloeber\arduinoPlugin\libraries\RF24Network\1.0.8" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\SPI\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.19\libraries\Wire\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


