/* 
 * mem.cc
 */
#include <assert.h>
#include <getopt.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <time.h>
#if _OPENMP
#include <omp.h>
#endif


#if EASY_PAPI
#include "easy_papi2.c"
#else
#include <x86intrin.h>
long long time_diff(struct timespec ts[2]) {
  long long s = ts[1].tv_sec - ts[0].tv_sec;
  long long ns = ts[1].tv_nsec - ts[0].tv_nsec;
  return s * 1000000000 + ns;
}

double get_ref_clk(void) {
  static double ref_clk = 0.0;
  struct timespec ts[2];
  if (ref_clk == 0) {
    printf("getting reference clock frequency ... ");
    fflush(stdout);
    clock_gettime(CLOCK_REALTIME, ts);
    ts[1] = ts[0];
    long long c0 = _rdtsc();
    while (time_diff(ts) < 1000000000) {
      clock_gettime(CLOCK_REALTIME, ts + 1);
    }
    long long c1 = _rdtsc();
    ref_clk = (double)(c1 - c0);
    printf("%.0f Hz\n", ref_clk);
  }
  return ref_clk;
}

long long start_measurement(void) {
  return _rdtsc();
}
long long stop_measurement(void) {
  return _rdtsc();
}

double diff_tsc(long long c1, long long c0) {
  /* want to know what the heck is this *(2.7/2.3)?
     => see the exercise page */
  const char * op_clk_s = getenv("OP_CLK");
  if (op_clk_s) {
    double op_clk = (op_clk_s ? atof(op_clk_s) * 1.0e9 : 2.7e9);
    return (c1 - c0) * op_clk / get_ref_clk();
  } else {
    return c1 - c0;
  }
}
void epapi_show_sum_counters(void) { }
void epapi_show_counters(void) { }
#endif

#ifndef max_chains_per_thread
#define max_chains_per_thread 30
#endif

double cur_time() {
  struct timespec ts[1];
  clock_gettime(CLOCK_REALTIME, ts);
  return ts->tv_sec + 1.0e-9 * ts->tv_nsec;
}

/* record is the maximum-sized record that can be
   fetched with a single instruction */
typedef long long4 __attribute__((vector_size(32)));
typedef struct record {
  union {
    struct record * volatile next;
    struct {
      volatile long4 x[2];	/* 64 bytes */
    };
  };
} record;

/* check if links starting from a form a cycle
   of n distinct elements in a[0] ... a[n-1] */
void check_links_cyclic(record * a, long n) {
  char * c = (char *)calloc(sizeof(char), n);
  long i;
  volatile record * p = a;
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

/* return 1 if x is a prime */
int is_prime(long x) {
  if (x == 1) return 0;
  long y = 2;
  while (y * y <= x) {
    if (x % y == 0) return 0;
    y++;
  }
  return 1; 
}


inline long calc_random_next0(long t, long idx, long n) {
  long next_idx = idx + 2 * t + 1;
  if (next_idx - n >= 0) next_idx = next_idx - n;
  if (next_idx - n >= 0) next_idx = next_idx - n;
  // next_idx = (next_idx >= 2 * n ? next_idx - 2 * n : (next_idx >= n ? next_idx - n : next_idx));
  return next_idx;
}

inline long calc_random_next1(long t, long idx, long n) {
#if 1
  (void)t;
  return n - idx;
#else
  long next_idx = idx + 2 * t + 1;
  next_idx = (next_idx >= 2 * n ? next_idx - 2 * n : (next_idx >= n ? next_idx - n : next_idx));
  assert(idx == next_idx);
  return n - next_idx;
#endif
}

inline long calc_random_next2(long t, long idx, long n) {
  long next_idx = idx - (2 * t + 1);
  if (next_idx < 0) next_idx = next_idx + n;
  if (next_idx < 0) next_idx = next_idx + n;
  //next_idx = (next_idx < -n ? next_idx + 2 * n : (next_idx < 0 ? next_idx + n : next_idx));
  return next_idx;
}

inline long calc_random_next(long t, long idx, long n) {
  if (t < (n - 1) / 2) {
    return calc_random_next0(t, idx, n);
  } else if (t == (n - 1) / 2) {
    return calc_random_next1(t, idx, n);
  } else {
    return calc_random_next2(t, idx, n);
  }
}

/* set next pointers, so that
   a[0] .. a[n-1] form a cycle */
void randomize_next_pointers(record * a, long n) {
  long t;
  long idx = 0;
  assert(n % 4 == 3);
  assert(is_prime(n));
  
  for (t = 0; t < n; t++) {
    long next_idx = calc_random_next(t, idx, n);
    assert(next_idx >= 0);
    assert(next_idx < n);
    a[idx].next = &a[next_idx];
    idx = next_idx;
  }
}

/* make H[0] ... H[N * NC - 1] NC chains x N elements;
   if shuffle is 1, next pointers of each array are shuffled */
void mk_arrays(long n, int nc, record * H, record * a[max_chains_per_thread], int shuffle) {
  int c;
  /* make NC arrays */
  for (c = 0; c < nc; c++) {
    long i;
    record * h = H + n * c;
    /* default: next points to the immediately
       following element in the array */
    for (i = 0; i < n; i++) {
      h[i].next = &h[(i + 1) % n];
    }
    if (shuffle) {
      randomize_next_pointers(h, n);
    }
    /* check if links form a cycle */
    check_links_cyclic(h, n);
    /* install the head pointer */
    a[c] = h;
  }
}

/* sequentially access k arrays a[k,0 .. n] m times */
template<int n_chains, int access_payload>
record * access_seq(record * a[n_chains], long n, long n_scans) {
  long s;
  for (s = 0; s < n_scans; s++) {
    long t;
    asm volatile("# seq loop begin (n_chains = %0, payload = %1)" 
		 : : "i" (n_chains), "i" (access_payload));
    for (t = 0; t < n; t++) {
      int c;
      for (c = 0; c < n_chains; c++) {
	if (access_payload) {
	  a[c][t].x[0];
	  a[c][t].x[1];
	} else {
	  a[c][t].next;
	}
      }
    }
    asm volatile("# seq loop end (n_chains = %0, payload = %1)" 
		 : : "i" (n_chains), "i" (access_payload));
  }
  return &a[n_chains-1][n - 1];
}

/* access a[k,0..n] for each k with stride s, m times */
template<int n_chains, int access_payload>
record * access_random(record * a[n_chains], long n, long n_scans) {
  long s;
  long idx = 0;
  for (s = 0; s < n_scans; s++) {
    long t;
    idx = 0;
    asm volatile("# random loop begin (n_chains = %0, payload = %1)" 
		 : : "i" (n_chains), "i" (access_payload));
    for (t = 0; t < (n - 1)/2; t++) {
      int c;
      long next_idx = calc_random_next0(t, idx, n);
      for (c = 0; c < n_chains; c++) {
	if (access_payload) {
	  a[c][idx].x[0];
	  a[c][idx].x[1];
	} else {
	  a[c][idx].next;
	}
      }
      idx = next_idx;
    }
    {
      int c;
      long next_idx = calc_random_next1(t, idx, n);
      for (c = 0; c < n_chains; c++) {
	if (access_payload) {
	  a[c][idx].x[0];
	  a[c][idx].x[1];
	} else {
	  a[c][idx].next;
	}
      }
      idx = next_idx;
      t++;
    }
    for (; t < n; t++) {
      int c;
      long next_idx = calc_random_next2(t, idx, n);
      for (c = 0; c < n_chains; c++) {
	if (access_payload) {
	  a[c][idx].x[0];
	  a[c][idx].x[1];
	} else {
	  a[c][idx].next;
	}
      }
      idx = next_idx;
    }
    asm volatile("# random loop end (n_chains = %0, payload = %1)" 
		 : : "i" (n_chains), "i" (access_payload));
  }
  return &a[n_chains-1][idx];
}

template<int n_chains, int access_payload>
/* traverse n_chains pointers in parallel */
record * access_traverse(record * a[n_chains], long n, long n_scans) {
  /* init pointers */
  record * p[n_chains];
  int c;
  long s;
  for (c = 0; c < n_chains; c++) {
    p[c] = a[c];
  }
  for (s = 0; s < n_scans; s++) {
    long t;
    asm volatile("# traverse loop begin (n_chains = %0, payload = %1)" 
		 : : "i" (n_chains), "i" (access_payload));
    for (t = 0; t < n; t++) {
      int c;
      for (c = 0; c < n_chains; c++) {
	if (access_payload) {
	  long4 x0 = p[c]->x[0];
	  p[c]->x[1];
	  p[c] = (record *)x0[0];
	} else {
	  p[c] = p[c]->next;
	}
      }
    }
    asm volatile("# traverse loop end (n_chains = %0, payload = %1)" 
		 : : "i" (n_chains), "i" (access_payload));
  }
  for (c = 0; c < n_chains; c++) {
    asm volatile("" : : "q" (p[c]));
  }
  return p[0];
}

template<int n_chains, int access_payload>
record * access_with_method(const char * method, record * a[n_chains], 
			    long n, long n_scans) {
  switch (method[0]) {
  case 's' :
    return access_seq<n_chains, access_payload>(a, n, n_scans);
  case 'r' :
    return access_random<n_chains, access_payload>(a, n, n_scans);
  default : 
  case 't': {
    return access_traverse<n_chains, access_payload>(a, n, n_scans);
  }
  }
}

template<int n_chains>
record * access_with_method(const char * method, record * a[n_chains], 
			      long n, long n_scans, int access_payload) {
  if (access_payload) {
    return access_with_method<n_chains,1>(method, a, n, n_scans);
  } else {
    return access_with_method<n_chains,0>(method, a, n, n_scans);
  }
}

record * access_with_method(const char * method, record * a[max_chains_per_thread], 
			    long n, int nc, long n_scans, int access_payload) {
  if (nc >= max_chains_per_thread) {
    fprintf(stderr, "number of chains = %d >= %d\n", nc, max_chains_per_thread);
    fprintf(stderr, "either give a smaller nc or change max_chains in the source; abort\n");
    exit(1);
  }

  switch (nc) {
  case 1:
    return access_with_method<1>(method, a, n, n_scans, access_payload);
  case 2:
    return access_with_method<2>(method, a, n, n_scans, access_payload);
  case 3:
    return access_with_method<3>(method, a, n, n_scans, access_payload);
  case 4:
    return access_with_method<4>(method, a, n, n_scans, access_payload);
  case 5:
    return access_with_method<5>(method, a, n, n_scans, access_payload);
  case 6:
    return access_with_method<6>(method, a, n, n_scans, access_payload);
  case 7:
    return access_with_method<7>(method, a, n, n_scans, access_payload);
  case 8:
    return access_with_method<8>(method, a, n, n_scans, access_payload);
  case 9:
    return access_with_method<9>(method, a, n, n_scans, access_payload);
  case 10:
    return access_with_method<10>(method, a, n, n_scans, access_payload);
  case 11:
    return access_with_method<11>(method, a, n, n_scans, access_payload);
  case 12:
    return access_with_method<12>(method, a, n, n_scans, access_payload);
  case 13:
    return access_with_method<13>(method, a, n, n_scans, access_payload);
  case 14:
    return access_with_method<14>(method, a, n, n_scans, access_payload);
  case 15:
    return access_with_method<15>(method, a, n, n_scans, access_payload);
  case 16:
    return access_with_method<16>(method, a, n, n_scans, access_payload);
  case 17:
    return access_with_method<17>(method, a, n, n_scans, access_payload);
  case 18:
    return access_with_method<18>(method, a, n, n_scans, access_payload);
  case 19:
    return access_with_method<19>(method, a, n, n_scans, access_payload);
  case 20:
    return access_with_method<20>(method, a, n, n_scans, access_payload);
  default:
    fprintf(stderr, "number of chains = %d, must be >= 0 and <= 20\n", nc);
    exit(1);
    break;
  }
  return 0;
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

int get_n_threads() {
#if _OPENMP
  return omp_get_max_threads();
#else
  return 1;
#endif
}

int get_rank() {
#if _OPENMP
  return omp_get_thread_num();
#else
  return 0;
#endif
}

void barrier() {
#if _OPENMP
#pragma omp barrier
#endif
}
  
void worker(int rank, int n_threads, record * H,
	    const char * method, long n, long nc, int shuffle,
	    long n_scans, long repeat, int access_payload) {
  record * a[max_chains_per_thread];
  int r;
  mk_arrays(n, nc, &H[n * nc * rank], a, shuffle);
  for (r = 0; r < repeat; r++) {
    if (rank == 0) {
      printf("--------- %d ---------\n", r);
    }
    barrier();
    double t0 = cur_time();
    long long c0 = start_measurement();
    access_with_method(method, a, n, nc, n_scans, access_payload);
    barrier();
    long long c1 = stop_measurement();
    double t1 = cur_time();
    if (rank == 0) {
      double clk = diff_tsc(c1, c0);
      double dt = t1 - t0;
      long n_elements = n * nc * n_threads;
      long n_records  = n_elements * n_scans;
      long access_sz  = sizeof(record) * n_records;
      printf("%.0f clocks\n", clk);
      printf("%f sec\n", dt);
      printf("%f bytes/clock\n", access_sz / (double)clk);
      printf("%f GB/sec\n", access_sz * pow(2.0, -30) / dt);
      printf("%f clocks per record\n", clk / (double)n_records);
      epapi_show_counters();
    }
  }
}

const char * canonical_method_string(const char * method) {
  switch (method[0]) {
  case 's': 
    return "sequential";
  case 'r':
    return "random";
  default :
  case 't':
    return "traverse";
  }
}

struct opts {
  const char * method;
  long n_elements;
  long n_chains;
  long n_scans;
  int repeat;
  int shuffle;
  int payload;
  opts() {
    method = "traverse";
    n_elements = 1 << 9;
    n_chains = 1;
    n_scans = 0;
    repeat = 3;
    shuffle = 1;
    payload = 1;
  }
};

void usage(char * prog) {
  opts o;
  fprintf(stderr, "usage:\n");
  fprintf(stderr, "  %s [options]\n", prog);
  fprintf(stderr, "options:\n");
  fprintf(stderr, "  -m,--method traverse/sequential/random (%s)\n", o.method);
  fprintf(stderr, "  -n,--n_elements N (%ld)\n", o.n_elements);
  fprintf(stderr, "  -c,--n_chains N (%ld)\n", o.n_chains);
  fprintf(stderr, "  -s,--n_scans N (%ld)\n", o.n_scans);
  fprintf(stderr, "  -r,--repeat N (%d)\n", o.repeat);
  fprintf(stderr, "  -x,--shuffle 0/1 (%d)\n", o.shuffle);
  fprintf(stderr, "  -p,--payload 0/1 (%d)\n", o.payload);
}

opts * parse_cmdline(int argc, char * const * argv, opts * o) {
  static struct option long_options[] = {
    {"method",     required_argument, 0, 'm' },
    {"n_elements", required_argument, 0, 'n' },
    {"n_chains",   required_argument, 0, 'c' },
    {"n_scans",    required_argument, 0, 's' },
    {"repeat",     required_argument, 0, 'r' },
    {"shuffle",    required_argument, 0, 'x' },
    {"payload",    required_argument, 0, 'p' },
    {0,         0,                 0,  0 }
  };

  while (1) {
    int option_index = 0;
    int c = getopt_long(argc, argv, "m:n:c:s:r:x:p:",
			long_options, &option_index);
    if (c == -1) break;

    switch (c) {
    case 'm':
      o->method = strdup(optarg);
      break;
    case 'n':
      o->n_elements = atol(optarg);
      break;
    case 'c':
      o->n_chains = atoi(optarg);
      break;
    case 's':
      o->n_scans = atol(optarg);
      break;
    case 'r':
      o->repeat = atoi(optarg);
      break;
    case 'x':
      o->shuffle = atoi(optarg);
      break;
    case 'p':
      o->payload = atoi(optarg);
      break;
    default:
      usage(argv[0]);
      exit(1);
    }
  }
  return o;
}

int main(int argc, char * const * argv) {
  opts o;
  parse_cmdline(argc, argv, &o);
  int n_threads = get_n_threads();

  const char * method = o.method;
  /* nc : number of chains per thread */
  int nc        = o.n_chains;
  /* n : number of elements per chain */
  long n        = good_prime(o.n_elements / nc / n_threads);
  long shuffle  = o.shuffle;
  /* number of times an array is scanned */
  long n_scans  = (o.n_scans ? o.n_scans : ((1 << 25) / (n * nc * n_threads) + 1));
  int repeat    = o.repeat;
  int access_payload = o.payload;
  long n_elements = n * nc * n_threads;
  long n_records  = n_elements * n_scans;
  long data_sz    = sizeof(record) * n_elements;
  long access_sz  = sizeof(record) * n_records;

  record * H = (record *)mmap(0, data_sz, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
  if (H == MAP_FAILED) { 
    perror("mmap"); exit(1);
  }
  memset(H, 0, data_sz);
  assert(sizeof(record) == 64);
  printf("%ld elements"
	 " x %d chains"
	 " x %ld scans"
	 " x %d threads"
	 " = %ld record accesses"
	 " = %ld loads.\n", 
	 n, nc, n_scans, n_threads, n_records,
	 (access_payload ? access_sz / sizeof(long4) : n_records));
  printf("data: %ld bytes\n", data_sz);
  printf("shuffle: %ld\n", shuffle);
  printf("payload: %d\n", access_payload);
  printf("method: %s\n", canonical_method_string(method));
  diff_tsc(0, 0);

#if _OPENMP
#pragma omp parallel
#endif
  {
    int rank = get_rank();
    worker(rank, n_threads, H,
	   method, n, nc, shuffle, n_scans, repeat, access_payload);
  }
  return 0;
}
