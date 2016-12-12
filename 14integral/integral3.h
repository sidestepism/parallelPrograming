typedef double double4 __attribute__((vector_size(32)));

double integral(double a, double b, long n) {
  double s = 0.0;
  double dx = (b - a) / n;
  double x = a;
  double4 xs;
  double4 ss;   
asm volatile ("# loopbegin");
  for (long i = 0; i+3 < n; i += 4) {
    xs[0] = x+dx*0; xs[1] = x+dx*1; xs[2] = x+dx*2; xs[3] = x+dx*3;
    ss = xs * xs;
    s += ss[0] + ss[1] + ss[2] + ss[3];
    x += dx * 4;
  }
asm volatile ("# loopend");
  return s * dx;
}

