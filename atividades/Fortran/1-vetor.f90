!primeiro estudo

program VetorEmFortran
    implicit none

    integer, parameter :: N = 5; inicio=1; fim=N;
    integer :: i
    integer :: vetNum(N) = [7, 4, 5, 2, 3]

    
    
    do i = inicio, fim
        print *, vetNum(i)
    end do

    ! Alternativas usando outros tipos de loops em Fortran:
    ! Usando while:
    ! i = 1
    ! do while (i <= N)
    !     write(*,*) vetNum(i)
    !     i = i + 1
    ! end do

    ! Usando do while:
    ! i = 1
    ! do
    !     write(*,*) vetNum(i)
    !     i = i + 1
    !     if (i > N) exit
    ! end do

end program VetorEmFortran
