typedef double double4 __attribute__((vector_size(32)));

double integral(double a, double b, long n) {
  double s = 0.0;
  double dx = (b - a) / n;;
  double x = a;
asm volatile ("# loopbegin");
  for (long i = 0; i < n; i ++){
    s += x * x;
    x += dx;
  }
asm volatile ("# loopend");
  return s * dx;
}

