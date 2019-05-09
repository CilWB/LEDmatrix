#!/bin/bash
as -o $1.o $1.s 
gcc -o $1 $1.o -lwiringPi
sudo ./$1
