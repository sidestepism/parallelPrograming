h_files := $(wildcard *.h)
cc_files := $(wildcard *.cc)

mtbb_dir:=$(HOME)/parallel2/sys/inst/g

opts := 
opts += -std=c++0x 
opts += -O3
opts += -DDAG_RECORDER=2 
opts += -I$(mtbb_dir)/include 
opts += -L$(mtbb_dir)/lib 
opts += -Wl,-R$(mtbb_dir)/lib
opts += -DTO_MTHREAD_NATIVE
libs :=
libs += -ldr 
libs += -lmyth-native -lpthread

CFLAGS := $(opts)


main : $(cc_files) $(h_files)
	$(CXX) -o $@ $(CFLAGS) main.cc $(libs)

