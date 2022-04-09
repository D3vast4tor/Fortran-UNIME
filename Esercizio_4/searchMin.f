            real function searchMin(dim)
                integer :: counter,n, counting,dim,pos_min
                integer, dimension(dim) :: list
                DO counter = 1,dim,1
                    write(*,*) 'Inserisci i numeri'
                    read(*,*) n
                    if (counter.EQ.dim+1) then
                        exit
                        end if
                    list(counter) = n
                END DO
                pos_min = 1
                do counting = 1 ,dim,1 
                    write(*,*) list(counting)
                    if(list(counting).lt.list(pos_min)) then
                        pos_min = counting
                    end if
                end do
                write(*,*) 'il valore minimo è',list(pos_min)
            end function

            program Esercizio_4_valore_minimo
            integer :: minValue,dim
            dim = 5
            minvalue = searchMin(dim)
            end 
                    