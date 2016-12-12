h_files  := $(wildcard *.h)
cc_files := $(wildcard *.cc)
opts := 
opts += -O3
opts += -Wall

CXX := g++
CXXFLAGS := $(opts)
chol_main : $(cc_files) $(h_files)
	$(CXX) -o $@ $(CXXFLAGS) $(cc_files)

clean :
	rm -f chol_main
