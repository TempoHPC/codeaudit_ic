program ManipulacaoVetor
    implicit none
    
    integer :: vetNum(5) = [7, 4, 5, 2, 3]
    integer :: i, soma, maior, menor, posicaoMaior, posicaoMenor, inicio=1, fim=5

    print *, "Vetor:"
    call mostrarConteudo()

    print *, "Soma:", somaNumero()

    print *, "Maior valor:"
    call encontraMaior()

    print *, "Menor valor:"
    call encontraMenor()

    contains   
    subroutine mostrarConteudo()
        implicit none
        do i = inicio, fim
            print *, vetNum(i)
        end do
        print *  
    end subroutine mostrarConteudo


    function somaNumero() 
        implicit none
        integer :: somaNumero  ! tipo de retorno da função
        soma = 0
        do i = inicio, fim
            soma = soma + vetNum(i)
        end do
        somaNumero = soma  ! Retorna
    end function somaNumero


    subroutine encontraMaior() 
        implicit none
        integer :: maior
        maior = vetNum(inicio)
        
        do i = inicio, fim
            if (vetNum(i) > maior) then
                maior = vetNum(i)
                posicaoMaior = i
            end if
        end do
        print *, 'Maior valor:', 'vetNum[', posicaoMaior, '] = ', maior
    end subroutine encontraMaior


    subroutine encontraMenor() 
        implicit none
        
        integer :: menor, posicaoMenor
        menor = vetNum(inicio)
        
        do i = inicio, fim
            if (vetNum(i) < menor) then
                menor = vetNum(i)
                posicaoMenor = i
            end if
        end do
        
        print *, 'Menor valor:', 'vetNum[', posicaoMenor, '] = ', menor
    end subroutine encontraMenor


end program ManipulacaoVetor
