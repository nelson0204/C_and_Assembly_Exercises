# A Makefile with variables and suffix rules

# variaveis
INCLUDES = sum_odd.h
SOURCES = main.c sum_odd.c
OBJFILES = main.o sum_odd.o
EXEC = ex11

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
