#include <stdio.h>

void mostrarConteudo(int* vetNum) {
    
    int i;

    for (i = 0; i < 5; i++) {
        printf("%i ", vetNum[i]);
    }
}

int somaNumero(int* vetNum, int soma) {
    
    int i;
    
    for (i = 0; i < 5; i++) {
        soma += vetNum[i];
    }
    return soma;
}

int encontraMaior(int* vetNum, int maior) {
    
    int i;
    
    maior = vetNum[0];
    
    for (i = 0; i < 5; i++) {
        if (vetNum[i] > maior) {
            maior = vetNum[i];
        }
    }
    return maior;
}

int encontraPosicaoMaior(int* vetNum, int maior, int posicaoMaior) {
    
    int i;
    
    posicaoMaior = 0;
    
    for (i = 0; i < 5; i++) {
        if (vetNum[i] == maior) {
            posicaoMaior = i;
            
        }
    }
    return posicaoMaior;
}

int encontraMenor(int* vetNum, int menor) {
    
    int i;
    
    menor = vetNum[0];
    
    for (i = 0; i < 5; i++) {
        if (vetNum[i] < menor) {
            menor = vetNum[i];
        }
    }
    return menor;
}

int encontraPosicaoMenor(int* vetNum, int menor, int posicaoMenor) {
    
    int i;
    
    posicaoMenor = 0;
    
    for (i = 0; i < 5; i++) {
        if (vetNum[i] == menor) {
            posicaoMenor = i;
            
        }
    }
    return posicaoMenor;
}

int main() {

    int vetNum[5] = {7, 4, 5, 2, 3}, soma, maior, menor, posicaoMaior, posicaoMenor;
    
    mostrarConteudo(vetNum);
    soma = somaNumero(vetNum,soma);
    printf("\nSoma dos valores do vetor: %i\n\n", soma);
    
    maior = encontraMaior(vetNum,maior);
    printf("Maior valor: %i\n", maior);
    posicaoMaior = encontraPosicaoMaior(vetNum, maior, posicaoMaior);
    printf("Posicao do maior: [%i]\n\n", posicaoMaior);
    
    menor = encontraMenor(vetNum, menor);
    printf("Menor valor: %i\n", menor);
    posicaoMenor = encontraPosicaoMenor(vetNum, menor, posicaoMenor);
    printf("Posicao do menor: [%i]\n", posicaoMenor);
    
    return 0;
}
