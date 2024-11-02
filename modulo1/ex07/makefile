# A Makefile with variables and suffix rules

# variaveis
INCLUDES = capitalize2.h
SOURCES = main.c capitalize2.c
OBJFILES = main.o capitalize2.o
EXEC = ex07

# Suffix rules
.SUFFIXES : .c .o

# How to build an object .o from a code file .c ; $< -- file name
.c.o:
		gcc -Wall -g -c $<

${EXEC}: ${OBJFILES}
		gcc -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
		./${EXEC}


clean:
		rm -f ${OBJFILES} ${EXEC}
