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
    transpose(A_[0][1], A_[1][0]);
    gemm_minus(A_[1][0], A_[0][1], A_[1][1]);
    chol(A_[1][1]);
  }
}

int chol_main(int argc, char ** argv) {
  /* the size of the matrix A */
  long N     = (argc > 1 ? atol(argv[1]) : 2000);
  /* times to repeat the same computation */
  int repeat = (argc > 2 ? atoi(argv[2]) : 3);
  int r;

  /* create three matrices (see matrix class) */
  matrix A_org(N, N);
  matrix A(N, N);
  matrix L(N, N);
  matrix U(N, N);

  gen_random_lower_matrix(L);
  transpose(L, U);		/* U = tL */
  gen_const_matrix(A_org, 0.0);	/* A = 0 */
  gemm_plus(L, U, A_org);	/* A += L tL */
  /* copy strictly upper part of U into L */
  copy_upper(U, L);

  for (r = 0; r < repeat; r++) {
    printf("------ %d ------\n", r);
    printf("cholesky decompose %ld x %ld matrix ... ", N, N); fflush(stdout);
    copy(A_org, A);

    double t0 = cur_time();
    unsigned long long c0 = rdtscp();
    chol(A);
    unsigned long long c1 = rdtscp();
    double t1 = cur_time();
    double dt = t1 - t0;
    unsigned long long dc = c1 - c0;
    /* asymptoticc complexity */
    double n3 = (double)N * (double)N * (double)N;
    /* accurate flops */
    double flops = (double)(N-1) * (double)N * (double)(N+1) * 2 / (double)3;

    printf("done\n");
    printf("checking if the result is correct ... "); fflush(stdout);
    /* k=1...n (1, 2(n-k)+(n-k)^2, (n-k)^2)
       sqrt : n
       add : (n-1)^2 + ... 1^2 = 1/6 (n-1)n(2n-1)
       mul : add + 2 ((n-1) + ... + 0) = 1/6(n-1)n(2n+5)
    */
    if (matrix_equal(A, L)) {
      printf("OK\n");
      printf("decomposed %ld x %ld matrix in %f sec, %llu clocks\n",
	     N, N, dt, dc);
      printf(" time   = %f * n^3 nano seconds\n", 1.0e9 * dt / n3);
      printf(" clocks = %f * n^3 clocks\n", dc / n3);
      printf(" %f GFLOPS\n", (double)flops * 1.0e-9 / dt);
      printf(" %f flops/clock\n", (double)flops/(double)dc);
    } else {
      printf("NG\n");
    }
  }
  return 0;
}




