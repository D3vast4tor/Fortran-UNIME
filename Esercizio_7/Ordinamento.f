        real function order(dim)
        integer dim,n,counter,counting,current,i
        integer, dimension(dim) :: list
        DO counter = 1,dim
            write(*,*) 'Inserisci i numeri'
            read(*,*) n
            if (counter.EQ.dim+1) then
                exit
                end if
            list(counter) = n
        END DO
        do counting = 1 ,dim
            current = list(counting)
            i = counting - 1
            do while (i.ge.0 .and. list(i).gt.current)
                list(i+1) = list(i)
                i = i -1
            end do
            list(i+1) = current
        end do
        do counting = 1 ,dim
            write(*,*) list(counting)
        end do
        end function

        program Esercizio_7
            integer :: values,dim
            do while (dim .gt. 0)
                values = order(dim)
            enddo
        end
