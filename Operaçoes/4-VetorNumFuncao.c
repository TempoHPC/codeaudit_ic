//começo das funções

#include<stdio.h>

    
    int i, soma = 0, maior, menor, posicaoMaior=0, posicaoMenor=0;
    int vetNum[5] = {7, 4, 5, 2, 3};

    void mostraVetor(){

    for (i = 0; i < 5; i++) 
            
        printf("%i ", vetNum[i]);
    }
        
        
    int somaNumero(){
    
    
	for (i = 0; i < 5; i++) {
            
            soma += vetNum[i];
        }
        printf("\nSoma dos valores do vetor: %i\n", soma);
        
    }

    void encontraMaior(){

	int maior = vetNum[0];
        
        for (i = 1; i < 5; i++) {
    
            if (vetNum[i] > maior) {
                
                maior = vetNum[i];
                posicaoMaior = i;
        
            }  
            
        }
        printf("Maior valor: vetNum[%i] = %i\n", posicaoMaior, maior);   
    }

    void encontraMenor(){

    menor = vetNum[0];
    
    if (vetNum[i] < menor) {
                
            menor = vetNum[i];
            posicaoMenor = i;
        
        }
    
        printf("Menor valor: vetNum[%i] = %i\n", posicaoMenor, menor);

    }

int main() {
    
    mostraVetor();
	somaNumero();
    encontraMaior();
    encontraMenor();

       
    return 0;
}
