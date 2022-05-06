CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++11 -pedantic -I include -c -o
CXXFLAGS2 = -m64 -Og -g 

all: Console.o Cursor.o Position.o SimpleInput.o Spielstein.o

Console.o: src/Console.cpp
	$(CXX) $(CXXFLAGS) Console.o src/Console.cpp

Cursor.o: src/Cursor.cpp
	$(CXX) $(CXXFLAGS) Cursor.o src/Cursor.cpp

Position.o: src/Position.cpp
	$(CXX) $(CXXFLAGS) Position.o src/Position.cpp

SimpleInput.o: src/SimpleInput.cpp
	$(CXX) $(CXXFLAGS) SimpleInput.o src/SimpleInput.cpp

Spielstein.o: src/Spielstein.cpp
	$(CXX) $(CXXFLAGS) Spielstein.o src/Spielstein.cpp

Tibingo.o: src/Tibingo.cpp
	$(CXX) $(CXXFLAGS) Tibingo.o src/Tibingo.cpp

clean: 
	rm *.o