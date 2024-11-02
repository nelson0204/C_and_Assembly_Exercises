# Variáveis
INCLUDES = $(wildcard *.h)          # Todos os arquivos de cabeçalho
SOURCES = $(wildcard *.c *.s)       # Todos os arquivos de código-fonte
OBJS = $(SOURCES:.c=.o)             # Substitui a extensão .c por .o
OBJFILES = $(OBJS:.s=.o)             # Substitui a extensão .s por .o
EXEC = prog.bin                      # Nome do executável
CP = -g -Wall -Wextra -fanalyzer -z noexecstack -lm  # Flags de compilação

# Regras de sufixo
.SUFFIXES: .c .s .o

# Como construir um objeto .o a partir de um arquivo de código .c
.c.o:
	gcc $(CP) -c $<

# Como construir um objeto .o a partir de um arquivo de assembly .s
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
	rm -f $(OBJFILES) # Mover esta linha para o alvo clean para evitar exclusão prematura

# Executar o programa
run: $(EXEC)
	./$(EXEC)

# Limpeza dos arquivos objeto e do executável
clean:
	rm -f $(OBJFILES) $(EXEC)

# Debug com o ddd
debug: $(EXEC)
	ddd $(EXEC) &
