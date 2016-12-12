/* 
 * integral.cc
 */

#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <x86intrin.h>

/* INTEGRAL_H is defined in the command line with
   -DINTEGRAL_H="integral0.h" etc. */
#include INTEGRAL_H

long long diff_tsc(long long c1, long long c0) {
  /* want to know what the heck is this *(2.7/2.3)?
     => see the exercise page */
  //return (c1 - c0) * (2.7/2.3);
  return (c1 - c0) * (2.7/2.3);
}

int main(int argc, char ** argv) {
  long n = (argc > 1 ? atol(argv[1]) : 100000000);
  long long c0 = _rdtsc();
  double I = integral(0.0, 1.0, n);
  long long c1 = _rdtsc();
  double clks = diff_tsc(c1, c0);
  double muls = n;
  double adds = 2 * n;
  printf("n = %ld\n", n);
  printf("I = %.10f\n", I);
  printf(" %.0f muls %.0f adds\n", muls, adds);
  printf("%.0f clocks\n", clks);
  printf("%f muls/clock\n", muls/clks);
  printf("%f adds/clock\n", adds/clks);
  printf("%f clocks/n\n", clks/n);
  return 0;
}
