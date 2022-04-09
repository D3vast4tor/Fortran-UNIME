        real function produttoria()
        integer :: n1,n2,count,temp
            temp = 1
            write(*,*) 'Inserire numero di inizio della produttoria:'
            read (*,*) n1
            write(*,*) 'Inserire numero di fine della produttoria:'
            read (*,*) n2
            DO  count = n1,n2,1
                temp = temp*count 
            END DO
            IF (temp.eq.0) THEN
                write(*,*) 'Hai inserito uno zero.. '
            END IF
            write(*,*) temp
        end function


        PROGRAM Esercizio1
        integer :: mul
        mul =  produttoria()
        END