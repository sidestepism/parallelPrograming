
c_files := $(wildcard simd_*.c)
exes := $(patsubst %.c,%,$(c_files))
asms := $(patsubst %.c,%.s,$(c_files))

opts := 
opts += -march=native 
opts += -O3 -g
opts += -fopt-info-vec-optimized 
#opts += -fopt-info-vec-missed
#opts += -std=gnu99
#opts += -fopenmp-simd
#opts += -fno-tree-vectorize
#opts += -fcilkplus
#opts += -fopenacc
#opts += -funroll-loops
opts += -Wall
#opts += -Wextra

#CC := ~/parallel2/sys/inst/g/gcc/bin/gcc
CC := gcc
CFLAGS := $(opts)
all : $(exes) $(asms)

asm : $(asms)

$(exes) : % : %.c
	$(CC) -o $@ $(CFLAGS) $<
$(asms) : %.s : %.c
	$(CC) -S $(CFLAGS) $<


