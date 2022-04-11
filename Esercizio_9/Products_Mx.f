        !
        !IL PROGRAMMA NON RITORNA LA MOLTIPLICAZIONE TRA MATRICI
        !
        !QUELLA CHE DOVREBBE ESSERE IL PRODOTTO TRA MATRICI IN REALTA' E' SBAGLIATA.
        !
        !
        !
        program Product
            INTEGER,PARAMETER :: n = 3
            INTEGER,DIMENSION(n,n) :: a,b,d
            INTEGER :: i,j,k,formato
            ASSIGN 1 TO formato
    1       FORMAT(3(3x,i3))!formato 2x2
            !Somma tra matrici
            do i = 1,n
                do j = 1,n
                    READ(*,*)a(i,j)
                enddo
            enddo
            WRITE(*,*)'Inserire i numeri nella seconda matrice: '
            do i = 1,n
                do j = 1,n
                    READ(*,*)b(i,j)
                enddo
            enddo
            do l = 1,n
                do j = 1,n
                    d(l,j) = 0
                    do k = 1,n
                        d(l,j) = d(l,j)+a(l,k) * b(k,j)
                    enddo
                enddo
            enddo
            write(*,1)a
            write(*,*)'----------------------------'
            write(*,1)b
            write(*,*)'----------------------------'
            write(*,1)d
        end
