CXX=g++
CXXFLAGS=-I/Users/nagachika/opt/include \
       `rtaudio-config --cppflags` \
       `rtaudio-config --cxxflags`
LFLAGS=-L/Users/nagachika/opt/lib
LIBS=-lrtaudio `rtaudio-config --libs`

all: triangle sine

triangle: triangle.c
		${CXX} -o $@ ${CXXFLAGS} $< ${LFLAGS} ${LIBS}

sine: sine.c
		${CXX} -o $@ ${CXXFLAGS} $< ${LFLAGS} ${LIBS}

sine_d: sine.c
		${CXX} -ggdb -O0 -o $@ ${CXXFLAGS} $< ${LFLAGS} ${LIBS}
