#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <mtbb/task_group.h>

long fib(int n) {
  if (n < 2) {
    return 1;
  } else {
    mtbb::task_group tg;
    long x;
    tg.run([&] { x = fib(n - 1); });
    long y = fib(n - 2);
    tg.wait();
    return x + y;
  }
}

int main(int argc, char ** argv) {
  int n = (argc > 1 ? atoi(argv[1]) : 40);
  long x = fib(n);
  printf("fib(%d) = %ld\n", n, x);
  return 0;
}
