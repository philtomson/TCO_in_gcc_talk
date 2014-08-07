#include <stdint.h>
uint64_t fib( uint32_t n )
{
  if(n < 2) { 
    return n;
  }else {
    return (fib(n-1) + fib(n-2));
  }
}

