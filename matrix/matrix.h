/* 
 * matrix.h
 */

#pragma once

#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

typedef float real;

const long gemm_threshold = 1 << 16;
const long trsm_threshold = 1 << 16;
const long chol_threshold = 1 << 16;
const long tcopy_threshold = 1 << 16;

static inline unsigned long long rdtsc() {
  unsigned long long u;
  asm volatile ("rdtsc;shlq $32,%%rdx;orq %%rdx,%%rax":"=a"(u)::"%rdx");
  return u;
}

double cur_time() {
  struct timeval tp[1];
  gettimeofday(tp, 0);
  return tp->tv_sec + 1.0e-6 * tp->tv_usec;
}

struct matrix {
  real * a;
  long ld;		      // leading dimension
  long n_rows;		      // number of rows
  long n_cols;		      // number of columns

  matrix() {}
  matrix(long n_rows, long n_cols, long ld, real * a) {
    init(n_rows,  n_cols, ld, a);
  }
  matrix(long n_rows, long n_cols, long ld) {
    init(n_rows,  n_cols, ld);
  }
  matrix(long n_rows, long n_cols) {
    init(n_rows,  n_cols);
  }

  void init(long n_rows_, long n_cols_, long ld_, real * a_) {
    n_rows = n_rows_;
    n_cols = n_cols_;
    ld = ld_;
    a = a_;
  }

  void init(long n_rows, long n_cols, long ld) {
    real * a = new real[n_rows * ld];
    init(n_rows, n_cols, ld, a);
  }
  
  void init(long n_rows, long n_cols) {
    init(n_rows, n_cols, n_cols);
  }

  real & operator ()(long i, long j) {
    return a[i * ld + j];
  }
};

void split_h(matrix A, matrix S[2]) {
  const long r = A.n_rows;
  S[0] = matrix(   r/2, A.n_cols, A.ld,  A.a);
  S[1] = matrix(r -r/2, A.n_cols, A.ld, &A.a[(r/2) * A.ld]);
}

void split_v(matrix A, matrix S[2]) {
  const long c = A.n_cols;
  S[0] = matrix(A.n_rows, c/2,     A.ld,  A.a);
  S[1] = matrix(A.n_rows, c - c/2, A.ld, &A.a[c/2]);
}

void split_hv(matrix A, matrix S[2][2]) {
  matrix T[2];
  split_h(A, T);
  split_v(T[0], S[0]);
  split_v(T[1], S[1]);
}

void gen_const_matrix(matrix A, real c) {
  const long M = A.n_rows;
  const long N = A.n_cols;
  long i, j;
  for (i = 0; i < M; i++) {
    for (j = 0; j < N; j++) {
      A(i,j) = c;
    }
  }
}

void gen_const_lower_matrix(matrix A, real c) {
  const long M = A.n_rows;
  const long N = A.n_cols;
  long i, j;
  for (i = 0; i < M; i++) {
    for (j = 0; j < N; j++) {
      A(i,j) = (i >= j ? c : 0.0);
    }
  }
}

const long matrix_period = 5;

real gen_periodic_matrix_elem(long i, long j) {
  const int p = matrix_period;
  const long ii = i % p;
  const long jj = j % p;
  return ii * p + jj;
}

void gen_periodic_matrix(matrix A) {
  const long M = A.n_rows;
  const long N = A.n_cols;
  const long p = matrix_period;
  long i, j;
  for (i = 0; i < M; i++) {
    for (j = 0; j < N; j++) {
      A(i,j) = gen_periodic_matrix_elem(i % p, j % p);
    }
  }
}

void gen_random_matrix(matrix A) {
  const long M = A.n_rows;
  const long N = A.n_cols;
  unsigned short xsubi[3] = { 918, 729, 123 };
  long i, j;
  for (i = 0; i < M; i++) {
    for (j = 0; j < N; j++) {
      A(i,j) = 1 + nrand48(xsubi) % 9;
    }
  }
}

void gen_random_lower_matrix(matrix A) {
  const long M = A.n_rows;
  const long N = A.n_cols;
  unsigned short xsubi[3] = { 918, 729, 123 };
  long i, j;
  for (i = 0; i < M; i++) {
    for (j = 0; j < N; j++) {
      if (i > j) {
	A(i,j) = 1 + nrand48(xsubi) % 9;
      } else if (i == j) {
	A(i,j) = 1 << (nrand48(xsubi) % 4);
      }
    }
  }
}

long min_long(long x, long y) {
  return x < y ? x : y;
}

int check_equal(matrix A, matrix B) {
  const long M = A.n_rows;
  const long N = A.n_cols;
  assert(M == B.n_rows);
  assert(N == B.n_cols);
  long i, j;
  for (i = 0; i < M; i++) {
    for (j = 0; j < N; j++) {
      assert(A(i,j) == B(i,j));
    }
  }
  return 1;
}

int check_lower_equal(matrix A, matrix B) {
  const long M = A.n_rows;
  const long N = A.n_cols;
  assert(M == B.n_rows);
  assert(N == B.n_cols);
  long i, j;
  for (i = 0; i < M; i++) {
    for (j = 0; j < N; j++) {
      if (i >= j) {
	assert(fabs(A(i,j) - B(i,j)) < 1.0e-5);
      }
    }
  }
  return 1;
}

int check_gemm(matrix A, matrix B, matrix C) {
  const long M = C.n_rows;
  const long N = C.n_cols;
  const long K = A.n_cols;
  const long p = matrix_period;
  long chk[p][p];
  long i, j, k;

  assert(M == A.n_rows);
  assert(N == B.n_cols);
  assert(K == B.n_rows);

  for (i = 0; i < min_long(p, M); i++) {
    for (j = 0; j < min_long(p, N); j++) {
      real sp = 0.0;
      for (k = 0; k < min_long(p, K); k++) {
	sp += A(i, k) * B(k, j);
      }
      real s = sp * (K / p);
      for (k = 0; k < K % p; k++) {
	s += A(i, k) * B(k, j);
      }
      chk[i][j] = s;
    }
  }

  for (i = 0; i < M; i++) {
    for (j = 0; j < N; j++) {
      assert(C(i,j) == chk[i % p][j % p]);
    }
  }
  return 1;
}

void scal(real alpha, matrix X) {
  long i, j;
  for (i = 0; i < X.n_rows; i++) {
    for (j = 0; j < X.n_cols; j++) {
      X(i,j) *= alpha;
    }
  }
}

void copy(matrix A, matrix B) {
  long i, j;
  const long M = A.n_rows;
  const long N = A.n_cols;
  assert(M == B.n_rows);
  assert(N == B.n_cols);
  if (M == 1 && N == 1) {
    B(0,0) = A(0,0);
  } else if (M >= N) {
    matrix A_[2], B_[2];
    split_h(A, A_);
    split_h(B, B_);
    copy(A_[0], B_[0]);
    copy(A_[1], B_[1]);
  } else {
    matrix A_[2], B_[2];
    split_v(A, A_);
    split_v(B, B_);
    copy(A_[0], B_[0]);
    copy(A_[1], B_[1]);
  }
}

void tcopy_loop(matrix A, matrix B) {
  long i, j;
  const long M = A.n_rows;
  const long N = A.n_cols;
  assert(N == B.n_rows);
  assert(M == B.n_cols);

  for (i = 0; i < M; i++) {
    for (j = 0; j < N; j++) {
      B(j,i) = A(i,j);
    }
  }
}


void tcopy(matrix A, matrix B) {
  long i, j;
  const long M = A.n_rows;
  const long N = A.n_cols;
  assert(N == B.n_rows);
  assert(M == B.n_cols);
  if (sizeof(real) * M * N < tcopy_threshold) {
    tcopy_loop(A, B);
  } else if (M >= N) {
    matrix A_[2], B_[2];
    split_h(A, A_);
    split_v(B, B_);
    tcopy(A_[0], B_[0]);
    tcopy(A_[1], B_[1]);
  } else {
    matrix A_[2], B_[2];
    split_v(A, A_);
    split_h(B, B_);
    tcopy(A_[0], B_[0]);
    tcopy(A_[1], B_[1]);
  }
}

void print_matrix(matrix A) {
  long M = A.n_rows;
  long N = A.n_cols;
  long i, j;
  for (i = 0; i < M; i++) {
    for (j = 0; j < M; j++) {
      printf("%.2f ", A(i, j));
    }
    printf("\n");
  }
}

