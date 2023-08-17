#include <stdio.h>

void mostrarConteudo(int* vetNum, int numEl) {
   
    int i;
    for (i = 0; i < numEl; i++) {
        printf("%i ", vetNum[i]);
    }
}

int somaNumero(int* vetNum, int numEl) {
   
    int i, soma;
    for (i = 0; i < numEl; i++) {
         soma = soma + vetNum[i];
    }
    return soma;
}

int encontraMaior(int* vetNum, int numEl) {
    
    int i, maior;

    maior = vetNum[0];

    for (i = 0; i < numEl; i++) {
        if (vetNum[i] > maior) {
            maior = vetNum[i];
        }
    }
    return maior;
}

int encontraPosicaoMaior(int* vetNum, int numEl) {
   
    int i, maior, posicaoMaior=0;
    
    for (i = 0; i < numEl; i++) {
        if (vetNum[i] == maior) {
            posicaoMaior = i;
        }
    }
    return posicaoMaior;
}

int encontraMenor(int* vetNum, int numEl) {
    
    int i, menor;

    menor = vetNum[0];
    for (i = 0; i < numEl; i++) {
        if (vetNum[i] <= menor) {
            menor = vetNum[i];
        }
    }
    return menor;
}

int encontraPosicaoMenor(int* vetNum, int numEl) {
    
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

    mostrarConteudo(vetNum, numEl);

    printf("\nSoma dos valores do vetor: %i\n\n", somaNumero(vetNum, numEl));

    printf("Maior valor: %i\n", encontraMaior(vetNum, numEl));
 
    printf("Posicao do maior: [%i]\n\n", encontraMaior(vetNum, numEl));

    printf("Menor valor: %i\n", encontraMenor(vetNum, numEl));
    
    printf("Posicao do menor: [%i]\n", encontraPosicaoMenor(vetNum, numEl));
    
    return 0;
}
