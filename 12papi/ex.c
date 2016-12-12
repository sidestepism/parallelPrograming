#include <stdio.h>
#include <stdlib.h>
#include <papi.h>

void check_(int ret, const char * fun) {
  if (ret != PAPI_OK) {
    fprintf(stderr, "%s failed (%s)\n", fun, PAPI_strerror(ret));
    exit(1);
  }
}
#define check(f) check_(f, #f)

int main() {
  int ver = PAPI_library_init(PAPI_VER_CURRENT);
  if (ver != PAPI_VER_CURRENT) {
    fprintf(stderr, "PAPI_library_init(%d) failed (returned %d)\n",
	    PAPI_VER_CURRENT, ver);
    exit(1);
  }
  int es = PAPI_NULL;
  check(PAPI_create_eventset(&es));
  check(PAPI_add_named_event(es, "ix86arch::LLC_MISSES"));
  check(PAPI_start(es));
  long long values[1];
  check(PAPI_stop(es, values));
  printf("%lld\n", values[0]);
  return 0;
}
