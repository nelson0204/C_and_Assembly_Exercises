# Variáveis
INCLUDES = $(wildcard *.h)
SOURCES = $(wildcard *.c *.s)
OBJS = $(SOURCES:.c=.o)
OBJFILES = $(OBJS:.s=.o)
EXEC = prog.bin
CP = -g -Wall -Wextra -fanalyzer -z noexecstack -lm

# Regras de sufixo
.SUFFIXES: .c .s .o

# Como construir um objeto .o a partir de um arquivo de código .c ou .s
.c.o:
	gcc $(CP) -c $<

.s.o:
	gcc $(CP) -c $<

# Regra para construir o executável
$(EXEC): $(OBJFILES)
	gcc $(CP) -o $(EXEC) $(OBJFILES)

# Dependências para os arquivos objeto
$(OBJFILES): $(SOURCES) $(INCLUDES)

# Valgrind para análise de memória
vg: $(EXEC)
	valgrind ./$(EXEC)
	rm -f $(OBJFILES)

# Executar o programa
run: $(EXEC)
	./$(EXEC)

# Limpeza dos arquivos objeto e do executável
clean:
	rm -f $(OBJFILES) $(EXEC)

# Debug com o ddd
debug: $(EXEC)
	ddd $(EXEC) &
