#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

extern uint64_t fib_tc(uint32_t n);

int main(int argc, char* argv[]) {
  if (argc != 2) {
    printf("usage: %s <integer>\n",argv[0]);
  }
  else {
    int n = atoi(argv[1]);
    printf("fib(%d) = %d\n",n, fib_tc(n));
  }
  return 0;
}

