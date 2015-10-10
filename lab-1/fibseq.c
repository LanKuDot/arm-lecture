#include <stdio.h>
#ifdef TIME_PLOT
  #include <time.h>
#endif

extern int recursive(int x);

int main(int argc, char **argv)
{
  int number=0;
  int result=0;

#ifdef TIME_PLOT
  FILE *fp = fopen( "recursive.txt", "w" );
  clock_t cpuTick = 0;
  for ( number = 1; number < 31; ++number )
  {
	cpuTick = clock();
	recursive( number );
	cpuTick = clock() - cpuTick;
	fprintf( fp, "%d\t%ld\n", number, (long)cpuTick );
  }
  fclose( fp );
#else
  scanf("%d",&number);
  result = recursive(number);   
  printf("The fibonacci sequence at %d is: %d\n", number, result);
#endif

  return 0;
}

