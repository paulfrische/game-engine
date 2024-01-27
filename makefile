SRC = $(wildcard src/*.c)
CFLAGS = `pkg-config --cflags sdl2 glew` -Wall -Wextra -pedantic -ggdb
CLIBS = `pkg-config --libs sdl2 glew`
CC = clang
BUILDDIR = ./out

all:
	mkdir -p $(BUILDDIR)
	$(CC) -o $(BUILDDIR)/out $(CFLAGS) $(CLIBS) $(SRC)

test: all
	$(BUILDDIR)/out

.PHONY: clean
clean:
	rm -rdf $(BUILDDIR)
