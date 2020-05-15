# Définition du compilateur
CC = gcc

# definition des options de compilation pour obtenir un fichier .o
PRODUCTFLAGS = -c

# Définition des librairies
REPLIB = -Llib
LIBRAIRIE = -lkomo

# Définition des répertoires
    # Sources
SRC = src
    # Binaires
BIN = bin

# Définition des fichiers
    # .c
SOURCE = main
    # .exe
EXE = main

main:
	gcc -c src/main.c -o bin/main.o
	gcc -c -fPIC src/source1.c -o bin/source1.o
	gcc -c -fPIC src/source2.c -o bin/source2.o
	gcc -shared bin/source1.o bin/source2.o -o lib/libkomo.so
	export LD_LIBRARY_PATH=lib/libkomo.so
	echo $(PWD)/lib >> /etc/ld.so.conf
	cp lib/libkomo.so /usr/lib
	ldconfig
	$(CC) bin/main.o -Llib -lkomo -o bin/main.exe

clean:
	rm bin/*
