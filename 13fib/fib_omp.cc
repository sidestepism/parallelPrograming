#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

long fib(int n) {
  if (n < 2) {
    return 1;
  } else {
    long x, y;
#pragma omp task shared(x)
    x = fib(n - 1);
#pragma omp task shared(y)
    y = fib(n - 2);
#pragma omp taskwait
    return x + y;
  }
}

int main(int argc, char ** argv) {
  int n = (argc > 1 ? atoi(argv[1]) : 40);
  long x = fib(n);
  printf("fib(%d) = %ld\n", n, x);
  return 0;
}
