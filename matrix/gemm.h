/* 
 * gemm.h
 */

#pragma once
#include <stdio.h>
#include <stdlib.h>
#include "matrix.h"

#include <tpswitch/tpswitch.h>

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
    mk_task_group;
    matrix A_[2], C_[2];
    split_h(A, A_);
    split_h(C, C_);
    create_taskA(gemm_plus(A_[0], B, C_[0]));
    gemm_plus(A_[1], B, C_[1]);
    wait_tasks;
  } else if (N >= K) {
    mk_task_group;
    matrix B_[2], C_[2];
    split_v(B, B_);
    split_v(C, C_);
    create_taskA(gemm_plus(A, B_[0], C_[0]));
    gemm_plus(A, B_[1], C_[1]);
    wait_tasks;
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
    mk_task_group;
    matrix A_[2], C_[2];
    split_h(A, A_);
    split_h(C, C_);
    create_taskA(gemm_minus(A_[0], B, C_[0]));
    gemm_minus(A_[1], B, C_[1]);
    wait_tasks;
  } else if (N >= K) {
    mk_task_group;
    matrix B_[2], C_[2];
    split_v(B, B_);
    split_v(C, C_);
    create_taskA(gemm_minus(A, B_[0], C_[0]));
    gemm_minus(A, B_[1], C_[1]);
    wait_tasks;
  } else {
    matrix A_[2], B_[2];
    split_v(A, A_);
    split_h(B, B_);
    gemm_minus(A_[0], B_[0], C);
    gemm_minus(A_[1], B_[1], C);
  }
}

int gemm_main(int argc, char ** argv) {
  long M = atoi(argv[1]);
  long N = atoi(argv[2]);
  long K = atoi(argv[3]);
  int repeat = atoi(argv[3]);
  int r;

  matrix A(M, K);
  matrix B(K, N);
  matrix C(M, N);

  for (r = 0; r < repeat; r++) { 

    gen_periodic_matrix(A);
    gen_periodic_matrix(B);
    gen_const_matrix(C, 0.0);
    
    unsigned long long t0 = rdtsc();
    gemm_plus(A, B, C);
    unsigned long long t1 = rdtsc();
    unsigned long long flops = 2 * M * N * K;
    
    printf("%llu flops/%llu clocks = %f flops/clock\n",
	   flops, t1 - t0, (double)flops/(double)(t1 - t0));
  }
    
  if (check_gemm(A, B, C)) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 0;
}

