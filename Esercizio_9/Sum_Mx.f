        PROGRAM Sum
            INTEGER,PARAMETER :: n = 3
            INTEGER,DIMENSION(n,n) :: a,b,c
            INTEGER :: i,j,formato
            ASSIGN 1 to formato
    1       FORMAT(3(3x,i3))
            WRITE(*,*)'Inserire i numeri nella prima matrice: '
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

            do i = 1,n
                do j = 1,n
                    c(i,j) = a(i,j) + b(i,j)
                enddo
            enddo
            write(*,1)a
            write(*,*)'----------------------------'
            write(*,1)b
            write(*,*)'----------------------------'
            write(*,1)c
        END