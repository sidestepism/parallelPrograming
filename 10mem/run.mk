sysroot:=$(HOME)/parallel2/sys
include $(sysroot)/src/tools/makefiles/psweep.mk

numactl:=numactl -iall --

# ---------------------------------------

out_dir:=output

# ----- parameter and command definitions -----

p:=$(shell seq 8 22)
powers:=$(foreach i,$(p),$(shell echo $$((1 << $(i)))))
n:=$(foreach p,$(powers),$(foreach o,-2 0 2,$(shell echo $$(($(p) * (10 + $(o)) / 10)))))

parameters:=method n n_chains n_threads shuffle payload mem_node
method:=t
#n_chains:=1 2 4 8 10 14
n_chains:=4 8 10
n_threads:=1 2 4 8 12
#n_threads:=1
shuffle:=1
payload:=1
cpu_node:=0
mem_node:=0 1

cmd=OMP_NUM_THREADS=$(n_threads) numactl -N $(cpu_node) -i $(mem_node) -- ./mem -m $(method) -n $(n) -c $(n_chains) -x $(shuffle) -p $(payload) > $(output)
input=$(out_dir)/created
output=$(out_dir)/out_$(method)_$(n)_$(n_chains)_$(n_threads)_$(shuffle)_$(payload)_$(cpu_node)_$(mem_node).txt

$(define_rules)

# ----- end of parameter and command definitions -----

$(out_dir)/created :
	mkdir -p $@

.DELETE_ON_ERROR:

