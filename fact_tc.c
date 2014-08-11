/*
let fact_tc' n = 
     let rec fact' n' acc = 
     (Printf.printf "n is: %d, acc is: %d\n" n' acc );
     match n' with
     | 0 ->  acc
     | _ ->  fact' (n'-1) (acc*n')  in
     fact' n 1  ;;
     */

long fact_rec(long n, long acc) {
  if( n == 0 ){
    return acc;
  } else {
    return fact_rec( n-1, n*acc);
  }
}

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
