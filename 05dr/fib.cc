#include <stdio.h>
#include <unistd.h>
#include <mtbb/task_group.h>

long sfib(int n) {
  if (n < 2) {
    return 1;
  } else {
    long x = sfib(n - 1);
    long y = sfib(n - 2);
    return x + y;
  }
}

long fib(int n) {
  if (n < 15) {
    return sfib(n);
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
  dr_start(0);
  long x = fib(n);
  dr_stop();
  printf("fib(%d) = %ld\n", n, x);
  dr_dump();
  return 0;
}
