int sort_without_reps(short *src, int n, short *dest)
{
short array[n];

    // Corrige a cópia dos elementos de src para array
    for (int i = 0; i < n; i++) {
        array[i] = src[i];
    }

    // Corrige o loop de ordenação usando bubble sort ou similar
    for (int i = 0; i < n - 1; i++) {
        for (int j = i + 1; j < n; j++) {
            if (array[i] > array[j]) {
                // Troca os elementos
                short temp = array[i];
                array[i] = array[j];
                array[j] = temp;
            }
        }
    }

    // Remover duplicatas e copiar para o array destino
    int count = 0;
    for (int i = 0; i < n; i++) {
        // Se for o primeiro elemento ou diferente do anterior, copia para dest
        if (i == 0 || array[i] != array[i - 1]) {
            dest[count] = array[i];
            count++;
        }
    }

    // Retorna o número de elementos únicos
    return count;
}