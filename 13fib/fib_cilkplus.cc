#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

long fib(int n) {
  if (n < 2) {
    return 1;
  } else {
    long x = _Cilk_spawn fib(n - 1);
    long y = _Cilk_spawn fib(n - 2);
    _Cilk_sync;
    return x + y;
  }
}

int main(int argc, char ** argv) {
  int n = (argc > 1 ? atoi(argv[1]) : 40);
  long x = fib(n);
  printf("fib(%d) = %ld\n", n, x);
  return 0;
}
