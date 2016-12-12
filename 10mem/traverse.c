/* 
 * load_array.c
 */

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>
#include <sys/mman.h>
#include <math.h>
#if _OPENMP
#include <omp.h>
#endif

#ifndef n_chains
#define n_chains 10
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

/* record is the maximum-sized record that can be
   fetched with a single instruction */
typedef long long4 __attribute__((vector_size(32)));
typedef struct record {
  union {
    struct record * next;
    struct {
      volatile long4 x[2];	/* 64 bytes */
    };
  };
} record;

/* check if links starting from a form a cycle
   of n distinct elements in a[0] ... a[n-1] */
void check_links_cyclic(record * a, long n) {
  char * c = calloc(sizeof(char), n);
  long i;
  record * p = a;
  for (i = 0; i < n; i++) {
    assert(p - a >= 0);
    assert(p - a < n);
    assert(c[p - a] == 0);
    c[p - a] = 1;
    p = p->next;
  }
  p = a;
  for (i = 0; i < n; i++) {
    assert(c[p - a]);
    p = p->next;
  }
  free(c);
}

#if 0
/* shuffle a[0] .. a[n-1]; 
   repeat m times picking two random element and swap them */
void shuffle_array(record * a, long n, long m, unsigned long seed,
		   long prime) {
  (void)m;
  (void)seed;
  long i;
  long j = 0;
  assert(prime < n);
  for (i = 0; i < n; i++) {
    long jj = j + prime;
    jj = (jj < n ? jj : jj - n);
    assert(jj >= 0);
    assert(jj < n);
    a[j].next = &a[jj];
    j = jj;
  }
}

#elif 0
/* shuffle a[0] .. a[n-1]; 
   repeat m times picking two random element and swap them */
void shuffle_array(record * a, long n, long m, unsigned long s) {
  long i;
  unsigned short rg[3] = { 
    (s >> 32) % 65535,
    (s >> 16) % 65535,
    (s >>  0) % 65535 };
  for (i = 0; i < m; i++) {
    //check_links(a, n);
    long s = i % n;		/* nrand48(rg) */
    long t = nrand48(rg) % n;
    record * p = &a[s];
    record * q = &a[t];
    record * pn = p->next;
    record * qn = q->next;
    record * pnn = pn->next;
    record * qnn = qn->next;
    if (p == q) continue;
    else if (pn == q) {
      /* 
	 ------- p - q - qn - qnn --------
	 ------- p - qn - q - qnn --------
      */
      p->next = qn;
      qn->next = q;
      q->next = qnn;
    } else if (qn == p) {
      /* 
	 ------- q - p - pn - pnn --------
	 ------- q - pn - p - pnn --------
      */
      q->next = pn;
      pn->next = p;
      p->next = pnn;
    } else {
      /* 
	 ------- p - pn - q - qn - qnn ----
	 ------- p - qn - q - pn - qnn ----
	 ------- p - pn - pnn --------- q - qn - qnn ----
	 ------- p - qn - pnn --------- q - pn - qnn ----
       */
      p->next = qn;
      q->next = pn;
      qn->next = pnn;
      pn->next = qnn;
    }
  }
}

#else

void shuffle_array(record * a, long n) {
  long t;
  long j = 0;
  long jj;
  for (t = 0; t < (n + 1) / 2; t++) {
    jj = j + 2 * t + 1;
    jj = (jj >= 2 * n ? jj - 2 * n : (jj >= n ? jj - n : jj));
    assert(jj >= 0);
    assert(jj < n);
    a[j].next = &a[jj];
    j = jj;
  }
  a[j].next = &a[n - j];
  j = n - j;
  for (; t < n; t++) {
    jj = j - (2 * t + 1);
    jj = (jj < -n ? jj + 2 * n : (jj < 0 ? jj + n : jj));
    assert(jj >= 0);
    assert(jj < n);
    a[j].next = &a[jj];
    j = jj;
  }
}

#endif



void mk_arrays(long n, int nc, record * a[n_chains], int shuffle) {
  record * H;
  int r = posix_memalign((void **)&H, 4096, sizeof(record) * n * nc);
  long i;
  int c;
  assert(r == 0);
  memset(H, 0, sizeof(record) * n * nc);
  for (c = 0; c < nc; c++) {
    record * h = H + n * c;
    for (i = 0; i < n; i++) {
      h[i].next = &h[(i + 1) % n];
    }
    if (shuffle) {
      shuffle_array(h, n);
    }
    check_links_cyclic(h, n);
    a[c] = h;
  }
}

int is_relatively_prime(long a, long b) {
  if (a < b) {
    long t = a;
    a = b;
    b = t;
  }
  while (b) {
    long r = a % b;
    a = b;
    b = r;
  }
  return (a == 1);
}

long find_prime(long n) {
  long n0 =      n  / 9 + n / 17;
  //long n1 = (4 * n) / 5;
  long p = n0; // (n0 == n1 ? 1 : (n0 + s0 % (n1 - n0)));
  while (!is_relatively_prime(p, n)) {
    p++;
  }
  assert(p < n);
  return p;
}

/* sequentially access a[0 .. n] m times */
void seq_1(record * a, long n, long m) {
  long i;
  for (i = 0; i < m; i++) {
    long j;
    asm volatile("# seq 1 begin");
    for (j = 0; j < n; j++) {
      a[j].x[0];
      a[j].x[1];
    }
    asm volatile("# seq 1 end");
  }
}

/* sequentially access k arrays a[k,0 .. n] m times */
void seq_many(record * a[n_chains], long n, long m) {
  long i;
  for (i = 0; i < m; i++) {
    long j;
    asm volatile("# seq loop begin");
    for (j = 0; j < n; j++) {
      int k;
      for (k = 0; k < n_chains; k++) {
	a[k][j].x[0];
	a[k][j].x[1];
      }
    }
    asm volatile("# seq loop end");
  }
}

long next_index(long x) {
  return (0x5DEECE66D * x + 0xB) & ((1L << 48) -1);
}

#if 0
/* access a[0..n] with stride s, m times */
void stride_1(record * a, long n, long m, long prime) {
  long i;
  for (i = 0; i < m; i++) {
    long t;
    long j = 0;
    asm volatile("# stride 1 begin");
    for (t = 0; t < n; t++) {
      //printf("%ld : %ld\n", t, j);
      a[j].x[0];
      a[j].x[1];
      j += prime;
      j = (j < n ? j : j - n);
    }
    asm volatile("# stride 1 end");
  }
}

/* access a[k,0..n] for each k with stride s, m times */
void stride_many(record * a[n_chains], long n, long m, long prime) {
  long i;
  for (i = 0; i < m; i++) {
    long t;
    long j = 0;
    asm volatile("# stride many begin");
    for (t = 0; t < n; t++) {
      int k;
      for (k = 0; k < n_chains; k++) {
	a[k][j].x[0];
	a[k][j].x[1];
      }
      j += prime;
      j = (j < n ? j : j - n);
    }
    asm volatile("# stride many end");
  }
}

#elif 0
/* access a[0..n] with stride s, m times */
void random_1(record * a, long n, long m) {
  long i;
  for (i = 0; i < m; i++) {
    long t;
    long jj = 0;
    long j = 0;
    asm volatile("# random 1 begin");
    for (t = 0; t < n; t++) {
      a[j].x[0];
      a[j].x[1];
      jj = next_index(jj);
      j = jj & (n - 1);
      //j = jj % n;
    }
    asm volatile("# random 1 end");
  }
}

/* access a[k,0..n] for each k with stride s, m times */
void random_many(record * a[n_chains], long n, long m) {
  long i;
  for (i = 0; i < m; i++) {
    long t;
    long jj = 0;
    long j = 0;
    asm volatile("# random many begin");
    for (t = 0; t < n; t++) {
      int k;
      for (k = 0; k < n_chains; k++) {
	a[k][j].x[0];
	a[k][j].x[1];
      }
      jj = next_index(jj);
      j = jj & (n - 1);
      //j = jj % n;
    }
    asm volatile("# random many end");
  }
}

#else

/* access a[0..n] with stride s, m times */
void random_1(record * a, long n, long m) {
  long i;
  for (i = 0; i < m; i++) {
    long t;
    long j = 0;
    asm volatile("# random 1 begin");
    for (t = 0; t < (n + 1) / 2; t++) {
      a[j].x[0];
      a[j].x[1];
      j += 2 * t + 1;
      j = (j >= 2 * n ? j - 2 * n : (j >= n ? j - n : j));
    }
    j = n - j;
    for (; t < n; t++) {
      a[j].x[0];
      a[j].x[1];
      j -= 2 * t + 1;
      j = (j < -n     ? j + 2 * n : (j < 0  ? j + n : j));
    }
    asm volatile("# random 1 end");
  }
}

/* access a[k,0..n] for each k with stride s, m times */
void random_many(record * a[n_chains], long n, long m) {
  long i;
  for (i = 0; i < m; i++) {
    long t;
    long j = 0;
    asm volatile("# random many begin");
    for (t = 0; t < (n + 1) / 2; t++) {
      int k;
      for (k = 0; k < n_chains; k++) {
	a[k][j].x[0];
	a[k][j].x[1];
      }
      j += 2 * t + 1;
      j = (j >= 2 * n ? j - 2 * n : (j >= n ? j - n : j));
    }
    j = n - j;
    for (; t < n; t++) {
      int k;
      for (k = 0; k < n_chains; k++) {
	a[k][j].x[0];
	a[k][j].x[1];
      }
      j -= 2 * t + 1;
      j = (j < -n     ? j + 2 * n : (j < 0  ? j + n : j));
    }
    asm volatile("# random many end");
  }
}


#endif

void traverse_1(record * a, long n, long m) {
  long i;
  record * p = a;
  for (i = 0; i < m; i++) {
    long j;
    asm volatile("# traverse 1 begin");
    for (j = 0; j < n; j++) {
#if 1
      p = p->next;
#else
      long4 l4  = p->x[0];
      p->x[1];
      p = (record *)l4[0];
#endif
    }
    asm volatile("# traverse 1 end");
  }
  asm volatile("" : : "q" (p));
}

/* traverse n_chains pointers in parallel */
void traverse_many(record * a[n_chains], long n, long m) {
  /* init pointers */
  record * p[n_chains];
  int k;
  long i;
  for (k = 0; k < n_chains; k++) {
    p[k] = a[k];
  }
  for (i = 0; i < m; i++) {
    long j;
    asm volatile("# traverse many begin");
    for (j = 0; j < n; j++) {
      long k;
      for (k = 0; k < n_chains; k++) {
#if 1
	p[k] = p[k]->next;
#else
	long4 l4 = p[k]->x[0];
	p[k]->x[1];
	p[k] = (record *)l4[0];
#endif
      }
    }
    asm volatile("# traverse many end");
  }
  for (k = 0; k < n_chains; k++) {
    asm volatile("" : : "q" (p[k]));
  }
}

const char * method_string(char * meth) {
  switch (meth[0]) {
  case 's': 
    return "sequential";
  case 'S': 
    return "sequentialX";
  case 'r':
    return "random";
  case 'R':
    return "randomX";
  case 't':
    return "traverse";
  default :
  case 'T':
    return "traverseX";
  }
}

void access_array(char method, record * a[n_chains], 
		  long n, long n_scans) {
  switch (method) {
  case 's' : {
    seq_1(a[0], n, n_scans);
    break;
  }
  case 'S' : {
    seq_many(a, n, n_scans);
    break;
  }
  case 'r' : {
    random_1(a[0], n, n_scans);
    break;
  }
  case 'R' : {
    random_many(a, n, n_scans);
    break;
  }
  case 't': {
    traverse_1(a[0], n, n_scans);
    break;
  }
  default : 
  case 'T': {
    traverse_many(a, n, n_scans);
    break;
  }
  }
}

int is_prime(long x) {
  if (x == 1) return 0;
  long y = 2;
  while (y * y <= x) {
    if (x % y == 0) return 0;
    y++;
  }
  return 1; 
}

/* find a prime of 4m+3 no greater than x */
long good_prime(long x) {
  if (x < 3) return 3;
  else {
    long y = x - (x % 4) + 3;
    long z = (y > x ? y - 4 : y);
    assert(z % 4 == 3);
    assert(z <= x);
    while (z > 0) {
      if (is_prime(z)) return z;
      z -= 4;
    }
    assert(0);
  }
}

int main(int argc, char ** argv) {
  long N      = (argc > 1 ? atol(argv[1]) : 1 << 9);
  char * meth = (argc > 2 ? argv[2] : "traverse");
  /* number of chains; 1 or compile-time constant */
  int nc      = ('A' <= meth[0] && meth[0] <= 'Z' ? n_chains : 1);
#if _OPENMP
  int n_threads = omp_get_max_threads();
#else
  int n_threads = 1;
#endif
  /* n : number of elements per chain */
  long n      = good_prime(N / nc / n_threads);
  /* seed for traverse / stride for random */
  long shuffle = (argc > 3 ? atol(argv[3]) : 1);
  /* total number of records to access */
  long n_scans  = (argc > 4 ? atol(argv[4]) : 
		   (1 << 25) / (n * nc * n_threads) + 1);
  int repeat  = (argc > 5 ? atoi(argv[5]) : 3);
  int r;
  unsigned long n_elements = n * nc * n_threads;
  unsigned long n_records = n_elements * n_scans;
  unsigned long data_sz = sizeof(record) * n_elements;
  unsigned long access_sz = sizeof(record) * n_records;

  printf("%ld elements"
	 " x %d chains"
	 " x %ld scans"
	 " x %d threads"
	 " = %ld record accesses"
	 " = %ld loads.\n", 
	 n, nc, n_scans, n_threads, n_records,
	 access_sz / sizeof(long4));
  printf("data: %ld bytes\n", data_sz);
  printf("shuffle: %ld\n", shuffle);
  printf("method: %s\n", method_string(meth));
#pragma omp parallel
  {
    record * a[n_chains];
    mk_arrays(n, nc, a, shuffle);
    for (r = 0; r < repeat; r++) {
#pragma omp master
      {
	printf("--------- %d ---------\n", r);
      }
#pragma omp barrier
      double t0 = cur_time();
      unsigned long long c0 = rdtscp();
      access_array(meth[0], a, n, n_scans);
#pragma omp barrier
      unsigned long long c1 = rdtscp();
      double t1 = cur_time();
      double dt = t1 - t0;
      unsigned long long dc = c1 - c0;

#pragma omp master
      {
	printf("%llu clocks\n", dc);
	printf("%f sec\n", dt);
	printf("%f bytes/clock\n", access_sz / (double)dc);
	printf("%f GB/sec\n", access_sz * pow(2.0, -30) / dt);
	printf("%f clocks per record\n", dc / (double)n_records);
      }
    }
  }
  return 0;
}
