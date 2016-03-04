#CPPFLAGS = -g -I./SDL
CPPFLAGS = -O3 -I./SDL
LIBS = -lSDL -lglut -lGLU -lGL -lpthread -lm -lX11 -llapack


all: fluid.o main.o viewer.o trackball.o genfunc.o
	g++ -o fluid main.o fluid.o viewer.o trackball.o genfunc.o $(LIBS)

clean:
	rm *.o
