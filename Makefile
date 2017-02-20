CPP=g++
CFLAGS=-std=c++11 -g -Wall
LDFLAGS=
SOURCES=
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CPP) $(LDFLAGS) $(OBJECTS) -o $@

%.o: %.cpp Makefile
	$(CPP) $(CFLAGS) -c -o $@ $<

clean:
	rm -f *.o $(EXECUTABLE)
