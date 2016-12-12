h_files := $(wildcard mm*.h)
exes := $(patsubst %.h,%,$(h_files))
asms := $(addsuffix .s,$(exes))

opts := 
opts += -march=native 
opts += -O3
opts += -Wall
opts += -fopt-info-vec-optimized 
#opts += -fopt-info-vec-missed
opts += -fopenmp-simd
opts += -funroll-loops 

CXX := g++
CXXFLAGS := $(opts)

all : $(exes) $(asms)

$(exes) : % : %.h mm.cc
	$(CXX) $(CXXFLAGS) -DMM_H=\"$*.h\" mm.cc -o $@

$(asms) : %.s : %.h mm.cc
	$(CXX) $(CXXFLAGS) -DMM_H=\"$*.h\" mm.cc -o $@ -S

clean :
	rm -f $(exes) $(asms)

