import time
import numpy as np
n = 512 * 4
m = 512
W = np.array(np.random.randn(n * n), dtype=np.float32).reshape((n, n))
v = np.array(np.random.randn(n * m), dtype=np.float32).reshape((n, m))
T = 100

t0 = time.time()
for i in range(T):
    W.dot(v)
t1 = time.time()
print("%f GFLOPS" % ((2.0 * n * n * m * T) / (t1 - t0) * 1.0e-9))
print("%f microsec/multiply" % ((t1 - t0) / T * 1.0e6))
    
