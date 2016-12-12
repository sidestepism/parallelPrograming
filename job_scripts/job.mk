#
# an example make file demonstrating
# how to run the same command with
# various numbers of threads.
#
# it also demonstrates how to take
# advantage of makefiles so that
# when you are killed due to time 
# limit exceeded, you can safely
# continue
#

workers := 1 2 4 6 8 12 16 24 32
tmp_files := $(patsubst %,tmp/%.txt,$(workers))
out_files := $(patsubst %,out/%.txt,$(workers))

all : $(out_files)
$(out_files) : out/%.txt : 
	mkdir -p $(dir tmp/$@)
	MYTH_WORKER_NUM=$* ./chol_main 2000 > tmp/$@
	mkdir -p $(dir $@)
	mv tmp/$@ $@

