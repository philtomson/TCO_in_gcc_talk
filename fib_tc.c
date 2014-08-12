#include <stdint.h>
#include <stdio.h>
uint64_t fib_rec(uint32_t n, uint64_t acc, uint64_t prev) {
#ifdef DEBUG
  printf("fib_rec(n=%d, acc=%d, prev=%d)\n",n,acc,prev);
#endif
  if(n == 0) 
    return acc;
  else
    return fib_rec( n-1, acc+prev, acc);
}

uint64_t fib_tc( uint32_t x) {
  if( x < 2)
    return x;
  else
    return fib_rec(x-1,1,0);
} 

