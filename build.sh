#/bin/bash

set -xe

src=src/*.c

mkdir -p out
clang -Wall -Wextra -pedantic -o out/out $src `pkg-config --cflags --libs sdl2 glew` -Ivendor
./out/out
