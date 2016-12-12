CXXFLAGS:=-std=c++0x -Wall
hello_mtbb : hello_mtbb.cc
	g++ $(CXXFLAGS) -o $@ $< -lmyth

hello_tbb : hello_mtbb.cc
	g++ $(CXXFLAGS) -o $@ $< -DTO_TBB -ltbb
