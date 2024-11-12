# Estrutura Completa de um Arquivo Assembly `.s`

Este `README.md` documenta a estrutura de um arquivo Assembly `.s`, que inclui *prologue*, *epilogue*, uma lista completa dos registradores *callee-saved*, uso de `push` e `pop`, registradores para parâmetros, e as seções do programa. Ele é útil para entender o formato padrão e a organização necessária ao programar em Assembly para a arquitetura x86-64.

---

## Estrutura do Arquivo `.s`

### Prologue e Epilogue

- **Prologue**: O prologue é o bloco inicial em uma função, que prepara o ambiente da pilha para que a função possa manipular variáveis locais e preservar o contexto da função chamadora. As instruções típicas são:

    ```assembly
    pushq %rbp
    movq %rsp, %rbp
    ```

    Estas instruções salvam o valor atual de `%rbp` na pilha e configuram `%rsp` como o novo ponteiro de base do frame da função.

- **Epilogue**: O epilogue finaliza a função, restaurando o estado da pilha e permitindo que o programa retorne ao chamador. Instruções comuns para o epilogue são:

    ```assembly
    movq %rbp, %rsp
    popq %rbp
    ret
    ```

    Essas instruções restauram `%rsp` para o início do frame e `%rbp` para o valor original do chamador, permitindo retornar ao fluxo original do programa.

---

### Lista Completa de Registradores Callee-Saved

A função chamada (callee) é responsável por preservar o estado dos registradores listados abaixo, conhecidos como *callee-saved*. Esses registradores devem ter seus valores restaurados ao retornar para a função chamadora (caller), e são frequentemente salvos na pilha se forem modificados dentro da função. Em x86-64, os registradores *callee-saved* incluem:

- **%rbp** - Base Pointer: Registrador de controle de pilha. Usado para acessar variáveis locais e parâmetros passados pela pilha. Ele precisa ser restaurado pela função chamada.

- **%rbx** - Registrador de uso geral, frequentemente usado para armazenar valores temporários. Como ele é um registrador callee-saved, a função chamada deve restaurá-lo caso tenha alterado seu valor.

- **%r12** até **%r15** - Registradores adicionais de uso geral. Estes registradores são callee-saved e devem ser preservados se modificados dentro da função. Eles são frequentemente utilizados para armazenar dados temporários durante a execução da função.

    - **%r12** - Registrador de uso geral.
    - **%r13** - Registrador de uso geral.
    - **%r14** - Registrador de uso geral.
    - **%r15** - Registrador de uso geral.

- **%rsp** - Stack Pointer: Ponteiro de pilha, que aponta para o topo da pilha. Ele é manipulado diretamente pela função chamada. Embora `%rsp` seja tecnicamente um registrador callee-saved, ele não é comumente preservado diretamente com `push`/`pop` durante a execução da função, pois o controle da pilha é frequentemente ajustado no prologue e epilogue.

Esses registradores são essenciais para a preservação do estado do chamador e devem ser restaurados ao final da execução de uma função chamada, para que o chamador possa continuar sua execução sem problemas.

---

### Uso de Instruções PUSH e POP

As instruções `push` e `pop` são usadas para salvar e restaurar valores da pilha, especialmente para os registradores *callee-saved*. Aqui estão exemplos das instruções comuns para esses registradores:

- **Instruções PUSH**:
    - `push %rbp` - Salva `%rbp` na pilha.
    - `push %rbx` - Salva `%rbx` na pilha.
    - `push %r12` até `push %r15` - Salva os registradores `%r12` até `%r15` na pilha.

- **Instruções POP**:
    - `pop %rbp` - Restaura `%rbp` da pilha.
    - `pop %rbx` - Restaura `%rbx` da pilha.
    - `pop %r12` até `pop %r15` - Restaura os registradores `%r12` até `%r15` da pilha.

Essas instruções ajudam a gerenciar o estado dos registradores de forma que o valor original seja preservado ao longo da execução do programa.

---

### Lista de Registradores para Parâmetros

Em x86-64, os parâmetros de função são passados para a função chamada nos seguintes registradores, em ordem:

1. `%rdi` - **Primeiro parâmetro.**
2. `%rsi` - **Segundo parâmetro.**
3. `%rdx` - **Terceiro parâmetro.**
4. `%rcx` - **Quarto parâmetro.**
5. `%r8`  - **Quinto parâmetro.**
6. `%r9`  - **Sexto parâmetro.**

Parâmetros adicionais, se houver, são passados na pilha.

---

### Seções do Programa

Um arquivo Assembly em x86-64 pode ser dividido em várias seções. Aqui estão as seções principais:

- **.text**: Contém o código executável do programa. A primeira instrução da função principal geralmente é colocada nesta seção.

    Exemplo:
    ```assembly
    .section .text
    .globl _start
    _start:
        # código da função principal
    ```

- **.data**: Contém dados inicializados. Variáveis e constantes que já têm um valor definido são armazenadas nesta seção.

    Exemplo:
    ```assembly
    .section .data
    msg: .asciz "Hello, World!"
    ```

- **.bss**: Contém dados não inicializados. As variáveis declaradas, mas não inicializadas, são armazenadas aqui. O sistema operacional irá alocar memória para essas variáveis ao iniciar o programa.

    Exemplo:
    ```assembly
    .section .bss
    buffer: .skip 128  # Reserva 128 bytes para buffer
    ```

- **.rodata**: Contém dados de somente leitura, como strings ou constantes que não são modificadas durante a execução do programa.

    Exemplo:
    ```assembly
    .section .rodata
    msg_ro: .asciz "This is a read-only string"
    ```

- **.fini**: Contém código que será executado quando o programa terminar. Esta seção pode ser usada para limpeza ou para outras finalizações necessárias.

---

Com essa documentação detalhada, qualquer pessoa que esteja começando ou precisando de um guia sobre a estrutura de um arquivo Assembly x86-64 poderá entender cada parte, desde o gerenciamento da pilha até a organização das seções de código e dados.
