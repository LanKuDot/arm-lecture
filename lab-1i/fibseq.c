#include <stdio.h>
#include <time.h>

extern int fibonacci(int x);

int main(int argc, char **argv)
{
  int number=0;
  clock_t clockTick;
  FILE *fp = fopen( "non-recursive.txt", "w" );

  for ( number = 1; number < 31; ++number )
  {
	clockTick = clock();
	fibonacci( number );
	clockTick = clock() - clockTick;
	fprintf( fp, "%d\t%ld\n", number, clockTick );
  }

  fclose( fp );
  return 0;

}

