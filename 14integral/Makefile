h_files := $(wildcard integral*.h)
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

$(exes) : % : %.h 
	$(CXX) $(CXXFLAGS) -DINTEGRAL_H=\"$*.h\" integral.cc -o $@

$(asms) : %.s : %.h
	$(CXX) $(CXXFLAGS) -DINTEGRAL_H=\"$*.h\" integral.cc -o $@ -S

clean :
	rm -f $(exes) $(asms)

