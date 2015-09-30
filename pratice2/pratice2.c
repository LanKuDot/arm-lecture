#include <stdio.h>

extern int rev( int a );
extern int revsh( int a );

int main()
{
	int a = 89190;
	printf( "Before:\t%08x\t%d\nAfter:\t%08x\t%d\n", a, a, rev(a), rev(a) );
	printf( "Before:\t%08x\t%d\nAfter:\t%08x\t%d\n", a, a, revsh(a), revsh(a) );

	return 0;
}
