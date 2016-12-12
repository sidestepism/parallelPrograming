opts :=
opts += -std=c++0x
CXX := g++
CXXFLAGS := $(opts)

all := fib_tbb fib_omp fib_tbb fib_cilkplus
# fib_mtbb 

all : $(all)

fib_mtbb : fib_mtbb.cc
	$(CXX) $(CXXFLAGS) -o $@ $< -lmyth -lpthread

fib_tbb : fib_tbb.cc
	$(CXX) $(CXXFLAGS) -o $@ $< -ltbb

fib_omp : fib_omp.cc
	$(CXX) $(CXXFLAGS) -o $@ $< -fopenmp

fib_cilkplus : fib_cilkplus.cc
	$(CXX) $(CXXFLAGS) -o $@ $< -fcilkplus

