/*
 * hello_tbb.cc --- 
   a minimum example that demonstrates how to write,
   compile, and link TBB programs
 */

#include <stdio.h>
#include <unistd.h>
#include <tbb/task_group.h>

int f() {
  printf("child\n");
  sleep(1);
  return 0;
}

int main() {
  tbb::task_group tg;
  tg.run([&] { f(); });
  printf("parent\n");
  sleep(1);
  tg.wait();
  return 0;
}
