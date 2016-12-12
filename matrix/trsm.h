/*
 * trsm.h
 */

#pragma once
#include <stdio.h>
#include "matrix.h"
#include "gemm.h"

#include <tpswitch/tpswitch.h>

void trsm_loop(matrix L, matrix B) {
  long n = L.n_rows;
  long m = B.n_cols;
  long i, j, k;
  for (k = 0; k < n; k++) {
    real lkk_inv = 1.0 / L(k,k);
    for (j = 0; j < m; j++)
      B(k,j) *= lkk_inv;
    for (i = k + 1; i < n; i++) {
      for (j = 0; j < m; j++) {
	B(i,j) -= L(i,k) * B(k,j);
      }
    }
  }
}

void trsm(matrix L, matrix B) {
  long m = B.n_rows;
  long n = B.n_cols;
  assert(m == L.n_rows);
  assert(m == L.n_cols);
  if (sizeof(real) * m * (m + n) < trsm_threshold) {
    trsm_loop(L, B);
  } else if (m < n) {
    matrix B_[2];
    split_v(B, B_);
    mk_task_group;
    create_taskA(trsm(L, B_[0]));
    trsm(L, B_[1]);
    wait_tasks;
  } else {
    matrix L_[2][2], B_[2];
    split_hv(L, L_);
    split_h(B, B_);
    trsm(L_[0][0], B_[0]);
    gemm_minus(L_[1][0], B_[0], B_[1]);
    trsm(L_[1][1], B_[1]);
  }
}

int trsm_main(int argc, char ** argv) {
  long M = atol(argv[1]);
  long N = atol(argv[2]);
  int repeat = atoi(argv[3]);
  int r;

  matrix A(M, M);
  matrix X(M, N);
  matrix C(M, N);

  for (r = 0; r < repeat; r++) { 

    gen_const_lower_matrix(A, 1.0);
    gen_random_matrix(X);
    gen_const_matrix(C, 0.0);
    gemm_plus(A, X, C);
    
    unsigned long long t0 = rdtsc();
    trsm(A, C);			// X := A^{-1} C
    unsigned long long t1 = rdtsc();
    unsigned long long flops = 2 * M * M * N;
    
    printf("USO: %llu flops/%llu clocks = %f flops/clock\n",
	   flops, t1 - t0, (double)flops/(double)(t1 - t0));
  }
    
  if (check_equal(X, C)) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 0;
}

