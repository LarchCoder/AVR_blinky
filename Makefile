PROJECT=avr_blinky
	
all:
	avr-gcc -mmcu=atmega8 -Wall -I./ -o $(PROJECT).out main.c
	avr-objcopy -j .text -O ihex $(PROJECT).out $(PROJECT).hex
	
flash: $(PROJECT).hex
	avrdude -p m8 -c usbasp -e -U flash:w:$(PROJECT).hex
	
clean:
	rm -f $(PROJECT).o
	rm -f $(PROJECT).out
	rm -f $(PROJECT).map
	rm -f $(PROJECT).hex