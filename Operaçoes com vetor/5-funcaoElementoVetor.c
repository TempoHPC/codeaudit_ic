#include <stdio.h>

void mostrarConteudo(int* vetNum, int numEl) {
   
    int i;
    for (i = 0; i < numEl; i++) {
        printf("%i ", vetNum[i]);
    }
}

int somarNumero(int* vetNum, int numEl) {
   
    int i, soma;
    for (i = 0; i < numEl; i++) {
         soma = soma + vetNum[i];
    }
    return soma;
}

int encontrarMaior(int* vetNum, int numEl) {
    
    int i, maior;

    maior = vetNum[0];

    for (i = 0; i < numEl; i++) {
        if (vetNum[i] > maior) {
            maior = vetNum[i];
        }
    }
    return maior;
}

int encontrarPosicaoMaior(int* vetNum, int numEl) {
   
    int i, maior, posicaoMaior=0;
    
    for (i = 0; i < numEl; i++) {
        if (vetNum[i] == maior) {
            posicaoMaior = i;
        }
    }
    return posicaoMaior;
}

int encontrarMenor(int* vetNum, int numEl) {
    
    int i, menor;

    menor = vetNum[0];
    for (i = 0; i < numEl; i++) {
        if (vetNum[i] <= menor) {
            menor = vetNum[i];
        }
    }
    return menor;
}

int encontrarPosicaoMenor(int* vetNum, int numEl) {
    
    int i, menor, posicaoMenor=0;

    for (i = 0; i < numEl; i++) {
        if (vetNum[i] == menor) {
            posicaoMenor = i;
        }
    }
    return posicaoMenor;
}

int main() {
    
    int i, numEl;
    
    printf("Digite a quantidade de elementos:\n");
    scanf("%i", &numEl);
    
    int vetNum[numEl];
    printf("Digite os elementos:\n");
    for (i = 0; i < numEl; i++) {

        scanf("%i", &vetNum[i]);
    }

    mostrarConteudo(&vetNum[0], 2);

    printf("\nSoma dos valores do vetor: %i\n\n", somarNumero(vetNum, numEl));

    printf("Maior valor: %i\n", encontrarMaior(vetNum, numEl));
 
    printf("Posicao do maior: [%i]\n\n", encontrarMaior(vetNum, numEl));

    printf("Menor valor: %i\n", encontrarMenor(vetNum, numEl));
    
    printf("Posicao do menor: [%i]\n", encontrarPosicaoMenor(vetNum, numEl));

    return 0;
}
