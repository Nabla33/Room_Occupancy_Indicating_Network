################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:\Users\Srijal\Documents\Arduino\libraries\RF24\RF24.cpp 

LINK_OBJ += \
.\libraries\RF24\RF24.cpp.o 

CPP_DEPS += \
.\libraries\RF24\RF24.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries\RF24\RF24.cpp.o: C:\Users\Srijal\Documents\Arduino\libraries\RF24\RF24.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=8000000L -DARDUINO=10802 -DARDUINO_AVR_PRO -DARDUINO_ARCH_AVR   -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\cores\arduino" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\variants\eightanaloginputs" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM" -I"C:\Users\Srijal\Documents\Arduino\libraries\RF24" -I"C:\Users\Srijal\Documents\Arduino\libraries\RF24Mesh" -I"C:\Users\Srijal\Documents\Arduino\libraries\RF24Network" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\SPI" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii" -I"C:\Users\Srijal\Documents\Arduino\libraries\SSD1306Ascii\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\SPI\src" -I"D:\sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src" -I"C:\Users\Srijal\Documents\Arduino\libraries\RF24\utility" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


