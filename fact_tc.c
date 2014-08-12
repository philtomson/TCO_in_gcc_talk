/* fact_tc - factorial with tail call optimization
 *
 */

#include <stdio.h>

long fact_rec(long n, long acc) {
#ifdef DEBUG  
  printf("fact(%d,%d)\n",n,acc);
#endif
  if( n == 0 ){
    return acc;
  } else {
    return fact_rec( n-1, n*acc);
  }
}

long fact_tc(long n) {
  return fact_rec(n,1);
}

