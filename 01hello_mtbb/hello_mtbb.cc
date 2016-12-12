/*
 * hello_mtbb.cc --- 
   a minimum example that demonstrates how to write,
   compile, and link TBB programs using MassiveThreads
   library as the underlying scheduler
 */
#include <stdio.h>
#include <unistd.h>
#include <mtbb/task_group.h>

int f() {
  printf("child\n");
  sleep(1);
  return 0;
}

int main() {
  mtbb::task_group tg;
  tg.run([&] { f(); });
  printf("parent\n");
  sleep(1);
  tg.wait();
  return 0;
}
