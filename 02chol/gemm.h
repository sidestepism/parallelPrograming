/* 
 * gemm.h
 */

#pragma once
#include <stdio.h>
#include <stdlib.h>
#include "matrix.h"

void gemm_loop_plus(matrix A, matrix B, matrix C) {
  long M = C.n_rows, N = C.n_cols, K = A.n_cols;
  assert(M == A.n_rows);
  assert(N == B.n_cols);
  assert(K == B.n_rows);
  long i, j, k;
  for (i = 0; i < M; i++) {
    for (j = 0; j < N; j++) {
      for (k = 0; k < K; k++) {
	C(i,j) += A(i,k) * B(k,j);
      }
    }
  }
}

void gemm_loop_minus(matrix A, matrix B, matrix C) {
  long M = C.n_rows, N = C.n_cols, K = A.n_cols;
  assert(M == A.n_rows);
  assert(N == B.n_cols);
  assert(K == B.n_rows);

  long i, j, k;
  for (i = 0; i < M; i++) {
    for (j = 0; j < N; j++) {
      for (k = 0; k < K; k++) {
	C(i,j) -= A(i,k) * B(k,j);
      }
    }
  }
}

void gemm_plus(matrix A, matrix B, matrix C) {
  long M = C.n_rows, N = C.n_cols, K = A.n_cols;
  assert(M == A.n_rows);
  assert(N == B.n_cols);
  assert(K == B.n_rows);
  if (sizeof(real) * (M * N + M * K + K * N) < gemm_threshold) {
    gemm_loop_plus(A, B, C);
  } else if (M >= K && M >= N) {
    matrix A_[2], C_[2];
    split_h(A, A_);
    split_h(C, C_);
    gemm_plus(A_[0], B, C_[0]);
    gemm_plus(A_[1], B, C_[1]);
  } else if (N >= K) {
    matrix B_[2], C_[2];
    split_v(B, B_);
    split_v(C, C_);
    gemm_plus(A, B_[0], C_[0]);
    gemm_plus(A, B_[1], C_[1]);
  } else {
    matrix A_[2], B_[2];
    split_v(A, A_);
    split_h(B, B_);
    gemm_plus(A_[0], B_[0], C);
    gemm_plus(A_[1], B_[1], C);
  }
}

void gemm_minus(matrix A, matrix B, matrix C) {
  long M = C.n_rows, N = C.n_cols, K = A.n_cols;
  assert(M == A.n_rows);
  assert(N == B.n_cols);
  assert(K == B.n_rows);
  if (sizeof(real) * (M * N + M * K + K * N) < gemm_threshold) {
    gemm_loop_minus(A, B, C);
  } else if (M >= K && M >= N) {
    matrix A_[2], C_[2];
    split_h(A, A_);
    split_h(C, C_);
    gemm_minus(A_[0], B, C_[0]);
    gemm_minus(A_[1], B, C_[1]);
  } else if (N >= K) {
    matrix B_[2], C_[2];
    split_v(B, B_);
    split_v(C, C_);
    gemm_minus(A, B_[0], C_[0]);
    gemm_minus(A, B_[1], C_[1]);
  } else {
    matrix A_[2], B_[2];
    split_v(A, A_);
    split_h(B, B_);
    gemm_minus(A_[0], B_[0], C);
    gemm_minus(A_[1], B_[1], C);
  }
}

int gemm_main(int argc, char ** argv) {
  long M = (argc > 1 ? atoi(argv[1]) : 2000);
  long N = (argc > 2 ? atoi(argv[2]) : 2000);
  long K = (argc > 3 ? atoi(argv[3]) : 2000);
  int repeat = (argc > 4 ? atoi(argv[4]) : 3 + 5e9 / (M * N * K));
  if (repeat > 30) repeat = 30;
  int r;

  //real * a = new real[M * K + K * N + M * N];
  real * a = (real *)mmap(0, sizeof(real) * (M * K + K * N + M * N), 
			  PROT_READ|PROT_WRITE, MAP_ANONYMOUS|MAP_PRIVATE,
			  -1, 0);

  matrix A(M, K, K, a);
  matrix B(K, N, N, &a[M * K]);
  matrix C(M, N, N, &a[M * K+ K * N]);

  gen_periodic_matrix(A);
  gen_periodic_matrix(B);

  for (r = 0; r < repeat; r++) {
    printf("------ %d ------\n", r);
    printf("matrix multiply (%ld,%ld) += (%ld,%ld) x (%ld,%ld) matrix (%ld bytes) ... ", 
	   M, N, M, K, K, N, 
	   (M * K + K * N + M * N) * sizeof(real)); 
    fflush(stdout);

    gen_const_matrix(C, 0.0);

    double t0 = cur_time();
    unsigned long long c0 = rdtscp();
    gemm_plus(A, B, C);
    unsigned long long c1 = rdtscp();
    double t1 = cur_time();
    double dt = t1 - t0;
    unsigned long long dc = c1 - c0;

    /* asymptoticc complexity */
    double n3 = (double)M * (double)N * (double)K;
    /* accurate flops */
    double flops = 2 * (double)M * (double)N * (double)K;

    printf("done\n");
    printf("checking if the result is correct ... "); fflush(stdout);
    if (check_gemm(A, B, C)) {
      printf("OK\n");
      printf(" multiplied (%ld,%ld) += (%ld,%ld) x (%ld,%ld)"
	     " in %f sec, %llu clocks\n", 
	     M, N, M, K, K, N, dt, dc);
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

