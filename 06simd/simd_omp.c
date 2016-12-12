#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static inline unsigned long long rdtscp() {
  unsigned long long u;
  asm volatile ("rdtscp;shlq $32,%%rdx;orq %%rdx,%%rax;movq %%rax,%0":"=q"(u)::"%rax", "%rdx", "rax");
  return u;
}

void axpy_omp(float a, float * x, float c, long m) {
  long j;
#pragma omp simd
  for (j = 0; j < m; j++) {
    x[j] = a * x[j] + c;
  }
}

void axpy_omp_iter(float a, float * x, float c, 
		   long m, long n) {
  long i;
  for (i = 0; i < n; i++) {
    axpy_omp(a, x, c, m);
  }
}

void axpy_omp2(float a, float * x, float c, long m, float * y) {
  long j;
  asm volatile ("# axpy omp2 begin");
#pragma omp simd aligned(x:64) aligned(y:64)
  for (j = 0; j < m; j++) {
    y[j] = a * x[j] + c;
  }
  asm volatile ("# axpy omp2 end");
}

void axpy_omp2_iter(float a, float * x, float c, long m, float * y, long n) {
  long i;
  for (i = 0; i < n; i++) {
    axpy_omp2(a, x, c, m, y);
  }
}

int main(int argc, char ** argv) {
  long m = (argc > 1 ? atol(argv[1]) : 4000);
  long n = (argc > 2 ? atol(argv[2]) : 1000000);
  long seed = (argc > 3 ? atol(argv[3]) : 76843802738543);
  float a = 0;
  float * x = 0;
  float c = 0;
  float * y = 0;
  float * z = 0;
  int i;
  unsigned short rg[3] = { seed >> 16, seed >> 8, seed };
  int err;
  if ((err = posix_memalign((void **)&x, 64, m * sizeof(float)))) {
    printf("posix_memalign %s\n", strerror(err));
  }
  if ((err = posix_memalign((void **)&y, 64, m * sizeof(float)))) {
    printf("posix_memalign %s\n", strerror(err));
  }
  if ((err = posix_memalign((void **)&z, 64, m * sizeof(float)))) {
    printf("posix_memalign %s\n", strerror(err));
  }
  a = erand48(rg);
  c = erand48(rg);
  for (i = 0; i < m; i++) {
    x[i] = erand48(rg);
    y[i] = erand48(rg);
    z[i] = erand48(rg);
  }
  
  unsigned long long c0 = rdtscp();
  //axpy_omp_iter(a, x, c, m, n);
  axpy_omp2_iter(a, x, c, m, y, n);
  unsigned long long c1 = rdtscp();
  unsigned long long dc = c1 - c0;
  double flops = 2 * n * m;
  printf("%f flops\n", flops);
  printf("%llu clocks\n", dc);
  printf("%f flops/clock\n", flops / dc);
  if (seed % 2 == 0) {
    for (i = 0; i < m; i++) {
      printf("x[%d] = %f\n", i, x[i]);
    }
  }
  return 0;
}

