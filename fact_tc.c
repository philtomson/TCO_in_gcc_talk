/* fact_tc - factorial with tail call optimization
 *
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

