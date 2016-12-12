/* 
 * omp_schedule.c
 */

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>
#include <omp.h>

#include "schedule.h"

void omp_work_loop(unsigned long n, work R[n][n],
		   unsigned long long min_cycle, 
		   unsigned long long max_cycle,
		   unsigned long prime) {
  unsigned long i,j;
#pragma omp for schedule(runtime) collapse(2)
  for (i = 0; i < n; i++) {
    for (j = 0; j < n; j++) {
      unit_work(n, &R[i][j], i, j, min_cycle, max_cycle, prime);
    }
  }
}

void omp_work_rec(unsigned long n, work R[n][n],
		  rectangle b,
		  unsigned long long min_cycle, 
		  unsigned long long max_cycle,
		  unsigned long prime, 
		  unsigned long gran) {
  point * p = b.p;
  if ((p[1].x - p[0].x) * (p[1].y - p[0].y) <= gran) {
    unsigned long i, j;
    for (i = p[0].x; i < p[1].x; i++) {
      for (j = p[0].y; j < p[1].y; j++) {
	unit_work(n, &R[i][j], i, j, min_cycle, max_cycle, prime);
      }
    }
  } else {
    rectangle q[2][2];
    split_hv(b, q);
    int i, j;
    for (i = 0; i < 2; i++) {
      for (j = 0; j < 2; j++) {
#pragma omp task firstprivate(i,j)
	omp_work_rec(n, R, q[i][j], min_cycle, max_cycle, prime, gran);
      }
    }
#pragma omp taskwait
  }
}

void omp_work_loop_or_rec(unsigned long n, work R[n][n],
			  unsigned long long min_cycle, 
			  unsigned long long max_cycle,
			  unsigned long prime) {
  char * sched = getenv("LB");
  const char * kw_rec = "rec";
  size_t kw_rec_len = strlen(kw_rec);
  if (sched && strncmp(kw_rec, sched, kw_rec_len) == 0) {
    rectangle b = { { { 0, 0 }, { n, n } } };
    unsigned long gran = 1;
    if (sched[kw_rec_len] == ',') {
      gran = atol(sched + 5);
      if (!gran) gran = 1;
    }
#pragma omp master
    omp_work_rec(n, R, b, min_cycle, max_cycle, prime, gran);
  } else {
    omp_work_loop(n, R, min_cycle, max_cycle, prime);
  }
}

void dump_record(int repeat, unsigned long n, work R[repeat][n][n], const char * file) {
  unsigned long i, j;
  int t;
  FILE * fp = fopen(file, "wb");
  if (!fp) { perror("fopen"); exit(1); }
  for (t = 0; t < repeat; t++) {
    for (i = 0; i < n; i++) {
      for (j = 0; j < n; j++) {
	work * r = &R[t][i][j];
	fprintf(fp, "%d %lu %lu %llu %llu %llu %lu\n", 
		t, i, j, r->begin, r->end, r->load, r->worker_idx);
      }
    }
  }
  fclose(fp);
}

int main(int argc, char ** argv) {
  unsigned long n = (argc > 1 ? atol(argv[1]) : 700);
  int repeat      = (argc > 2 ? atoi(argv[2]) : 2);
  char * file     = (argc > 3 ? strdup(argv[3]) : "log.txt");
  unsigned long long 
    min_cycle     = (argc > 4 ? atoll(argv[4]) : 100);
  unsigned long long 
    max_cycle     = (argc > 5 ? (unsigned long long)atoll(argv[5]) : min_cycle * 100L);
  long seed       = (argc > 6 ? atol(argv[6]) : 72743383232329L);

  unsigned short rg[3] = { seed >> 16, seed >> 8, seed };
  unsigned long prime = find_prime(nrand48(rg) / 2);

  work * R_ = calloc(sizeof(work), repeat * n * n);
  work (*R)[n][n] = (work (*)[n][n])R_;

  assert(min_cycle <= max_cycle);

#pragma omp parallel
  {
    int i;
    for (i = 0; i < repeat; i++) {
#pragma omp barrier
      unsigned long long c0 = rdtscp();
      omp_work_loop_or_rec(n, R[i], min_cycle, max_cycle, prime);
#pragma omp barrier
      unsigned long long c1 = rdtscp();
      unsigned long long dc = c1 - c0;
#pragma omp master
      {
	printf("%llu clocks / %lu pixels\n", dc, n * n);
	printf("%f clocks/pixel\n", dc / (double)(n * n));
      }
    }
  }
  dump_record(repeat, n, R, file); 
  return 0;
}

