
c_files := $(wildcard *.c)
cc_files := $(wildcard *.cc)
exes := $(patsubst %.c,%,$(c_files))
asms := $(patsubst %.c,%.s,$(c_files))
cc_exes := $(patsubst %.cc,%,$(cc_files))
cc_asms := $(patsubst %.cc,%.s,$(cc_files))

opts := 
opts += -march=native 
opts += -O3
#opts += -fopt-info-vec-optimized 
#opts += -fopt-info-vec-missed
#opts += -fcilkplus
#opts += -funroll-loops
#opts += --param max-unroll-times=2
opts += -Wall
opts += -Wextra
opts += -L/home/tau/parallel2/sys/inst/g/gcc/lib64
opts += -Wl,-R/home/tau/parallel2/sys/inst/g/gcc/lib64
opts += -L/home/tau/parallel2/sys/inst/g/lib
opts += -Wl,-R/home/tau/parallel2/sys/inst/g/lib
opts += -I/home/tau/parallel2/sys/inst/g/include

#CC := ~/parallel2/sys/inst/g/gcc/bin/gcc
CC := gcc
CXX := g++
CFLAGS := $(opts) -std=gnu99 -fopenmp
CXXFLAGS := $(opts) -std=c++0x
all : $(exes) $(asms) $(cc_exes) $(cc_asms)

asm : $(asms) $(cc_asms)

$(exes) : % : %.c Makefile
	$(CC) -o $@ $(CFLAGS) $<
$(asms) : %.s : %.c Makefile
	$(CC) -S $(CFLAGS) $<
$(cc_exes) : % : %.cc Makefile
	$(CXX) -o $@ $(CXXFLAGS) $< -DTO_TBB -ltbb
#	$(CXX) -o $@ $(CXXFLAGS) $< -DTO_MTHREAD_NATIVE -lmyth-native
$(cc_asms) : %.s : %.cc Makefile
	$(CXX) -S $(CXXFLAGS) $<

clean :
	rm -f $(asms) $(exes) $(cc_asms) $(cc_exes)
