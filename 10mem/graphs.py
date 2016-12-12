#!/usr/bin/python
import sys,os,types

# ------------- preamble -------------

parallel_dir = "/home/%(USER)s/parallel2" % os.environ
if "parallel_dir" in os.environ:
    parallel_dir = os.environ["parallel_dir"]

sys.path.append("%s/sys/src/tools/smart_gnuplotter/smart_gnuplotter/src" % parallel_dir)

import smart_gnuplotter

def Es(s):
    sys.stderr.write(s)

def get_unique(g, db, f):
    return g.do_sql(db,
                    '''
select distinct %s from a 
order by %s
''' % (f, f))

g = smart_gnuplotter.smart_gnuplotter()
g.default_terminal = 'epslatex color size 11cm,6cm font "" 8'
#g.default_terminal = 'svg'
#g.default_terminal = 'emf color solid font ",18"'

sqlite_file = sys.argv[1] if len(sys.argv) > 1 else "a.sqlite"
out_dir     = sys.argv[2] if len(sys.argv) > 2 else "graphs"

db = g.open_sql(sqlite_file)


# ------------- contents -------------



if 1:
    # show the effect of increasing chains and threads
    for eqs,conf in [ ([ "=" ], "local"), 
                      ([ "<>" ],"remote") ]:
        output = "%s/bw_chains_threads_%s_%%(min_sz)s" % (out_dir, conf)
        g.graphs((db,
                  '''
select sz,avg(gb_per_sec) 
from a 
where method="traverse"
  and nc=%(nc)s
  and sz>=%(min_sz)s
  and nthreads=%(nthreads)s
  and shuffle=1
  and payload=1
  and cpu_node %(eq)s mem_node
group by sz 
order by sz
''',
                  "","",[]),
                 output=output,
                 graph_vars=[ "min_sz" ],
                 graph_title=("bandwidth with a number of chains/threads (%s)" % conf),
                 graph_attr='''
set logscale x
#set xtics rotate by -20
set key right
#unset key
''',
                 yrange="[0:]",
                 ylabel="bandwidth (GB/sec)",
                 xlabel="size of the region (bytes)",
                 plot_with="linespoints",
                 plot_title="%(nc)s chains, %(nthreads)s threads",
                 eq=eqs,
                 # nc=get_unique(g, db, "nc"),
                 nc=[ 10 ],
                 nthreads=[ 1, 4, 8, 12 ],
                 min_sz=[ 0, 3 * 10 ** 7 ],
                 verbose_sql=2,
                 save_gpl=0)




def mk_plot_title(b):
    if b["eq"] == "=":
        return "local"
    else:
        return "remote"

if 1:
    # show latency of link list traversal
    # x : size of the data
    # y : latency per access
    # (1) only local
    # (2) compare local and remote
    for eqs,conf,label in [ ([ "=" ],      "local", "local"), 
                            ([ "=", "<>" ],"local_remote", "local and remote") ]:
        output = "%s/latency_%s" % (out_dir, conf)
        g.graphs((db,
                  '''
select sz,avg(clocks_per_rec) 
from a 
where method="traverse"
  and nc=1
  and nthreads=1
  and shuffle=1
  and payload=0
  and cpu_node %(eq)s mem_node
group by sz 
order by sz;
''',
                  "","",[]),
                 output=output,
                 terminal = 'epslatex color size 7cm,4.5cm font "" 8',
                 graph_vars=[],
                 graph_title=("latency per load in a list traversal (%s)" % label),
                 graph_attr='''
set logscale x
#set xtics rotate by -20
set key left
#unset key
''',
                 yrange="[0:]",
                 ylabel="latency/load",
                 xlabel="size of the region (bytes)",
                 plot_with="linespoints",
                 plot_title=mk_plot_title,
                 eq=eqs,
                 verbose_sql=2,
                 save_gpl=0)



if 1:
    # compare link list traversal vs. random index
    output = "%s/random" % out_dir
    g.graphs((db,
              '''
select sz,avg(gb_per_sec) 
from a 
where method = "%(method)s"
  and nc=1
  and nthreads=1
  and shuffle=1
  and payload=1
  and cpu_node=mem_node
group by sz 
order by sz
''',
              "","",[]),
             output=output,
             graph_vars=[],
             graph_title="bandwidth of random list traversal vs random array traversal",
             graph_attr='''
set logscale x
#set xtics rotate by -20
set key right
#unset key
''',
             yrange="[0:]",
             ylabel="bandwidth (GB/sec)",
             xlabel="size of the region (bytes)",
             plot_with="linespoints",
             plot_title="%(method)s",
             method=[ "random", "traverse" ],
             verbose_sql=2,
             save_gpl=0)

def mk_plot_title_prefetch(b):
    if b["shuffle"] == 0:
        return "address-ordered"
    else:
        return "randomly ordered"

if 1:
    # compare two link list traversals
    # randomly ordered list vs address-sorted list
    output = "%s/prefetch" % out_dir
    g.graphs((db,
              '''
select sz,avg(gb_per_sec) 
from a 
where method="traverse"
  and nc=1
  and nthreads=1
  and shuffle=%(shuffle)s
  and payload=1
  and cpu_node=mem_node
group by sz 
order by sz
''',
              "","",[]),
             output=output,
             graph_vars=[],
             graph_title="bandwidth of random list traversal vs address-ordered list traversal",
             graph_attr='''
set logscale x
#set xtics rotate by -20
set key right
#unset key
''',
             yrange="[0:]",
             ylabel="bandwidth (GB/sec)",
             xlabel="size of the region (bytes)",
             plot_with="linespoints",
             plot_title=mk_plot_title_prefetch,
             shuffle=[ 0, 1 ],
             verbose_sql=2,
             save_gpl=0)


if 1:
    # show the effect of increasing chains
    for eqs,conf in [ ([ "=" ], "local"), 
                      ([ "<>" ],"remote") ]:
        output = "%s/bw_chains_%s_%%(min_sz)s" % (out_dir, conf)
        g.graphs((db,
                  '''
select sz,avg(gb_per_sec) 
from a 
where method="traverse"
  and nc=%(nc)s
  and sz>=%(min_sz)s
  and nthreads=1
  and shuffle=1
  and payload=1
  and cpu_node %(eq)s mem_node
group by sz 
order by sz
''',
                  "","",[]),
                 output=output,
                 graph_vars=[ "min_sz" ],
                 graph_title=("bandwidth with a number of chains (%s)" % conf),
                 graph_attr='''
set logscale x
#set xtics rotate by -20
set key right
#unset key
''',
                 yrange="[0:]",
                 ylabel="bandwidth (GB/sec)",
                 xlabel="size of the region (bytes)",
                 plot_with="linespoints",
                 plot_title="%(nc)s",
                 eq=eqs,
                 # nc=get_unique(g, db, "nc"),
                 nc=[1, 2, 4, 8, 10, 14 ],
                 min_sz=[ 0, 3 * 10 ** 7 ],
                 verbose_sql=2,
                 save_gpl=0)



