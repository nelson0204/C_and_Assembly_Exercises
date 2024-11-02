# A Makefile with variables and suffix rules

# variaveis
INCLUDES =  get_array_statistics.h
SOURCES = main.c  get_array_statistics.c
OBJFILES = main.o  get_array_statistics.o
EXEC = ex09

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
