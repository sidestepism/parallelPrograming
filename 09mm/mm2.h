void gemm(matrix& A, matrix& B, matrix& C) {
  long M = C.nR, N = C.nC, K = A.nC;
  float c = 0.0;  
  for (long i = 0; i < M; i++) {
    for (long j = 0; j < N; j++) {
      c = 0.0;
      asm volatile ("# loopbegin");
      #pragma omp simd reduction(+:c)
      for (long k = 0; k < K; k++) {
	    c += A(i,k) * B(k,j);
      }
      asm volatile ("# loopend");
      C(i,j) += c;
    }
  }
}
