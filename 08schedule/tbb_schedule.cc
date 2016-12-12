/* 
 * tbb_schedule.cc
 */

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <tbb/blocked_range2d.h>

#include <tbb/parallel_for.h>
#include <tbb/task_group.h>

#include "schedule.h"

struct works {
  works() : n(0) { }
  works(unsigned long n_) : n(n_) {
    r = new work[n * n];
  }
  unsigned long n;
  work * r;
  work & operator() (unsigned long i, unsigned long j) {
    return r[i * n + j];
  }
};

void tbb_work_loop(works & R,
		   unsigned long long min_cycle, 
		   unsigned long long max_cycle,
		   unsigned long prime) {
  tbb::parallel_for(tbb::blocked_range2d<unsigned long>(0,R.n,0,R.n),
		     
		     [=,&R] (const tbb::blocked_range2d<unsigned long>& range) {
		       unsigned long i,j;
		       for (i = range.rows().begin(); i < range.rows().end(); i++) {
			 for (j = range.cols().begin(); j < range.cols().end(); j++) {
			   unit_work(R.n, &R(i,j), i, j, min_cycle, max_cycle, prime);
			 }
		       }
		     }

		    );
}

void tbb_work_rec(works & R, rectangle b,
		  unsigned long long min_cycle, 
		  unsigned long long max_cycle,
		  unsigned long prime, 
		  unsigned long gran) {
  point * p = b.p;
  if ((p[1].x - p[0].x) * (p[1].y - p[0].y) <= gran) {
    unsigned long i, j;
    for (i = p[0].x; i < p[1].x; i++) {
      for (j = p[0].y; j < p[1].y; j++) {
	unit_work(R.n, &R(i,j), i, j, min_cycle, max_cycle, prime);
      }
    }
  } else {
    rectangle q[2][2];
    tbb::task_group tg;
    split_hv(b, q);
    int i;
    for (i = 0; i < 2; i++) {
      int j;
      for (j = 0; j < 2; j++) {
	tg.run([&,i,j] {
	    tbb_work_rec(R, q[i][j], 
			 min_cycle, max_cycle, prime, gran); });
      }
    }
    tg.wait();
  }
}

void tbb_work_loop_or_rec(unsigned long n, works & R,
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
      gran = atol(sched + kw_rec_len + 1);
      if (!gran) gran = 1;
    }
    tbb_work_rec(R, b, min_cycle, max_cycle, prime, gran);
  } else {
    tbb_work_loop(R, min_cycle, max_cycle, prime);
  }
}

void dump_record(int repeat, unsigned long n, works * R, const char * file) {
  int t;
  unsigned long i, j;
  FILE * fp = fopen(file, "wb");
  if (!fp) { perror("fopen"); exit(1); }
  for (t = 0; t < repeat; t++) {
    for (i = 0; i < n; i++) {
      for (j = 0; j < n; j++) {
	work * r = & R[t](i,j);
	fprintf(fp, "%d %lu %lu %llu %llu %llu %lu\n", 
		t, i, j, r->begin, r->end, r->load, r->worker_idx);
      }
    }
  }
  fclose(fp);
}

int main(int argc, char ** argv) {
  unsigned long n   = (argc > 1 ? atol(argv[1]) : 700);
  int repeat        = (argc > 2 ? atoi(argv[2]) : 2);
  const char * file = (argc > 3 ? strdup(argv[3]) : "log.txt");
  unsigned long long 
    min_cycle       = (argc > 4 ? atoll(argv[4]) : 100);
  unsigned long long 
    max_cycle       = (argc > 5 ? (unsigned long long)atoll(argv[5]) : min_cycle * 100L);
  unsigned long seed = (argc > 6 ? (unsigned long)atol(argv[6]) : 72743383232329L);

  unsigned short rg[3] = { (unsigned short)(seed >> 16), 
			   (unsigned short)(seed >> 8), 
			   (unsigned short)seed };
  unsigned long prime = find_prime(nrand48(rg) / 2);

  works * R = new works[repeat];

  assert(min_cycle <= max_cycle);

  {
    printf("tbb_work_loop_or_rec: n=%lu, cycles=[%llu,%llu], prime=%lu, repeat %d times\n", 
	   n, min_cycle, max_cycle, prime, repeat);
    int i;
    for (i = 0; i < repeat; i++) {
      R[i] = works(n);
      unsigned long long c0 = rdtscp();
      tbb_work_loop_or_rec(n, R[i], min_cycle, max_cycle, prime);
      unsigned long long c1 = rdtscp();
      unsigned long long dc = c1 - c0;
      {
	printf("%llu clocks / %lu pixels\n", dc, n * n);
	printf("%f clocks/pixel\n", dc / (double)(n * n));
      }
    }
  }
  dump_record(repeat, n, R, file); 
  return 0;
}

