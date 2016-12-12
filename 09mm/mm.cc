/* 
 * mm.cc
 */
#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <x86intrin.h>

void * alloc64(size_t sz) {
  void * a = 0;
  int r = posix_memalign(&a, 64, sz);
  assert(r == 0);
  return a;
}

typedef float float8 __attribute__((vector_size(32)));

struct matrix {
  long nR;			// number of rows
  long nC;			// number of columns
  long ld;			// leading dimension
  float * a;			// pointer to data
  matrix(long nR_, long nC_, long ld_, float * a_=0) {
    nR = nR_;
    nC = nC_;
    ld = ld_;
    if (a_) {
      a = a_;
    } else {
      a = (float*)alloc64(sizeof(float) * nR * ld);
    }
  }
  // return A(i,j)
  float& operator() (long i, long j) {
    return a[i * ld + j];
  }
  // A.v(i,j) rerurns a vector A(i,j:j+8)
  // the address must be aligned to 32 bytes
  float8& v(long i, long j) {
    return *((float8*)&a[i * ld + j]);
  }
  void rand_init(unsigned short rg[3]) {
    for (long i = 0; i < nR; i++) {
      for (long j = 0; j < nC; j++) {
	(*this)(i,j) = erand48(rg);
      }
    }
  }
  void const_init(float c) {
    for (long i = 0; i < nR; i++) {
      for (long j = 0; j < nC; j++) {
	(*this)(i,j) = c;
      }
    }
  }
  void zero() {
    const_init(0.0);
  }
};

#include MM_H

long long diff_tsc(long long c1, long long c0) {
  /* want to know what the heck is this *(2.7/2.3)?
     => see the exercise page */
  return (c1 - c0) * (2.7/2.3);
}

float comp_ij(matrix& A, matrix& B, matrix& C, long i, long j, long times) {
  float s = 0.0;
  long K = A.nC;
  for (long t = 0; t < times; t++) {
    for (long k = 0; k < K; k++) {
      s += A(i,k) * B(k,j);
    }
  }
  return s;
}

int main(int argc, char ** argv) {
  long M    = (argc > 1 ? atol(argv[1]) : 40);
  long N    = (argc > 2 ? atol(argv[2]) : 32);
  long K    = (argc > 3 ? atol(argv[3]) : 64);
  long lda_ = (argc > 4 ? atol(argv[4]) : 0);
  long ldb_ = (argc > 5 ? atol(argv[5]) : 0);
  long ldc_ = (argc > 6 ? atol(argv[6]) : 0);
  int times = (argc > 7 ? atoi(argv[7]) : 10);
  long chk  = (argc > 8 ? atol(argv[8]) : 1);
  long seed = (argc > 9 ? atol(argv[9]) : 76843802738543);
  long lda = (lda_ ? lda_ : K);
  long ldb = (ldb_ ? ldb_ : N);
  long ldc = (ldc_ ? ldc_ : N);
  float * a = (float *)alloc64(sizeof(float) * M * lda);
  float * b = (float *)alloc64(sizeof(float) * K * ldb);
  float * c = (float *)alloc64(sizeof(float) * M * ldc);
  matrix A(M, K, lda, a);
  matrix B(K, N, ldb, b);
  matrix C(M, N, ldc, c);
  unsigned short rg[3] = { (unsigned short)((seed >> 16) & 65535),
			   (unsigned short)((seed >> 8)  & 65535),
			   (unsigned short)((seed >> 0)  & 65535) };
  double flops = 2.0 * (double)M * (double)N * (double)K * (double)times;
  A.rand_init(rg);
  B.rand_init(rg);
  C.zero();
  printf("M = %ld, N = %ld, K = %ld\n", M, N, K);
  printf("A : %ld x %ld (ld=%ld) %ld bytes\n", A.nR, A.nC, A.ld, A.nR * A.nC * sizeof(float));
  printf("B : %ld x %ld (ld=%ld) %ld bytes\n", B.nR, B.nC, B.ld, B.nR * B.nC * sizeof(float));
  printf("C : %ld x %ld (ld=%ld) %ld bytes\n", C.nR, C.nC, C.ld, C.nR * C.nC * sizeof(float));
  printf("total = %ld bytes\n",
	 (A.nR * A.nC + B.nR * B.nC + C.nR * C.nC) * sizeof(float));
  printf("repeat %d times (%.0f flops) ... ", times, flops); fflush(stdout);
  long long c0 = _rdtsc();
  for (long t = 0; t < times; t++) {
    gemm(A, B, C);
  }
  long long c1 = _rdtsc();
  double clk = diff_tsc(c1, c0);
  printf("done\n");
  printf(" in %.f clocks\n", clk);
  printf(" %f flops/clock\n", flops / clk);
  if (chk) {
    long i = nrand48(rg) % M;
    long j = nrand48(rg) % N;
    float s = comp_ij(A, B, C, i, j, times);
    printf("C(%ld,%ld) = %f, ans = %f, |C(%ld,%ld) - s| = %.9f\n",
	   i, j, C(i,j), s, i, j, fabs(C(i,j) - s));
  }
  return 0;
}
