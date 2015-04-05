#define F_CPU 1000000UL  /* 1 MHz Internal Oscillator */
#include <avr/io.h>
#include <inttypes.h>
#include <util/delay.h>


int main (void)
{
	DDRC = _BV (PC0);

	while (1)
	{
		PORTC &= ~_BV(PC0);
		_delay_ms(1000);

		PORTC |= _BV(PC0);
		_delay_ms(1000);
	}

	return 1;
}
