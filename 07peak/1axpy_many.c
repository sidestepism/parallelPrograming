#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static inline unsigned long long rdtscp() {
  unsigned long long u;
  asm volatile ("rdtscp;shlq $32,%%rdx;orq %%rdx,%%rax;movq %%rax,%0":"=q"(u)::"%rax", "%rdx", "%rcx");
  return u;
}

typedef float float8 __attribute__((vector_size(32)));

#define U 10

/* this code should achieve nearly peak FLOPS
   (16 flops/clock) when you have more than 8 variables */
float8 axpy_many(float8 a, 
		 float8 x0, float8 x1,
		 float8 x2, float8 x3,
		 float8 x4, float8 x5,
		 float8 x6, float8 x7,
		 float8 x8, float8 x9,
		 float8 x10, float8 x11,
		 float8 x12, float8 x13,
		 float8 x14, float8 x15,
		 float8 c, long n) {
  long i;
  asm volatile("# many_sequences loop begin");
  for (i = 0; i < n; i++) {
#if U>0
    x0 = a * x0 + c;
#endif
#if U>1
    x1 = a * x1 + c;
#endif
#if U>2
    x2 = a * x2 + c;
#endif
#if U>3
    x3 = a * x3 + c;
#endif
#if U>4
    x4 = a * x4 + c;
#endif
#if U>5
    x5 = a * x5 + c;
#endif
#if U>6
    x6 = a * x6 + c;
#endif
#if U>7
    x7 = a * x7 + c;
#endif
#if U>8
    x8 = a * x8 + c;
#endif
#if U>9
    x9 = a * x9 + c;
#endif
#if U>10
    x10 = a * x10 + c;
#endif
#if U>11
    x11 = a * x11 + c;
#endif
#if U>12
    x12 = a * x12 + c;
#endif
#if U>13
    x13 = a * x13 + c;
#endif
#if U>14
    x14 = a * x14 + c;
#endif
#if U>15
    x15 = a * x15 + c;
#endif
  }
  asm volatile("# many_sequences loop end");
  return x0 + x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13 + x14 + x15;
}

int main(int argc, char ** argv) {
  long n = (argc > 2 ? atol(argv[2]) : 100000000);
  long seed = (argc > 2 ? atol(argv[2]) : 76843802738543);
  float a_[8];
  float x_[8 * U];
  float c_[8];
  int i;
  unsigned short rg[3] = { seed >> 16, seed >> 8, seed };
  for (i = 0; i < 8; i++) {
    a_[i] = erand48(rg);
    c_[i] = erand48(rg);
  }
  for (i = 0; i < 8 * U; i++) {
    x_[i] = erand48(rg);
  }
  float8 a = *((float8*)a_);
  float8 c = *((float8*)c_);
  float8 x0 = *((float8*)&x_[0]);
  float8 x1 = *((float8*)&x_[8]);
  float8 x2 = *((float8*)&x_[16]);
  float8 x3 = *((float8*)&x_[24]);
  float8 x4 = *((float8*)&x_[32]);
  float8 x5 = *((float8*)&x_[40]);
  float8 x6 = *((float8*)&x_[48]);
  float8 x7 = *((float8*)&x_[56]);
  float8 x8 = *((float8*)&x_[64]);
  float8 x9 = *((float8*)&x_[72]);
  float8 x10 = *((float8*)&x_[80]);
  float8 x11 = *((float8*)&x_[88]);
  float8 x12 = *((float8*)&x_[96]);
  float8 x13 = *((float8*)&x_[104]);
  float8 x14 = *((float8*)&x_[112]);
  float8 x15 = *((float8*)&x_[120]);
  unsigned long long c0 = rdtscp();
  float8 y = axpy_many(a, x0, x1, x2, x3, x4, x5, x6, x7, 
		       x8, x9, x10, x11, x12, x13, x14, x15,
		       c, n);
  unsigned long long c1 = rdtscp();
  unsigned long long dc = c1 - c0;
  double flops = U * 16 * n;
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


