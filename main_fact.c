/* fact - recursive factorial implementation
 *
 */


extern long fact(long n);

#include <stdio.h>
int main(int argc, char* argv[]) {
  if(argc !=2) {
    printf("usage: %s <integer>\n",argv[0]);
  } else {
    long n = atoi(argv[1]);
    printf("%d! is: %d\n",n,fact(n));
  }
  return 0;
} 
