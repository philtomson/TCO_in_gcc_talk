#include <stdint.h>
uint64_t fib_tc( uint8_t n) {
  uint64_t fib_helper(uint8_t n, uint64_t acc, uint64_t prev) {
    if(n == 0) 
      return acc;
    else
      return fib_helper( n-1, acc+prev, acc);
  }
  return fib_helper(n,1,0);
}


