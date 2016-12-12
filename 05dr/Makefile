opts :=
opts += -std=c++0x
opts += -DDAG_RECORDER=2
CXXFLAGS := $(opts)
fib_mtbb : fib.cc
	g++ $(CXXFLAGS) -o $@ $< -ldr -lmyth -lpthread

fib_tbb : fib.cc
	g++ $(CXXFLAGS) -o $@ $< -DTO_TBB -ltbb
