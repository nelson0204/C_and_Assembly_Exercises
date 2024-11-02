# A Makefile with variables and suffix rules

# variaveis
INCLUDES = sort_without_reps.h
SOURCES = main.c sort_without_reps.c
OBJFILES = main.o sort_without_reps.o
EXEC = ex13

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
