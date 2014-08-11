/* main_fact_tc - factorial with tail call optimization
 *
 */

extern long fact_rec(long n, long acc);

long fact_tc(long n) {
  return fact_rec(n,1);
}

#include <stdio.h>
int main(int argc, char* argv[]) {
  if(argc !=2) {
    printf("usage: %s <integer>\n",argv[0]);
  } else {
    long n = atoi(argv[1]);
    printf("%d! is: %d\n",n,fact_tc(n));
  }
  return 0;
} 
