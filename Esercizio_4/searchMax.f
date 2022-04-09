        real function searchMax(dim)
            integer :: counter,n, counting,dim,max
            integer, dimension(dim) :: list
            DO counter = 1,dim,1
                write(*,*) 'Inserisci i numeri'
                read(*,*) n
                if (counter.EQ.dim+1) then
                    exit
                    end if
                list(counter) = n
            END DO
            max = 0
            do counting = 1 ,dim,1 
                write(*,*) list(counting)
                if(max.lt.list(counting)) then
                    max = list(counting)
                end if
            end do
            write(*,*) 'il valore massimo è',max
        end function

        program Esercizio_4_valore_massimo
            integer :: maxValue,dim
            dim = 5
            maxvalue = searchMax(dim)
        end 