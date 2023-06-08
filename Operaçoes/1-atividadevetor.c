//1. declarar um vetor para trabalhar com inteiros de 5 elementos
//2. atribuir os valores 7, 4, 5, 2, 3 aos elementos, aqui sem laco de repetição
//3. escrever os valores dos elementos na tela usando laço de repetição e a instrução printf#include<stdio.h>

int main() {

	int i, vetNum[5]={7,4,5,2,3};
        
    	
    	for(i=0; i<5; i++)
	        printf("%i ", vetNum[i]);
	
    	/*
    	
    	while(i < 5) {
    
        	printf("%i ", vetNum[i]);
        	i++;
    	}
    	
    	*/
    	
    	/*
    	do {
        
        	printf("%i ", vetNum[i]);
        	i++;
    
    	} while(i<5);
    	
    	*/

	return 0;

}

