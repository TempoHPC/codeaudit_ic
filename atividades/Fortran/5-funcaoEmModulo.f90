module ManipulacaoVet
    implicit none

    contains

    subroutine mostrarConteudo(vetNum_, numEl_)
        implicit none
        
        integer, intent(in) :: vetNum_(:), numEl_
        integer :: i_, inicio_, fim_
        
        inicio_= 1
        fim_= numEl_
        
        do i_ = inicio_, fim_
            print *, vetNum_(i_)
        end do
    end subroutine mostrarConteudo

    integer function somaNumero(vet_Num, num_El) 
        
        integer, intent(in) :: vet_Num(:)
        integer, intent(in) :: num_El
        integer :: i, inicioS, fimS
        integer :: soma
    
        soma = 0
        inicioS = 1; fimS = num_El
        do i = inicioS, fimS
            soma = soma + vet_Num(i)
        end do
        somaNumero = soma
    end function somaNumero

    integer function encontraMaior(vetNumMa, numElMa)
        
        integer, intent(in) :: vetNumMa(:)
        integer, intent(in) :: numElMa
        integer :: i, inicioMa, fimMa
        integer :: maior
        
        inicioMa = 1
        fimMa = numElMa
        maior = vetNumMa(inicioMa)
        
        do i = inicioMa, fimMa
            if (vetNumMa(i) > maior) then
                maior = vetNumMa(i)
            end if
        end do
        
        encontraMaior = maior 
        
    end function encontraMaior

    function encontraPosicaoMaior(vetNumPma, numElPma) result(posicaoMaior)
        
        integer, intent(in) :: vetNumPma(:), numElPma
        integer :: i, maior, posicaoMaior, inicioPMa=1, fimPMa
        
        maior = vetNumPma(inicioPMa)
        posicaoMaior = inicioPMa
        fimPMa=numElPma
        
        do i = inicioPMa, fimPMa
            if (vetNumPma(i) > maior) then
                maior = vetNumPma(i)
                posicaoMaior = i
            end if
        end do
        
    end function encontraPosicaoMaior
    
    
    integer function encontraMenor(vetNumMe, numElMe)
        
        integer, intent(in) :: vetNumMe(:)
        integer, intent(in) :: numElMe
        integer :: i, inicioMe, fimMe
        integer :: menor
        
        inicioMe = 1
        fimMe = numElMe
        menor = vetNumMe(inicioMe)
        
        do i = inicioMe, fimMe
            if (vetNumMe(i) < menor) then
                menor = vetNumMe(i)
            end if
        end do
        
        encontraMenor = menor  
        
    end function encontraMenor

    function encontraPosicaoMenor(vetNumPme, numElPme) result(posicaoMenor)
        
        integer, intent(in) :: vetNumPme(:), numElPme
        integer :: i, menor, posicaoMenor, inicioPMe=1, fimPMe
        
        menor = vetNumPme(inicioPMe)
        posicaoMenor = inicioPMe
        fimPMe=numElPme
        
        do i = inicioPMe, fimPMe
            if (vetNumPme(i) <= menor) then
                menor = vetNumPme(i)
                posicaoMenor = i
            end if
        end do
        
    end function encontraPosicaoMenor

end module ManipulacaoVet

program ManipulacaoVetor
    use ManipulacaoVet
    implicit none
    
    integer :: i, numEl, inicio=1, fim
    integer, allocatable :: vetNum(:)
    
    print *, "Digite a quantidade de elementos:"
    read *, numEl
    
    allocate(vetNum(numEl))
    
    print *, "Digite os elementos:"
    do i = inicio, numEl
        read *, vetNum(i)
    end do
    
    fim = numEl
    
    call mostrarConteudo(vetNum, numEl)
    
    print *, "Soma dos valores do vetor:", somaNumero(vetNum, numEl)
    
    print *, "Maior valor:", encontraMaior(vetNum, numEl)
    
    print *, "Posicao do maior: [", encontraPosicaoMaior(vetNum, numEl), "]"
    
    print *, "Menor valor:", encontraMenor(vetNum, numEl)
    
    print *, "Posicao do menor: [", encontraPosicaoMenor(vetNum, numEl), "]"

    print *, "-----------------------------------------------"
    
    ! MESMO RESULTADO DE OUTRA FORMA 
    
    call mostrarConteudo(vetNum(inicio:), fim - inicio + 1)
    
    print *, "Soma dos valores do vetor:", somaNumero(vetNum(inicio:), fim - inicio + 1)
    
    print *, "Maior valor:", encontraMaior(vetNum(inicio:), fim - inicio + 1)
    
    print *, "Posicao do maior: [", encontraPosicaoMaior(vetNum(inicio:), fim - inicio + 1), "]"
    
    print *, "Menor valor:", encontraMenor(vetNum(inicio:), fim - inicio + 1)
    
    print *, "Posicao do menor: [", encontraPosicaoMenor(vetNum(inicio:), fim - inicio + 1), "]"
    
    print *, "-----------------------------------------------"
    
    ! AGORA COM UMA PARTE DO VETOR

    inicio = 1
    fim = 6
    print *, " operações com um subvetor, inicio=1, fim=6"
    
    call mostrarConteudo(vetNum(inicio:), fim - inicio + 1)
    
    print *, "Soma dos valores do vetor:", somaNumero(vetNum(inicio:fim), fim - inicio + 1)
    
    print *, "Maior valor:", encontraMaior(vetNum(inicio:fim), fim - inicio + 1)

    print *, "Posicao do maior: [", encontraPosicaoMaior(vetNum(inicio:), fim - inicio + 1), "]"
    
    print *, "Menor valor:", encontraMenor(vetNum(inicio:fim), fim - inicio + 1)
   
    print *, "Posicao do menor: [", encontraPosicaoMenor(vetNum(inicio:), fim - inicio + 1), "]"

end program ManipulacaoVetor
