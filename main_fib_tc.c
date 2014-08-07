#include <stdio.h>
#include <stdint.h>

extern long long int fib_tc(uint32_t n);

int main(int argc, char* argv[]) {
  if (argc != 2) {
    printf("usage: %s <integer>\n",argv[0]);
  }
  else {
    printf("answer: %d\n",fib_tc(atoi(argv[1])));
  }
  return 0;
}

