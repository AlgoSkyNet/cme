CXXFLAGS = $(shell pkg-config --cflags) -g -std=c++17
LDFLAGS = $(shell pkg-config --libs sqlite3)

cme: cme.cpp
	g++ $(CXXFLAGS) $< $(LDFLAGS) -o $@
