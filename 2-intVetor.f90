program VetorEmFortran
    implicit none

    integer, parameter :: N = 5
    integer :: i, soma, maior, menor, posicaoMaior, posicaoMenor, inicio, fim
    integer :: vetNum(N) = [7, 4, 5, 2, 3]

    ! Imprime os valores do vetor
    inicio=1; fim=N;
    
    do i = inicio, fim
        write(*,*) vetNum(i)
    end do
    print *, ""

    ! Calcula a soma dos valores
    soma = 0
    inicio=1; fim=N;
    
    do i = inicio, fim

        soma = soma + vetNum(i)
    end do
    write(*,*) "Soma dos valores do vetor:", soma
    print *, ""

    ! Encontra o maior e o menor elemento
    maior = vetNum(1)
    menor = vetNum(1)
    posicaoMaior = 1
    posicaoMenor = 1

    inicio=2; fim=N;
    
    do i = inicio, fim
    
        if (vetNum(i) > maior) then
            maior = vetNum(i)
            posicaoMaior = i
            
        else if (vetNum(i) < menor) then
            menor = vetNum(i)
            posicaoMenor = i
        end if
    end do

    write(*,*) "Maior valor: vetNum(", posicaoMaior, ") =", maior
    write(*,*) "Menor valor: vetNum(", posicaoMenor, ") =", menor

end program VetorEmFortran
