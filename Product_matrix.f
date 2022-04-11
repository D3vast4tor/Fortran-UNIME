        program prova
            INTEGER,PARAMETER :: n = 2
            INTEGER,DIMENSION(n,n) :: d,a,b
            DATA a/3,3,6,7/
            DATA b/2,8,7,1/
            INTEGER :: i,j,k,formato
            ASSIGN 1 TO formato
    1       FORMAT(2(3x,i2))!formato 2x2
            !Somma tra matrici
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
        !c(i,j) = ( c(i,j)+a(i,k) ) * b(k,j)