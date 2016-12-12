#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static inline unsigned long long rdtscp() {
  unsigned long long u;
  asm volatile ("rdtscp;shlq $32,%%rdx;orq %%rdx,%%rax;movq %%rax,%0":"=q"(u)::"%rax", "%rdx", "%rcx");
  return u;
}

typedef float float8 __attribute__((vector_size(32)));

#define variables 8

float8 axpy_vars(float8 a, float8 * x, float8 c, 
		 long m, long n) {
  long jj, i, j;
  for (jj = 0; jj < m; jj += variables) {
    asm volatile ("# i loop begin");
    for (i = 0; i < n; i++) {
      for (j = 0; j < variables; j++) {
	x[jj+j] = a * x[jj+j] + c;
      }
    }
    asm volatile ("# i loop end");
  }
  float8 s = { 0,0,0,0,0,0,0,0 };
  for (j = 0; j < m; j++) {
    s += x[j];
  }
  return s;
}

int main(int argc, char ** argv) {
  long m    = (argc > 1 ? atol(argv[1]) : 32);
  long n    = (argc > 2 ? atol(argv[2]) : 10000000);
  long seed = (argc > 2 ? atol(argv[2]) : 76843802738543);
  float a_[8];
  float x_[8 * m] __attribute__ ((aligned(64)));
  float c_[8];
  int i;
  unsigned short rg[3] = { seed >> 16, seed >> 8, seed };
  for (i = 0; i < 8; i++) {
    a_[i] = erand48(rg);
    c_[i] = erand48(rg);
  }
  for (i = 0; i < 8 * m; i++) {
    x_[i] = erand48(rg);
  }
  float8 a = *((float8*)a_);
  float8 c = *((float8*)c_);
  float8 * x = (float8*)x_;
  unsigned long long c0 = rdtscp();
  float8 y = axpy_vars(a, x, c, m, n);
  unsigned long long c1 = rdtscp();
  unsigned long long dc = c1 - c0;
  double flops = m * 16 * n;
  printf("%f flops\n", flops);
  printf("%llu clocks\n", dc);
  printf("%f flops/clock\n", flops / dc);
  if (seed % 2 == 0) {
    for (i = 0; i < 8; i++) {
      printf("y[%d] = %f\n", i, y[i]);
    }
  }
  return 0;
}


