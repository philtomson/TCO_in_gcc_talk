#include <stdint.h>
uint64_t fibonacci( uint8_t n )
{
  if(n == 0 || n == 1) { 
    return 1;
  }else {
    return (fibonacci(n-1) + fibonacci(n-2));
  }
}
