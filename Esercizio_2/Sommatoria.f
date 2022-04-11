        real function sommatoria()
            integer :: n1,n2,count,temp
                write(*,*) 'Inserire numero di inizio della sommatoria:'
                read (*,*) n1
                write(*,*) 'Inserire numero di fine della sommatoria:'
                read (*,*) n2
                IF (n2.eq.0) THEN
                    write(*,*) 'Hai inserito zero come fine.. '
                END IF
                DO  count = n1,n2,1
                    temp = temp + count 
                END DO
                write(*,*) temp
            end function

        
        PROGRAM Esercizio_2
            integer :: sum
            sum =  sommatoria()
        END