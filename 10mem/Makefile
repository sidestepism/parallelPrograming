cc_files := $(wildcard *.cc)
exe_files := $(patsubst %.cc,%,$(cc_files))
asm_files := $(patsubst %.cc,%.s,$(cc_files))

epapi := 0

ifeq ($(epapi),1)
papi_dir := /home/tau/parallel2/sys/inst/g
epapi_dir := ../easy_papi
endif

opts := 
opts += -O3
opts += -Wall -Wextra
opts += -march=native
opts += -funroll-loops
opts += -fopenmp
ifeq ($(epapi),1)
opts += -DEASY_PAPI=1
opts += -I$(epapi_dir)
opts += -I$(papi_dir)/include
endif

libs :=
ifeq ($(epapi),1)
libs += -L$(papi_dir)/lib
libs += -Wl,-R$(papi_dir)/lib
libs += -lpapi
endif

CXX := g++
CXXFLAGS := $(opts)
LIBS := $(libs)
all : $(exe_files) $(asm_files)

$(exe_files) : % : %.cc
	$(CXX) -o $@ $(CXXFLAGS) $< $(LIBS)

$(asm_files) : %.s : %.cc
	$(CXX) -o $@ -S $(CXXFLAGS) $<

clean :
	rm -f mem

