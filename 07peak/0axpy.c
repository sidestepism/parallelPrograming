
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static inline unsigned long long rdtscp() {
  unsigned long long u;
  asm volatile ("rdtscp;shlq $32,%%rdx;orq %%rdx,%%rax;movq %%rax,%0":"=q"(u)::"%rax", "%rdx", "%rcx");
  return u;
}

/* GCC vector extension tio define a vector of eight floats (32 bytes) */
typedef float float8 __attribute__((vector_size(32)));

/* this code should achieve 8 clocks/iteration throughput */
float8 axpy_1(float8 a, float8 x, float8 c, long n) {
  long i;
  asm volatile ("# ax+c loop begin");
  for (i = 0; i < n; i += 2) {
    x = a * x + c;
    x = a * x + c;
  }
  asm volatile ("# ax+c loop end");
  return x;
}

int main(int argc, char ** argv) {
  long n = (argc > 2 ? atol(argv[2]) : 100000000);
  long seed = (argc > 2 ? atol(argv[2]) : 76843802738543);
  float a_[8];
  float x_[8];
  float c_[8];
  int i;
  unsigned short rg[3] = { seed >> 16, seed >> 8, seed };
  for (i = 0; i < 8; i++) {
    a_[i] = erand48(rg);
    x_[i] = erand48(rg);
    c_[i] = erand48(rg);
  }
  float8 a = *((float8*)a_);
  float8 x = *((float8*)x_);
  float8 c = *((float8*)c_);
  unsigned long long c0 = rdtscp();
  x = axpy_1(a, x, c, n);
  unsigned long long c1 = rdtscp();
  unsigned long long dc = c1 - c0;
  double flops = 16 * n;
  printf("%f flops\n", flops);
  printf("%llu clocks\n", dc);
  printf("%f flops/clock\n", flops / dc);
  if (seed % 2 == 0) {
    for (i = 0; i < 8; i++) {
      printf("x[%d] = %f\n", i, x[i]);
    }
  }
  return 0;
}


