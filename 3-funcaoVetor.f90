program ManipulacaoVetor
    implicit none
    
    integer :: vetNum(5) = [7, 4, 5, 2, 3]
    integer :: i, soma, maior, menor, posicaoMaior, posicaoMenor, inicio=1, fim=5
      
    function mostrarConteudo()
    implicit none
        do i = inicio, fim
            print *, vetNum(i)
        end do
        print *, ""
        
    end function mostrarConteudo


    function somaNumero() 
    implicit none
        soma = 0
        do i = inicio, fim
            soma = soma + vetNum(i)
        end do
        
        return soma
        
    end function somaNumero


    function encontraMaior() 
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
        
    end function encontraMaior



    function encontraMenor() 
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
    end function encontraMenor


    print *, "Vetor:"
    call mostrarConteudo()

    print *, "Soma:"
    print *, somaNumero()

    print *, "Maior valor:"
    print *, encontraMaior()

    print *, "Menor valor:"
    print *, encontraMenor()

end program ManipulacaoVetor
