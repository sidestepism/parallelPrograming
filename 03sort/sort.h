/* 
 * merge_sort
 */

#pragma once
#include <math.h>
#include <string.h>
#include "sort_base.h"

#ifndef merge_sort_rec_threshold
#define merge_sort_rec_threshold 10
#endif

/* merge a_beg ... a_end and b_beg ... b_end into c */
void merge(elem * a, elem * a_end, elem * b, elem * b_end, elem * c) {
  elem * p = a;
  elem * q = b;
  elem * r = c;
  while (p < a_end && q < b_end) {
    if (*p < *q) { *r++ = *p++; }
    else { *r++ = *q++; }
  }
  while (p < a_end) *r++ = *p++;
  while (q < b_end) *r++ = *q++;
}

/* sort a ... a_end using temporary space t.
   if dest == 0, the result must be returned
   in a. otherwise it must be returned in t */
void merge_sort_rec(elem * a, elem * a_end, elem * t, int dest) {
  long n = a_end - a;
  if (n <= merge_sort_rec_threshold) {
    /* small. use selection sort. */
    seq_sort(a, a_end, (dest ? t : a));
  } else {
    /* sort first/second halves and merge them */
    long nh = n / 2;
    elem * c = a + nh;
    merge_sort_rec(a, c,     t,      1 - dest);
    merge_sort_rec(c, a_end, t + nh, 1 - dest);
    elem * s = (dest ? a : t);
    elem * d = (dest ? t : a);
    merge(s, s + nh, s + nh, s + n, d);
  }
}

/* merge sort n elements a[0] .. a[n-1],
   using t as the temporary space.
   t must be at least as large as a.
   results must be in a (not t).
 */
void merge_sort(elem * a, long n, elem * t) {
  merge_sort_rec(a, a + n, t, 0);
};

int merge_sort_main(int argc, char ** argv) {
  long n     = (argc > 1 ? atol(argv[1]) : (1 << 25));
  int repeat = (argc > 2 ? atoi(argv[2]) : 3);
  int r;
  elem * orig = mk_random_array(n);
  elem * a = mk_zero_array(n);
  elem * t = mk_zero_array(n);
  for (r = 0; r < repeat; r++) {
    memcpy(a, orig, sizeof(elem) * n);
    printf("------ %d ------\n", r);
    printf("sorting %ld elements ... ", n); fflush(stdout);
    double t0 = cur_time();
    unsigned long long c0 = rdtscp();
    merge_sort(a, n, t);
    unsigned long long c1 = rdtscp();
    double t1 = cur_time();
    unsigned long long dc = c1 - c0;
    double dt = t1 - t0;
    printf("done\n");
    printf("checking if the result is sorted ... "); fflush(stdout);
    if (check_sorted(a, n) == 0) {
      printf("OK\n");
      /* asymptotic complexity */
      double nlogn = n * log(n) / log(2.0);
      /* somewhat accurate estimation of comparisons */
      printf("sorted %ld elements in %f sec, %llu clocks\n",
	     n, dt, dc);
      printf(" time   = %f * n log(n) nano seconds\n", 1.0e9 * dt / nlogn);
      printf(" clocks = %f * n log(n) clocks\n", dc / nlogn);
      printf(" n * log(n) / sec = %f x 10^9\n", 1.0e-9 * nlogn / dt);
      printf(" n * log(n) / clock = %f\n", nlogn / dc);
    } else {
      printf("NG\n");
    }
  }
  return 0;
}
