#!/usr/bin/python
import os,sys
sys.path.append(os.path.expanduser("~/parallel2/sys/src/tools/makefiles"))
from make import *

def flatten(l_of_l):
    return reduce((lambda x,y: x + y), l_of_l)

def gen_n():
    N = []
    for i in range(8, 23):
        p = 2 ** i
        for o in [ -2, 0, 2 ]:
            N.append(int(p * (1 + 0.1 * o)))
    return N

common = parameter_group()
common.n = gen_n()
common.cpu_node = [ 0 ]
common.mem_node = [ 0, 1 ]
common.output = "output/out_%(method)s_%(n)s_%(n_chains)s_%(n_threads)s_%(shuffle)s_%(payload)s_%(cpu_node)s_%(mem_node)s.txt"

traverse_latency = parameter_group()
traverse_latency.method = [ "t" ]
traverse_latency.n_chains = [ 1 ]
traverse_latency.n_threads = [ 1 ]
traverse_latency.shuffle = [ 1 ]
traverse_latency.payload = [ 0 ]

traverse_bandwidth_with_chains = parameter_group()
traverse_bandwidth_with_chains.method = [ "t" ]
traverse_bandwidth_with_chains.n_chains = [ 1, 2, 4, 8, 10, 14 ]
traverse_bandwidth_with_chains.n_threads = [ 1 ]
traverse_bandwidth_with_chains.shuffle = [ 1 ]
traverse_bandwidth_with_chains.payload = [ 1 ]

traverse_random_vs_ordered = parameter_group()
traverse_random_vs_ordered.method = [ "t" ]
traverse_random_vs_ordered.n_chains = [ 1 ]
traverse_random_vs_ordered.n_threads = [ 1 ]
traverse_random_vs_ordered.shuffle = [ 0 ]
traverse_random_vs_ordered.payload = [ 1 ]

traverse_vs_random = parameter_group()
traverse_vs_random.method = [ "r" ]
traverse_vs_random.n_chains = [ 1 ]
traverse_vs_random.n_threads = [ 1 ]
traverse_vs_random.shuffle = [ 1 ]
traverse_vs_random.payload = [ 1 ]

traverse_bandwidth_with_threads = parameter_group()
traverse_bandwidth_with_threads.method = [ "t" ]
traverse_bandwidth_with_threads.n_chains = [ 1, 2, 4, 8, 10, 14 ]
traverse_bandwidth_with_threads.n_threads = [ 1, 2, 4, 8, 12 ]
traverse_bandwidth_with_threads.shuffle = [ 1 ]
traverse_bandwidth_with_threads.payload = [ 1 ]

G = common * (traverse_vs_random 
              + traverse_bandwidth_with_threads
              + traverse_latency
              + traverse_bandwidth_with_chains
              + traverse_random_vs_ordered)

header = r"""
all :
.DELETE_ON_ERROR : 
output/created : ; mkdir -p output/created
"""

cmd = ("""
all : %(output)s
%(output)s : output/created 
"""
       "\t"
       "OMP_NUM_THREADS=%(n_threads)s"
       " numactl -N %(cpu_node)s -i %(mem_node)s --"
       " ./mem -m %(method)s"
       " -n %(n)s"
       " -c %(n_chains)s"
       " -x %(shuffle)s"
       " -p %(payload)s"
       " > %(output)s")

main(cmd, G, header=header) # , filename="a.mk"
