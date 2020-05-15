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
	$(CC) -o $(BIN)/$(EXE).exe $(SRC)/$(SOURCE).c  $(REPLIB) $(LIBRAIRIE)

clean:
	rm bin/*