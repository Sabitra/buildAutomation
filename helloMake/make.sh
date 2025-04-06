#!/usr/bin/env sh

# clean up before building
rm -rf build
mkdir -p build

g++ -std=c++2a -I. -I ./headers/ -c ./src/sayHello.cpp -o ./build/sayHello.o

g++ -std=c++2a main.cpp -o ./build/app ./build/sayHello.o

./build/app
