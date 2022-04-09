        REAL FUNCTION media(fn_numbers)
            REAL,INTENT(IN) :: fn_numbers
            REAL counter,somma
            do counter = 1,fn_numbers,1
                somma = somma + counter
            end do
            media = (somma / fn_numbers)
        END FUNCTION
        program main
            REAL :: media
            REAL numeri,med
            WRITE(*,*)'Inserire i primi numeri n per la media:  '
            READ(*,*)numeri
            med = media(numeri)
            WRITE (*,*)'La media e'': ',med
        end program