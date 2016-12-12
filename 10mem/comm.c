/* 
 * load_array.c
 */

#define _GNU_SOURCE
#include <sched.h>
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>
#include <sys/mman.h>
#if _OPENMP
#include <omp.h>
#endif

static inline unsigned long long rdtscp() {
  unsigned long long u;
  asm volatile ("rdtscp\n"
		"shlq $32,%%rdx\n"
		"orq %%rdx,%%rax\n"
		"movq %%rax,%0" 
		: "=q"(u) 
		: 
		: "%rax", "%rdx", "%rcx");
  return u;
}

double cur_time() {
  struct timeval tp[1];
  gettimeofday(tp, 0);
  return tp->tv_sec + 1.0e-6 * tp->tv_usec;
}

typedef struct {
  union {
    struct {
      union { volatile long p[1]; char pad[64]; };
      union { volatile long q[1]; char pad_[64]; };
      long src_load;
      unsigned long long src_clock;
      long dst_load;
      unsigned long long dst_clock;
    };
    char pad__[4096];
  };
} record;

void bind_to_core(int rank) {
  cpu_set_t s[1];
  if (0) {
    /* print allowed cpus */
    int c;
    if (sched_getaffinity(0, sizeof(s), s) != 0) {
      perror("sched_setaffinity");
    }
    fprintf(stderr, "worker %2d (originally on cpu %2d):", rank, sched_getcpu());
    if (0) {
      for (c = 0; c < CPU_SETSIZE; c++) {
	if (CPU_ISSET(c, s)) fprintf(stderr, " %2d", c);
      }
    }
    fprintf(stderr, "\n");
  }

  if (1) {
    /* bind rank x to cpu x */
    int cpu_to_bind = rank;
    CPU_ZERO(s);
    CPU_SET(cpu_to_bind, s);
    if (sched_setaffinity(0, sizeof(s), s) != 0) {
      perror("sched_setaffinity");
    }
  }
  fprintf(stderr, "worker %2d (now on cpu %2d)\n", rank, sched_getcpu());
}

void bind_to_core_all(int rank, int n_threads) {
  int i;
  for (i = 0; i < n_threads; i++) {
    if (rank == i) {
      bind_to_core(rank);
    }
#pragma omp barrier
  }

}

void ping_pong(record * r, long n, int role) {
  volatile long * p = r->p;
  volatile long * q = r->q;
  long i;
  long load = 0;
  unsigned long long c0 = 0, c1;
  if (role == 0) {
    asm volatile ("# src loop begin");
    for (i = 0; i < n + 1; i++) {
      *p = i;
      while (*q < i) load++;
      if (i == 0) c0 = rdtscp();
    }
    asm volatile ("# src loop end");
    c1 = rdtscp();
    r->src_load = load;
    r->src_clock = c1 - c0;
  } else {
    asm volatile ("# dst loop begin");
    for (i = 0; i < n + 1; i++) {
      while (*p < i) load++;
      *q = i;
      if (i == 0) c0 = rdtscp();
    }
    asm volatile ("# dst loop end");
    c1 = rdtscp();
    r->dst_load = load;
    r->dst_clock = c1 - c0;
  }
}


void worker_main(int rank, int n_threads, 
		 record a[n_threads][n_threads], long n) {
  int s, d;
  bind_to_core_all(rank, n_threads);

  /* init communication buffer */
  for (d = 0; d < n_threads; d++) {
    a[rank][d].p[0] = -1;
    a[rank][d].q[0] = -1;
  }
  /* measure */
  for (s = 0; s < n_threads; s++) {
    for (d = 0; d < n_threads; d++) {
      if (s == d) {
	if (rank == s) {
	  a[s][d].src_load = 0;
	  a[s][d].src_clock = 0;
	  a[s][d].dst_load = 0;
	  a[s][d].dst_clock = 0;
	}
      } else {
	/* s -> d */
	if (rank == s) {
	  ping_pong(&a[s][d], n, 0);
	} else if (rank == d) {
	  ping_pong(&a[s][d], n, 1);
	}
      }
#pragma omp barrier
    }
  }
}

void * mk_array(int n) {
  void * a = mmap(0, n * n * sizeof(record), 
		  PROT_READ|PROT_WRITE,
		  MAP_PRIVATE|MAP_ANONYMOUS,
		  -1, 0);
  assert(a != MAP_FAILED);
  // memset(a, 0, n * n * sizeof(record));
  return a;
}

void show_record(int nt, record a[nt][nt], long n) {
  int s, d;
  for (s = 0; s < nt; s++) {
    for (d = 0; d < nt; d++) {
      printf("%d -> %d : src_loads=%6.2f dst_loads=%6.2f src_clocks=%6.2f dst_clocks=%6.2f\n", 
	     s, d,
	     a[s][d].src_load / (double)n,
	     a[s][d].dst_load / (double)n,
	     a[s][d].src_clock / (double)n,
	     a[s][d].dst_clock / (double)n);
    }
  }
}

int main(int argc, char ** argv) {
  /* N : number of distinct elements (total of all chains) */
  long n  = (argc > 1 ? atol(argv[1]) : 1 << 14);
#if _OPENMP
  long nt = omp_get_max_threads();
#else
  long nt = 1;
#endif
  record (*a)[nt] = mk_array(nt);

#pragma omp parallel
  {
#if _OPENMP
    int rank = omp_get_thread_num();
#else
    int rank = 0;
#endif
    worker_main(rank, nt, a, n);
  }
  show_record(nt, a, n);
  return 0;
}
