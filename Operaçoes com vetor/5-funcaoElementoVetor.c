#include <stdio.h>

void mostrarConteudo(int* vetNum, int numEl) {
    int i;
    for (i = 0; i < numEl; i++) {
        printf("%i ", vetNum[i]);
    }
}

int somarNumero(int* vetNum, int numEl) {
    int i, soma = 0; 
    for (i = 0; i < numEl; i++) {
        soma = soma + vetNum[i];
    }
    return soma;
}

int encontrarMaior(int* vetNum, int numEl) {
    int i, maior = vetNum[0];
    for (i = 1; i < numEl; i++) { 
        if (vetNum[i] > maior) {
            maior = vetNum[i];
        }
    }
    return maior;
}

int encontrarPosicaoMaior(int* vetNum, int numEl) {
    int i, maior = vetNum[0], posicaoMaior = 0;
    for (i = 1; i < numEl; i++) { 
        if (vetNum[i] > maior) {
            maior = vetNum[i];
            posicaoMaior = i;
        }
    }
    return posicaoMaior;
}

int encontrarMenor(int* vetNum, int numEl) {
    int i, menor = vetNum[0];
    for (i = 1; i < numEl; i++) { 
        if (vetNum[i] < menor) { 
            menor = vetNum[i];
        }
    }
    return menor;
}

int encontrarPosicaoMenor(int* vetNum, int numEl) {
    int i, menor = vetNum[0], posicaoMenor = 0;
    for (i = 1; i < numEl; i++) { 
        if (vetNum[i] < menor) { 
            menor = vetNum[i];
            posicaoMenor = i;
        }
    }
    return posicaoMenor;
}

int main() {
    int i, numEl=0, pos=0;

    printf("Digite a quantidade de elementos:\n");
    scanf("%i", &numEl);

    int vetNum[numEl];

    printf("Digite os elementos:\n");
    for (i = 0; i < numEl; i++) {
        scanf("%i", &vetNum[i]);
    }

    mostrarConteudo(vetNum, numEl);

    printf("\nDigite quantos elementos deseja mostrar:\n");
    scanf("%i", &numEl); 

    printf("\nPartindo de qual posicao?\n");
    scanf("%i", &pos); 

    mostrarConteudo(&vetNum[pos], numEl);

    printf("\nSoma dos valores do vetor: %i\n\n", somarNumero(&vetNum[pos], numEl));

    printf("Maior valor: %i\n", encontrarMaior(&vetNum[pos], numEl));

    printf("Posicao do maior: [%i]\n\n", encontrarPosicaoMaior(&vetNum[pos], numEl));

    printf("Menor valor: %i\n", encontrarMenor(&vetNum[pos], numEl));

    printf("Posicao do menor: [%i]\n", encontrarPosicaoMenor(&vetNum[pos], numEl));

    return 0;
}
