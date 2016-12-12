/* 
 * a common header among sorting programs
 */

#pragma once
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

typedef float elem;

static inline unsigned long long rdtscp() {
  unsigned long long u;
  asm volatile ("rdtsc; shlq $32,%%rdx; orq %%rdx,%%rax; movq %%rax,%0" :"=q"(u) : : "%rax", "%rdx", "%rcx");
  return u;
}

double cur_time() {
  struct timeval tp[1];
  gettimeofday(tp, 0);
  return tp->tv_sec + 1.0e-6 * tp->tv_usec;
}

/* return j s.t.
   a[j] is the minimum among a[i] .. a[n-1] */

long min_idx(elem * a, long i, long n) {
  long j;
  long m = i;
  for (j = i + 1; j < n; j++) {
    if (a[j] < a[m]) m = j;
  }
  return m;
}

/* sort a ... a_end into res
   using simple selection sort.
   res may be an alias to a.
   (used to sort small sub-arrays) */
void seq_sort(elem * a, elem * a_end, elem * res) {
  long n = a_end - a;
  for (long i = 0; i < n; i++) {
    long j = min_idx(a, i, n);
    elem t = a[i];
    res[i] = a[j];
    a[j] = t;
  }
}

elem * mk_random_array(long n) {
  elem * a = new elem[n];
  long i;
  unsigned short xsub[3] = { 775, 665, 918 };
  for (i = 0; i < n; i++) {
    a[i] = erand48(xsub);
  }
  return a;
}

elem * mk_zero_array(long n) {
  elem * a = new elem[n];
  long i;
  for (i = 0; i < n; i++) {
    a[i] = 0;
  }
  return a;
}

long check_sorted(elem * a, long n) {
  long i;
  long ec = 0;
  for (i = 0; i < n - 1; i++) {
    if (a[i] > a[i+1]) {
      /* print first 10 errors */
      if (ec < 10) {
	fprintf(stderr, "error: a[%ld] = %f > a[%ld] = %f\n",
		i, a[i], i + 1, a[i + 1]);
      }
      ec++;
      if (ec == 10) {
	fprintf(stderr, 
		"messages for further errors are suppressed\n");
      }
    }
  }
  return ec;
}

