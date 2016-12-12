/*
 * chol.h
 */

#pragma once
#include <stdio.h>
#include <math.h>
#include "matrix.h"
#include "gemm.h"
#include "trsm.h"

void chol_loop(matrix A) {
  long i, j, k;
  long n = A.n_rows;
  assert(n == A.n_cols);
  for (k = 0; k < n; k++) {
    real akk = A(k,k);
    assert(akk >= 0.0);
    real sqrt_akk = sqrt(akk);
    A(k,k) = sqrt_akk;
    for (j = k + 1; j < n; j++)
      A(k,j) /= sqrt_akk;
    for (i = k + 1; i < n; i++)
      A(i,k) /= sqrt_akk;
    for (i = k + 1; i < n; i++)
      for (j = k + 1; j < n; j++)
	A(i,j) -= A(i,k) * A(k,j);
  }
}

void chol(matrix A) {
  long n = A.n_rows;
  assert(n == A.n_cols);
  if (n * n * sizeof(real) < chol_threshold) {
    chol_loop(A);
  } else {
    matrix A_[2][2];
    split_hv(A, A_);
    chol(A_[0][0]);
    trsm(A_[0][0], A_[0][1]);
    tcopy(A_[0][1], A_[1][0]);
    gemm_minus(A_[1][0], A_[0][1], A_[1][1]);
    chol(A_[1][1]);
  }
}

int chol_main(int argc, char ** argv) {
  long N = atol(argv[1]);
  int repeat = atoi(argv[2]);
  int r;

  matrix A(N, N);
  matrix L(N, N);
  matrix U(N, N);

  for (r = 0; r < repeat; r++) {
    gen_const_matrix(A, 0.0);
    gen_random_lower_matrix(L);
    tcopy(L, U);
    gemm_plus(L, U, A);

    dr_start(0);
    double rt0 = cur_time();
    unsigned long long t0 = rdtsc();
    chol(A);
    unsigned long long t1 = rdtsc();
    double rt1 = cur_time();
    dr_stop();

    /* k=1...n (1, 2(n-k)+(n-k)^2, (n-k)^2)
       sqrt : n
       add : (n-1)^2 + ... 1^2 = 1/6 (n-1)n(2n-1)
       mul : add + 2 ((n-1) + ... + 0) = 1/6(n-1)n(2n+5)
    */

    double dt = rt1 - rt0;
    unsigned long long flops = (N-1) * N * (N+1) * 2 / 3;
    double flops_clock = (double)flops/(double)(t1 - t0);
    double gflops = (double)flops * 1.0e-9 / dt;

    printf("%llu flops in %llu clocks, %.3f sec; %f flops/clock, %f GFLOPS\n",
	   flops, t1 - t0, dt,
	   flops_clock, gflops);
  }
  dr_dump();

  if (check_lower_equal(A, L)) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 0;
}




