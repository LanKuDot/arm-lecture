#include <stdio.h>

extern int add( unsigned int a, unsigned int b );
extern int addCheckCarry( unsigned int a, unsigned int b );
extern int adc( unsigned int a, unsigned int b, unsigned int c );

int main()
{
	printf( "addCheckCarry( 5, 1 ) = %d\n", addCheckCarry( 5, 1 ) );
	printf( "addCheckCarry( 4294967295, 1 ) = %d\n", addCheckCarry( 4294967295, 1 ) );
	printf( "adc( 1, 5, 1 ) = %d\n", adc( 1, 5, 1 ) );
	printf( "adc( 1, 4294967295, 1 ) = %d\n", adc( 1, 4294967295, 1 ) );
	return 0;
}
