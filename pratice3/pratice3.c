#include <stdio.h>

#define _BV(x) ( 1 << (x) )

extern unsigned int cmp( int a, int b );
int checkFlag( unsigned int target, int bit );

int main()
{
	int cpsr = cmp( 2, 5 );
	printf( "cmp( 2, 5 ) CPSR: [N]%d [Z]%d [C]%d [V]%d\n", checkFlag( cpsr, 31 ), checkFlag( cpsr, 30 ), checkFlag( cpsr, 29 ), checkFlag( cpsr, 28 ) );
	cpsr = cmp( -2, 5 );
	printf( "cmp( -2, 5 ) CPSR: [N]%d [Z]%d [C]%d [V]%d\n", checkFlag( cpsr, 31 ), checkFlag( cpsr, 30 ), checkFlag( cpsr, 29 ), checkFlag( cpsr, 28 ) );
	cpsr = cmp( -5, -5 );
	printf( "cmp( -5, -5 ) CPSR: [N]%d [Z]%d [C]%d [V]%d\n", checkFlag( cpsr, 31 ), checkFlag( cpsr, 30 ), checkFlag( cpsr, 29 ), checkFlag( cpsr, 28 ) );
	cpsr = cmp( 0, 0 );
	printf( "cmp( 0, 0 ) CPSR: [N]%d [Z]%d [C]%d [V]%d\n", checkFlag( cpsr, 31 ), checkFlag( cpsr, 30 ), checkFlag( cpsr, 29 ), checkFlag( cpsr, 28 ) );
	cpsr = cmp( 2, 2 );
	printf( "cmp( 2, 2 ) CPSR: [N]%d [Z]%d [C]%d [V]%d\n", checkFlag( cpsr, 31 ), checkFlag( cpsr, 30 ), checkFlag( cpsr, 29 ), checkFlag( cpsr, 28 ) );
	cpsr = cmp( 2, -5 );
	printf( "cmp( 2, -5 ) CPSR: [N]%d [Z]%d [C]%d [V]%d\n", checkFlag( cpsr, 31 ), checkFlag( cpsr, 30 ), checkFlag( cpsr, 29 ), checkFlag( cpsr, 28 ) );
	cpsr = cmp( -2, -5 );
	printf( "cmp( -2, -5 ) CPSR: [N]%d [Z]%d [C]%d [V]%d\n", checkFlag( cpsr, 31 ), checkFlag( cpsr, 30 ), checkFlag( cpsr, 29 ), checkFlag( cpsr, 28 ) );
	return 0;
}

int checkFlag( unsigned int target, int bit )
{
	return ( target & _BV(bit) ) ? 1 : 0;
}
