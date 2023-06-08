//1. criar outro laço para fazer a soma dos elementos
//2. escrever o resultado calculado

//3. criar outro laço para fazer achar o maior  elemento
//4. escrever a posição do elemento e o valore dele

//5. criar outro laço para fazer achar o menor  elemento
//6. escrever a posição do elemento e o valore dele

#include<stdio.h>

int main() {
    
    int i, soma = 0, maior, menor, posicaoMaior=0, posicaoMenor=0;
    int vetNum[5] = {7, 4, 5, 2, 3};

        for (i = 0; i < 5; i++) {
            
            printf("%i ", vetNum[i]);
        }
        printf("\n");
    
        //fazendo a soma
        for (i = 0; i < 5; i++) {
            
            soma += vetNum[i];
        }
        printf("Soma dos valores do vetor: %i\n", soma);
        
    
        //achando num maior e num menor
        maior = vetNum[0];
        menor = vetNum[0];
    
        for (i = 1; i < 5; i++) {
    
            if (vetNum[i] > maior) {
                
                maior = vetNum[i];
                posicaoMaior = i;
            }
            
            else if (vetNum[i] < menor) {
                
                menor = vetNum[i];
                posicaoMenor = i;
            }
        }
    
        printf("Maior valor: vetNum[%i] = %i\n", posicaoMaior, maior);
        printf("Menor valor: vetNum[%i] = %i\n", posicaoMenor, menor);

    return 0;
}
