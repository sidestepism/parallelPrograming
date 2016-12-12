enum { W = 8 };

void gemm(matrix& A, matrix& B, matrix& C) {
  long M = C.nR, N = C.nC, K = A.nC;
  for (long i = 0; i < M; i++) {
    for (long j = 0; j < N; j += W) {
      for (long k = 0; k < K; k++) {
	C.v(i,j) += A(i,k) * B.v(k,j);
      }
    }
  }
}
