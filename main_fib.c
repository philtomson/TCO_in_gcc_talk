#include <stdio.h>
#include <stdint.h>

extern uint64_t fib(uint8_t n);

int main(int argc, char* argv[]) {
  if (argc != 2) {
    printf("usage: %s <integer>\n",argv[0]);
  }
  else {
    printf("answer: %d\n",fib(atoi(argv[1])));
  }
  return 0;
}
